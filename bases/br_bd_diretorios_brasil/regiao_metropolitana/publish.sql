/*

Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types

*/

CREATE VIEW basedosdados-dev.br_bd_diretorios_brasil.regiao_metropolitana AS
SELECT 
SAFE_CAST(id_regiao_metropolitana AS STRING) id_regiao_metropolitana,
SAFE_CAST(nome AS STRING) nome,
SAFE_CAST(tipo AS STRING) tipo,
SAFE_CAST(sigla_uf AS STRING) sigla_uf,
SAFE_CAST(nome_regiao AS STRING) nome_regiao
from basedosdados-dev.br_bd_diretorios_brasil_staging.regiao_metropolitana as t