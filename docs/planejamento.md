# Planejamento — evolução do projeto

## Fase 1 — SQL Server (agora)
- Criar o banco e aprender os relacionamentos.
- Entender chaves primárias e estrangeiras.
- Praticar SELECT, filtros, ordenação, JOIN e agregações.
- Importar ao menos uma corrida com todas as voltas dos pilotos selecionados.
- Documentar como os tempos de volta são armazenados (inteiro em milissegundos).

**Primeira entrega:** consultas que comparem dois pilotos em uma mesma corrida.

## Fase 2 — Power BI
- Conectar ao SQL Server.
- Criar filtros por piloto, ano, circuito e corrida.
- Mostrar gráficos de tempo por volta e diferença entre pilotos.

## Fase 3 — Python / Jupyter
- Explorar a API da Jolpica e tratar dados com Pandas.
- Converter tempos textuais (`m:ss.mmm`) para milissegundos.
- Validar registros ausentes, duplicados e limites da API.

## Fase 4 — Engenharia de Dados
- Automatizar extração, transformação, carga e atualização incremental.
- Acrescentar logs, testes e tratamento de falhas.
- Documentar como executar todo o pipeline de ponta a ponta.

## Cuidados para evitar conclusões incorretas
- Comparar tempos absolutos principalmente na MESMA corrida e condições semelhantes.
- Considerar pit stops, bandeiras, tráfego e clima; voltas atípicas podem distorcer médias.
- Ao comparar anos diferentes, considerar evolução de carros, regras e traçados.
- Não tomar a volta mais rápida isoladamente como medida suficiente de desempenho.
- A disponibilidade de dados de voltas históricos começa em 1996 na Jolpica.
- Não subir senhas, tokens, arquivos .bak, grandes datasets ou credenciais para o GitHub.

## Registro de aprendizado

### Diário (preencher a cada sessão)
- **Data:**
- **O que aprendi:**
- **O que alterei:**
- **Próximo passo:**
