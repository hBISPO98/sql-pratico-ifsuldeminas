# 👩🏽‍💻 Curso Prático de SQL — IFSULDEMINAS

Este repositório reúne a resolução prática de exercícios e a construção de scripts desenvolvidos ao longo da formação do IFSULDEMINAS. 

Em vez de um único projeto isolado, o foco esteve no **domínio prático dos comandos e cláusulas do SQL**, cobrindo desde a estruturação do banco até a geração de consultas analíticas.

---

## 🔄 Ciclo de Vida do Curso

| Módulo | Práticas |
| :--- | :--- |
| **1. DDL** | Criação do Esquema (Tabelas e Restrições) |
| **2. DML** | Inserção, Atualização e Deleção Segura |
| **3. Relatórios** | Consultas Analíticas: JOINs, GROUP BY e HAVING |
---

## 🛠️ Tecnologias e Ferramentas
* **Linguagem:** SQL
* **Sistema Gerenciado de Banco de Dados (SGBD):** SQLite
* **Ambiente de Execução:** SQLiteOnline

---

## 🎯 Etapas do Projeto & Aprendizados

### 1️⃣ Criação de Esquema (DDL)
* Estruturação das tabelas `clientes` e `pedidos`.
* Aplicação de `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE` e `DEFAULT`.
* Garantia de integridade referencial entre entidades.
  -> ![Criação das Tabelas](./img/res_01_create_tables.png)

### 2️⃣ Inserção e Manipulação de Dados (DML)
* Preenchimento inicial de registros.
* Práticas de **alteração e deleção segura** (`UPDATE` e `DELETE`) utilizando blocos transacionais (`BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`) e conferência prévia via `SELECT`.

  | Inserção de Clientes | Inserção de Pedidos |
| :---: | :---: |
| <img src="./img/res_02_insert_clientes.png" width="400"/> | <img src="./img/res_02_insert_pedidos.png" width="400"/> |

| Atualização (UPDATE) | Remoção (DELETE) |
| :---: | :---: |
| <img src="./img/res_04_update.png" width="400"/> | <img src="./img/res_05_delete.png" width="400"/> |

### 3️⃣ Relatórios Analíticos e Agregações
* Cruzamento de dados com `INNER JOIN` e `LEFT JOIN`.
  ->
* Tratamento de valores `NULL` com a função `COALESCE`.
 ->
* Funções de agregação, agrupamento e ordenação (`SUM`, `AVG`, `COUNT`, `MAX`, `MIN`) com `GROUP BY` e `ORDER BY`.
 ->
* Filtragem de resultados agrupados via restrição `HAVING`.
 -> Relatório Completo de Vendas por Cliente:**



  
![Relatório de Agregações](./img/res_08_relatorio.png)

**Filtros em Agrupamentos (HAVING):**
![Aplicação do HAVING](./img/res_09_having.png)

**Relatório Completo de Vendas por Cliente:**
![Relatório de Agregações](./img/res_08_relatorio.png)

**Filtros em Agrupamentos (HAVING):**
![Aplicação do HAVING](./img/res_09_having.png)






---

## 📸 Validação dos Resultados

### Esquema do Banco de Dados
![Esquema de Tabelas](imagens/01_esquema_tabelas.png)

### Relatório de Compras por Cliente (`GROUP BY` + `HAVING`)
![Resultado Agregações](imagens/03_relatorio_agregado.png)

---

## 📂 Como Executar os Scripts
1. Acesse o [SQLiteOnline](https://sqliteonline.com/).
2. Execute os arquivos SQL na ordem indicada dentro da pasta `scripts/`.

> **⚠️ OBS:** Como o SQLite Online roda na memória temporária (RAM), assim que a aba for fechada ou atualizada, todos os dados criados serão apagados.
