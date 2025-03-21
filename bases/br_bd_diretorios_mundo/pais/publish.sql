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

CREATE VIEW basedosdados-dev.br_bd_diretorios_mundo.pais AS
SELECT 
SAFE_CAST(id_pais_ocde AS STRING) id_pais_ocde,
SAFE_CAST(id_pais_fao AS STRING) id_pais_fao,
SAFE_CAST(id_pais_gaul AS STRING) id_pais_gaul,
SAFE_CAST(sigla_pais_iso3 AS STRING) sigla_pais_iso3,
SAFE_CAST(sigla_pais_iso2 AS STRING) sigla_pais_iso2,
SAFE_CAST(sigla_pais_pnud AS STRING) sigla_pais_pnud,
SAFE_CAST(nome AS STRING) nome,
SAFE_CAST(nome_ingles AS STRING) nome_ingles,
SAFE_CAST(nome_oficial_ingles AS STRING) nome_oficial_ingles,
SAFE_CAST(nacionalidade AS STRING) nacionalidade
FROM basedosdados-dev.br_bd_diretorios_mundo_staging.pais AS t