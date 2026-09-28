import re
import json
from pypdf import PdfReader

PDF_PATH = "102-500.pdf"        # Coloque o nome do seu arquivo PDF aqui
OUTPUT_PATH = "questoes.json"

def extrair_texto_pdf(caminho_pdf):
    reader = PdfReader(caminho_pdf)
    texto = ""
    for page in reader.pages:
        t = page.extract_text()
        if t:
            texto += "\n" + t
    return texto

def parse_questoes(texto):
    # Divide por "QUESTION <numero>"
    blocos = re.split(r"QUESTION\s+(\d+)", texto, flags=re.IGNORECASE)
    questoes = []
    
    # O split gera: [preambulo, id_1, texto_1, id_2, texto_2, ...]
    for i in range(1, len(blocos), 2):
        qid = int(blocos[i])
        conteudo = blocos[i+1].strip()

        # Extrai Correct Answer
        match_ans = re.search(r"Correct Answer:\s*([^\n\r]+)", conteudo, re.IGNORECASE)
        if not match_ans:
            continue
        gabarito_raw = match_ans.group(1).strip()

        # Extrai explicação (se houver)
        explicacao = ""
        match_exp = re.search(r"Explanation(?:/Reference)?:\s*(.*?)(?=Section:|$)", conteudo, re.DOTALL | re.IGNORECASE)
        if match_exp:
            explicacao = match_exp.group(1).strip()

        # Verifica se é FILL BLANK
        is_fill_blank = bool(re.search(r"\bFILL BLANK\b", conteudo, re.IGNORECASE))

        if is_fill_blank:
            # Pega o texto antes do Correct Answer / Section
            enunciado = re.sub(r"^\s*FILL BLANK\s*", "", conteudo, flags=re.IGNORECASE)
            enunciado = re.split(r"(Correct Answer:|Section:)", enunciado)[0].strip()
            
            questoes.append({
                "id": qid,
                "tipo": "fill_blank",
                "enunciado": " ".join(enunciado.split()),
                "resposta_correta": [gabarito_raw],
                "explicacao": explicacao
            })
        else:
            # Múltipla / Única Escolha (opções A., B., C., etc.)
            linhas = conteudo.splitlines()
            opcoes_dict = {}
            enunciado_linhas = []
            coletando_opcoes = False

            for linha in linhas:
                match_opt = re.match(r"^([A-F])\.\s*(.+)$", linha.strip())
                if match_opt:
                    coletando_opcoes = True
                    opcoes_dict[match_opt.group(1).upper()] = match_opt.group(2).strip()
                elif coletando_opcoes:
                    if "Correct Answer:" in linha or "Section:" in linha:
                        break
                else:
                    if not re.match(r"^[0-9A-F]{20,}$", linha.strip()):  # Ignora hashes de dump
                        enunciado_linhas.append(linha.strip())

            enunciado = " ".join([l for l in enunciado_linhas if l])
            opcoes_lista = list(opcoes_dict.values())

            # Normalização de gabaritos com mais de uma letra (ex: "A, C" ou "AC")
            letras_respostas = re.findall(r"[A-F]", gabarito_raw.upper())

            if len(letras_respostas) > 1:
                tipo = "multiple_choice"
                resposta_final = [opcoes_dict.get(letra, letra) for letra in letras_respostas]
            else:
                tipo = "single_choice"
                letra_unica = letras_respostas[0] if letras_respostas else gabarito_raw
                resposta_final = opcoes_dict.get(letra_unica, gabarito_raw)

            questoes.append({
                "id": qid,
                "tipo": tipo,
                "enunciado": enunciado,
                "opcoes": opcoes_lista,
                "resposta_correta": resposta_final,
                "explicacao": explicacao
            })

    return questoes

if __name__ == "__main__":
    print("Extraindo questões do PDF...")
    texto_completo = extrair_texto_pdf(PDF_PATH)
    dados = parse_questoes(texto_completo)
    
    with open(OUTPUT_PATH, "w", encoding="utf-8") as f:
        json.dump(dados, f, ensure_ascii=False, indent=2)

    print(f"Sucesso! {len(dados)} questões salvas em '{OUTPUT_PATH}'.")