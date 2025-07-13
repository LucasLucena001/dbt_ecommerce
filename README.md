# 📊 dbt_ecommerce

Projeto de modelagem de dados utilizando [dbt (Data Build Tool)](https://www.getdbt.com/) com foco em um cenário de e-commerce.  
Este projeto organiza os dados brutos em camadas analíticas (staging, intermediate e mart), prontos para uso em dashboards e análises estratégicas.

---

## 🚀 Visão Geral

Este repositório implementa boas práticas de engenharia de dados com `dbt`, estruturando dados em:

- **Staging**: padronização e tratamento dos dados brutos
- **Intermediate**: enriquecimento, joins e sumarizações
- **Mart**: visualizações analíticas e indicadores finais para BI

---

## 🗂️ Estrutura do Projeto

```bash
dbt_ecommerce/
│
├── models/
│   ├── staging/          # Modelos tratados a partir das tabelas brutas
│   │   ├── stg_customers.sql
│   │   ├── stg_orders.sql
│   │   ├── stg_order_items.sql
│   │   ├── stg_products.sql
│   │   ├── stg_payments.sql
│   │   └── schema.yml
│   │
│   ├── intermediate/     # Modelos intermediários com joins e agregações
│   │   ├── int_orders_enriched.sql
│   │   ├── int_customer_order_summary.sql
│   │   └── intermediate.yml
│   │
│   ├── marts/            # Modelos analíticos finais
│   │   ├── mart_category_revenue.sql
│   │   ├── mart_customer_ranking.sql
│   │   └── marts.yml
│
├── dbt_project.yml       # Configuração principal do projeto dbt
├── profiles.yml          # Configuração de conexão com o banco de dados
├── init.sql              # Script SQL com tabelas e dados brutos
└── README.md             # Este arquivo
