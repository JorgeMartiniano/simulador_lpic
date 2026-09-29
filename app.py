import streamlit as st
import json
import os
import random

st.set_page_config(
    page_title="Simulador LPIC-1 (102-500)",
    page_icon="🐧",
    layout="centered"
)

# Carregamento seguro do arquivo JSON
@st.cache_data
def carregar_dados():
    caminho = os.path.join(os.path.dirname(__file__), "questoes.json")
    if not os.path.exists(caminho):
        return []
    with open(caminho, "r", encoding="utf-8") as f:
        return json.load(f)

questoes_originais = carregar_dados()

st.title("🐧 Simulado LPIC-1 — Exame 102-500")

if not questoes_originais:
    st.error("Arquivo `questoes.json` não encontrado na mesma pasta de `app.py`.")
    st.stop()

# ==========================================
# INICIALIZAÇÃO DE ESTADOS GLOBAIS
# ==========================================
if "respostas" not in st.session_state:
    st.session_state.respostas = {}

if "pagina_atual" not in st.session_state:
    st.session_state.pagina_atual = 0

if "submetido" not in st.session_state:
    st.session_state.submetido = False

if "questoes_ativas" not in st.session_state:
    st.session_state.questoes_ativas = questoes_originais.copy()

if "feedback_imediato" not in st.session_state:
    st.session_state.feedback_imediato = {}  # Guarda se a questão já foi validada no modo treino

# ==========================================
# PAINEL DE CONFIGURAÇÃO NA BARRA LATERAL
# ==========================================
with st.sidebar:
    st.header("⚙️ Configurar Simulado")
    
    total_disponivel = len(questoes_originais)
    st.write(f"Total no banco: **{total_disponivel} questões**")
    
    # Seletor de Modo de Estudo
    st.subheader("Modo de Resposta")
    modo_treino = st.checkbox(
        "💡 Modo Treino (Feedback Imediato)", 
        value=False,
        help="Mostra se acertou/errou e a explicação logo após responder cada questão."
    )
    
    st.divider()
    st.subheader("Intervalo de Questões")
    r_inicio = st.number_input("Questão Inicial", min_value=1, max_value=total_disponivel, value=1)
    r_fim = st.number_input("Questão Final", min_value=1, max_value=total_disponivel, value=min(60, total_disponivel))
    
    modo_aleatorio = st.checkbox("🔀 Ordem Aleatória (Embaralhar)", value=False)
    
    st.divider()
    
    if st.button("🔄 Aplicar e Reiniciar Simulado", type="primary", use_container_width=True):
        inicio_idx = max(0, int(r_inicio) - 1)
        fim_idx = min(total_disponivel, int(r_fim))
        
        if inicio_idx < fim_idx:
            subset = questoes_originais[inicio_idx:fim_idx]
        else:
            subset = [questoes_originais[inicio_idx]]
            
        if modo_aleatorio:
            random.shuffle(subset)
            
        st.session_state.questoes_ativas = subset
        st.session_state.respostas = {}
        st.session_state.pagina_atual = 0
        st.session_state.submetido = False
        st.session_state.feedback_imediato = {}
        st.rerun()

    st.divider()

    if not st.session_state.submetido:
        total_atual = len(st.session_state.questoes_ativas)
        st.write(f"Questão atual: **{st.session_state.pagina_atual + 1}** de {total_atual}")
        
        if st.button("🛑 Encerrar Simulado Agora", type="secondary", use_container_width=True):
            st.session_state.submetido = True
            st.rerun()

questoes = st.session_state.questoes_ativas
total_questoes = len(questoes)

if total_questoes == 0:
    st.warning("⚠️ O intervalo selecionado não retornou nenhuma questão. Ajuste os filtros na barra lateral.")
    st.stop()

# Função auxiliar para avaliar se uma resposta está correta
def checar_acerto(q, resp_usuario):
    tipo = q["tipo"]
    gabarito = q["resposta_correta"]
    
    foi_respondida = False
    if tipo == "single_choice" and resp_usuario is not None:
        foi_respondida = True
    elif tipo == "multiple_choice" and resp_usuario and len(resp_usuario) > 0:
        foi_respondida = True
    elif tipo == "fill_blank" and resp_usuario and resp_usuario.strip() != "":
        foi_respondida = True

    if not foi_respondida:
        return False, False  # (foi respondida?, acertou?)

    acertou = False
    if tipo == "single_choice":
        acertou = (resp_usuario == gabarito)
    elif tipo == "multiple_choice":
        respostas_set = set(resp_usuario or [])
        gabarito_set = set(gabarito if isinstance(gabarito, list) else [gabarito])
        acertou = (respostas_set == gabarito_set)
    elif tipo == "fill_blank":
        texto_usr = (resp_usuario or "").strip()
        if isinstance(gabarito, list):
            acertou = any(texto_usr == g.strip() for g in gabarito)
        else:
            acertou = (texto_usr == str(gabarito).strip())

    return True, acertou

# ==========================================
# FLUXO PRINCIPAL DO SIMULADO
# ==========================================
if not st.session_state.submetido:
    idx_atual = st.session_state.pagina_atual
    
    if idx_atual >= total_questoes:
        st.session_state.pagina_atual = 0
        idx_atual = 0

    q = questoes[idx_atual]
    qid = q["id"]
    tipo = q.get("tipo")

    st.progress((idx_atual + 1) / total_questoes)
    st.markdown(f"### Questão {idx_atual + 1} de {total_questoes} (ID Original: {qid})")
    st.write(q["enunciado"])

    chave_widget = f"q_input_{qid}"
    valor_anterior = st.session_state.respostas.get(qid, None)

    # Coleta de resposta do usuário baseada no tipo
    if tipo == "single_choice":
        indice_default = None
        if valor_anterior in q["opcoes"]:
            indice_default = q["opcoes"].index(valor_anterior)

        resp = st.radio(
            "Selecione uma opção:",
            options=q["opcoes"],
            index=indice_default,
            key=chave_widget
        )
        st.session_state.respostas[qid] = resp

    elif tipo == "multiple_choice":
        default_val = valor_anterior if isinstance(valor_anterior, list) else []
        resp = st.multiselect(
            "Selecione as opções corretas:",
            options=q["opcoes"],
            default=default_val,
            key=chave_widget
        )
        st.session_state.respostas[qid] = resp

    elif tipo == "fill_blank":
        default_val = valor_anterior if isinstance(valor_anterior, str) else ""
        resp = st.text_input(
            "Digite sua resposta (atenção a maiúsculas/minúsculas):",
            value=default_val,
            placeholder="ex: comando ou /caminho/do/arquivo",
            key=chave_widget
        )
        st.session_state.respostas[qid] = resp

    # SE O MODO TREINO ESTIVER ATIVO: Mostra botão para conferir na hora
    if modo_treino:
        st.markdown("")
        if st.button("✨ Conferir Resposta Agora", key=f"btn_treino_{qid}"):
            st.session_state.feedback_imediato[qid] = True

        # Se já pediu o feedback desta questão, exibe o resultado imediato
        if st.session_state.feedback_imediato.get(qid, False):
            foi_resp, acertou = checar_acerto(q, st.session_state.respostas.get(qid))
            if not foi_resp:
                st.warning("⚠️ Você ainda não preencheu esta questão.")
            elif acertou:
                st.success("✅ **Correto!** Ótimo trabalho.")
                if "explicacao" in q:
                    st.info(f"💡 {q['explicacao']}")
            else:
                st.error("❌ **Incorreto!**")
                st.write(f"- **Gabarito oficial:** `{q['resposta_correta']}`")
                if "explicacao" in q:
                    st.info(f"💡 {q['explicacao']}")

    st.markdown("---")

    # Botões de navegação inferior
    col1, col2, col3 = st.columns([1, 1, 1])

    with col1:
        if idx_atual > 0:
            if st.button("⬅️ Anterior", use_container_width=True):
                st.session_state.pagina_atual -= 1
                st.rerun()

    with col3:
        if idx_atual < total_questoes - 1:
            if st.button("Próxima ➡️", use_container_width=True):
                st.session_state.pagina_atual += 1
                st.rerun()
        else:
            if st.button("🚀 Finalizar Simulado", type="primary", use_container_width=True):
                st.session_state.submetido = True
                st.rerun()

else:
    # ==========================================
    # TELA DE RESULTADOS E REVISÃO DE ERROS
    # ==========================================
    st.header("📊 Resultado Final do Bloco Atual")
    
    acertos = 0
    respondidas = 0
    ids_errados_ou_em_branco = []
    
    for q in questoes:
        qid = q["id"]
        resp_usuario = st.session_state.respostas.get(qid)
        gabarito = q["resposta_correta"]
        
        foi_resp, acertou = checar_acerto(q, resp_usuario)

        if foi_resp:
            respondidas += 1
            if acertou:
                acertos += 1
                st.success(f"**Questão ID {qid}: Correta!**")
            else:
                ids_errados_ou_em_branco.append(q)
                st.error(f"**Questão ID {qid}: Incorreta!**")
                st.write(f"- **Sua resposta:** `{resp_usuario}`")
                st.write(f"- **Gabarito oficial:** `{gabarito}`")
                if "explicacao" in q:
                    st.info(f"💡 {q['explicacao']}")
        else:
            ids_errados_ou_em_branco.append(q)
            st.warning(f"**Questão ID {qid}: Não respondida / em branco.**")
            st.write(f"- **Gabarito oficial:** `{gabarito}`")
            if "explicacao" in q:
                st.info(f"💡 {q['explicacao']}")
                
        st.divider()

    porcentagem = (acertos / total_questoes) * 100
    
    st.markdown(f"### Estatísticas deste Bloco:")
    st.write(f"- Questões respondidas: **{respondidas} / {total_questoes}**")
    st.write(f"- Acertos: **{acertos} / {total_questoes}** ({porcentagem:.1f}%)")

    if porcentagem >= 75:
        st.balloons()
        st.success("🎉 Aprovado neste bloco!")
    else:
        st.warning("⚠️ Abaixo da meta (~75%).")

    # BOTÕES DE AÇÃO NA TELA FINAL
    col_a, col_b = st.columns(2)

    with col_a:
        if st.button("🔄 Recomeçar com as Mesmas Configurações"):
            st.session_state.respostas = {}
            st.session_state.pagina_atual = 0
            st.session_state.submetido = False
            st.session_state.feedback_imediato = {}
            st.rerun()

    with col_b:
        if ids_errados_ou_em_branco:
            if st.button(f"📝 Revisar Apenas Erros ({len(ids_errados_ou_em_branco)})", type="primary"):
                st.session_state.questoes_ativas = ids_errados_ou_em_branco
                st.session_state.respostas = {}
                st.session_state.pagina_atual = 0
                st.session_state.submetido = False
                st.session_state.feedback_imediato = {}
                st.rerun()
        else:
            st.success("🏆 Perfeito! Você não errou nenhuma questão neste bloco.")
