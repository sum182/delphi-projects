/*
   **********************************************
   SQLs de Leituras
   **********************************************
*/


--QUERY LEITURA
SELECT
  GUIA.*,
  CABEC.sequencial_transacao,
  TP.descricao as  "Tipo_Servico"
FROM GUIAS_DETALHE GUIA
INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = GUIA.ID_GUIAS_CABECALHO)
INNER JOIN guias_grupo_lote GRUPO ON (GRUPO.id_guias_grupo_lote = CABEC.id_guias_grupo_lote)
INNER JOIN TIPO_SERVICO TP ON (TP.id_tipo_servico = GRUPO.id_tipo_servico)
WHERE GUIA.DATA =  :DATA
AND GUIA.NUMERO_CARTEIRA = :NUMERO_CARTEIRA
AND COALESCE(GUIA.LIDA,'FALSE') = 'FALSE'
AND COALESCE(CABEC.FINALIZADO,'FALSE') = 'FALSE'
AND COALESCE(CABEC.CANCELADO,'FALSE') = 'FALSE'

--QUERY DE GUIAS LIDAS
SELECT
  GUIA.*,
  CABEC.SEQUENCIAL_TRANSACAO,
  TP.DESCRICAO AS  "TIPO_SERVICO",
  STATUS.DESCRICAO AS STATUS
FROM GUIAS_DETALHE GUIA
INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = GUIA.ID_GUIAS_CABECALHO)
INNER JOIN GUIAS_GRUPO_LOTE GRUPO ON (GRUPO.ID_GUIAS_GRUPO_LOTE = CABEC.ID_GUIAS_GRUPO_LOTE)
INNER JOIN TIPO_SERVICO TP ON (TP.ID_TIPO_SERVICO = GRUPO.ID_TIPO_SERVICO)
LEFT OUTER JOIN LEITURA_STATUS STATUS ON (STATUS.ID_LEITURA_STATUS = GUIA.ID_LEITURA_STATUS)
WHERE GUIA.DATA =  :DATA
AND COALESCE(GUIA.LIDA,'FALSE') = 'TRUE'
AND COALESCE(CABEC.FINALIZADO,'FALSE') = 'FALSE'
AND COALESCE(CABEC.CANCELADO,'FALSE') = 'FALSE'
ORDER BY GUIA.HORA_LEITURA DESC




--cabecalho
select * from guias_cabecalho cabec
where cabec.sequencial_transacao = 21388 ;

--guias disponiveis 01/10
select DET.numero_carteira from guias_detalhe det
WHERE 1=1
--AND det.id_guias_cabecalho = 296
--and COALESCE(det.lida,'FALSE') = 'FALSE';


select * from guias_detalhe det
where det.id_guias_cabecalho = 295
and COALESCE(det.lida,'FALSE') = 'FALSE';



--guias lidas 01/10
select * from guias_detalhe det
where det.id_guias_cabecalho = 295
and det.lida = 'TRUE';



select * from guias_detalhe det
where det.valor <> det.valortotal_2
and det.id_guias_cabecalho = 295;




UPDATE guias_detalhe det
SET DET.id_leitura_status = NULL;



--ler todos
UPDATE guias_detalhe det
SET
  DET.id_leitura_status = 1,
  DET.lida = 'TRUE',
  det.data_leitura = 'now',
  det.hora_leitura = 'now',
  det.id_usuario_leitura = 1
where det.lida = 'FALSE'








select * from leitura_status status
order by status.id_leitura_status
