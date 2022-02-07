/*
   **********************************************
   SQLs de IMPORTAÇÃO
   **********************************************
*/

----apagar importações --------------------------------
delete from guias_detalhe;
delete from guias_cabecalho;
delete from guias_grupo_lote;
--------------------------------------------------------

--CABECALHO 01/10
SELECT * FROM  guias_cabecalho CABEC
WHERE CABEC.sequencial_transacao = 21388
WHERE CABEC.id_guias_cabecalho = 207

SELECT * FROM guias_cabecalho CABEC
WHERE CABEC.id_guias_grupo_lote = 85
cabec.sequencial_transacao

UPDATE  guias_cabecalho CABEC
SET CABEC.cancelado = 'FALSE'









 UPDATE GUIAS_DETALHE DET
SET DET.LIDA = 'TRUE',
    DET.DATA_LEITURA = CURRENT_DATE,
    DET.HORA_LEITURA = CURRENT_TIMESTAMP,
    DET.ID_USUARIO_LEITURA = :ID_USUARIO_LEITURA

WHERE 1=1
AND EXISTS  (
                 SELECT 1
                 FROM GUIAS_DETALHE DET_IMP
                 INNER JOIN GUIAS_CABECALHO CABEC ON (CABEC.ID_GUIAS_CABECALHO = DET_IMP.ID_GUIAS_CABECALHO)
                 INNER JOIN GUIAS_GRUPO_LOTE GRP ON (GRP.ID_GUIAS_GRUPO_LOTE = CABEC.ID_GUIAS_GRUPO_LOTE)
                 WHERE 1=1
                 AND GRP.ID_GUIAS_GRUPO_LOTE = :ID_GUIAS_GRUPO_LOTE_ORIGEM
                 AND DET_IMP.NUMERO_GUIA_PRESTADOR = DET.NUMERO_GUIA_PRESTADOR
                 AND DET_IMP.NUMERO_CARTEIRA = DET.NUMERO_CARTEIRA
                 AND DET_IMP.DATA = DET.DATA
                 AND DET_IMP.ID_GUIAS_CABECALHO <> DET.ID_GUIAS_CABECALHO
                 AND DET_IMP.LIDA = 'TRUE'
                 AND COALESCE(CABEC.CANCELADO,'FALSE') = 'FALSE'


             )


AND DET.ID_GUIAS_CABECALHO = :ID_GUIAS_CABECALHO

