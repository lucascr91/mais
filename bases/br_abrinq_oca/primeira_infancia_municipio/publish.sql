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

CREATE VIEW basedosdados-dev.br_abrinq_oca.primeira_infancia_municipio AS
SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(id_municipio AS STRING) id_municipio,
SAFE_CAST(taxa_bruta_mat_pre_escola AS FLOAT64) taxa_bruta_mat_pre_escola,
SAFE_CAST(abs_bruta_mat_pre_escola AS INT64) abs_bruta_mat_pre_escola,
SAFE_CAST(taxa_liquida_mat_pre_escola AS FLOAT64) taxa_liquida_mat_pre_escola,
SAFE_CAST(abs_liquida_mat_pre_escola AS INT64) abs_liquida_mat_pre_escola
from basedosdados-dev.br_abrinq_oca_staging.primeira_infancia_municipio as t