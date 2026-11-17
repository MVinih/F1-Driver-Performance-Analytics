# F1 Driver Performance Analytics 🏎️

Projeto pessoal de aprendizagem em **SQL Server e análise de dados da Fórmula 1**.

O objetivo é construir uma base de dados para acompanhar a trajetória dos pilotos, comparar seus desempenhos em corridas e investigar os tempos de cada volta. Este repositório começa com SQL Server e evoluirá para Power BI, Python e processos automatizados de dados.

> **Status:** Em desenvolvimento — fase 1: modelagem do banco e consultas SQL.

## Perguntas que queremos responder

- Qual foi a melhor volta de um piloto em determinada corrida?
- Como os tempos de volta de dois pilotos se comparam?
- Como o desempenho de um piloto evoluiu entre temporadas?
- Em quais circuitos um piloto apresenta resultados mais consistentes?
- Como a mudança de equipe se relaciona com seus resultados?

## Tecnologias

- **Agora:** SQL Server, SQL Server Management Studio (SSMS), Git e GitHub.
- **Depois:** Power BI, Python, Pandas e Jupyter Notebook.
- **Fase avançada:** automação da coleta, validação e carga dos dados.

## Estrutura

```text
f1-driver-performance-analytics/
├── sql/
│   ├── 01_criar_banco_e_tabelas.sql
│   ├── 02_dados_iniciais.sql
│   └── 03_consultas_iniciais.sql
├── docs/
│   └── planejamento.md
├── dados/
│   └── README.md
├── .gitignore
└── README.md
```

## Como começar

1. Abra o **SQL Server Management Studio (SSMS)** e conecte-se a uma instância do SQL Server.
2. Abra e execute `sql/01_criar_banco_e_tabelas.sql`.
3. Execute `sql/02_dados_iniciais.sql` para inserir um exemplo pequeno e **parcial**, documentado pela fonte.
4. Execute `sql/03_consultas_iniciais.sql` e observe os resultados.
5. Modifique as consultas e registre cada avanço com um commit no GitHub Desktop.

⚠️ **Os dados de exemplo não são uma corrida completa:** são apenas dois pilotos, uma corrida e uma volta para ensinar a testar relacionamentos. Não interprete resultados agregados deste exemplo como estatísticas da corrida inteira.

## Fonte de dados

- [Jolpica F1 API — documentação](https://github.com/jolpica/jolpica-f1/blob/main/docs/README.md)
- [Documentação do endpoint de voltas](https://github.com/jolpica/jolpica-f1/blob/main/docs/endpoints/laps.md)
- [Documentação de resultados](https://github.com/jolpica/jolpica-f1/blob/main/docs/endpoints/results.md)

**Cobertura de voltas:** a documentação da Jolpica informa que os tempos por volta começam em 1996. Para fazer análises históricas justas, será necessário lidar com mudanças de circuito, carro, regulamento, clima e condições de corrida.

## Próximos passos

- [ ] Modelar e criar tabelas relacionadas.
- [ ] Praticar `SELECT`, `WHERE`, `ORDER BY`, `JOIN` e `GROUP BY`.
- [ ] Escolher uma corrida com dados completos de voltas e importar os registros.
- [ ] Comparar tempos de dois pilotos em uma mesma corrida.
- [ ] Documentar as decisões de modelagem.
- [ ] Criar um dashboard no Power BI.
- [ ] Automatizar a coleta em Python e a carga no SQL Server.

## Sobre o projeto

Projeto de estudos independente, sem afiliação oficial com a Fórmula 1. Referências e atribuição aos fornecedores de dados estão identificadas acima.
