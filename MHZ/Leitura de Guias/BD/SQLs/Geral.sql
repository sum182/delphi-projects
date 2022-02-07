/*
   **********************************************
   SQLs Geral
   **********************************************
*/

select * from tipo_servico tipo

select * from GUIAS_DETALHE guia
where guia.data_emissao_guia =  :data_emissao_guia
and guia.numero_carteira = :numero_carteira
and coalesce(guia.lida,'N') = 'N'


select * from GUIAS_GRUPO_LOTE grupo
where grupo.id_guias_grupo_lote = :id_guias_grupo_lote


delete from GUIAS_GRUPO_LOTE grupo
where grupo.id_guias_grupo_lote not in (select cabec.id_guias_grupo_lote
                                        from guias_cabecalho cabec
                                         where cabec.id_guias_grupo_lote = grupo.id_guias_grupo_lote)
and grupo.id_guias_grupo_lote = :id_guias_grupo_lote



select *  from GUIAS_GRUPO_LOTE grupo
where grupo.id_guias_grupo_lote not in (select cabec.id_guias_grupo_lote
                                        from guias_cabecalho cabec
                                        where cabec.id_guias_grupo_lote = grupo.id_guias_grupo_lote )




select GUIA.* from GUIAS_DETALHE guia
where 1=1
and guia.data_emissao_guia =  :data_emissao_guia
and guia.numero_carteira = :numero_carteira
and COALESCE(guia.lida,'FALSE') = 'FALSE'





delete from guias_detalhe;
delete from guias_cabecalho;
delete from guias_grupo_lote;

select * from tipo_servico tipo

select * from GUIAS_DETALHE guia
where guia.data_emissao_guia =  :data_emissao_guia
and guia.numero_carteira = :numero_carteira
and coalesce(guia.lida,'N') = 'N'


select * from GUIAS_GRUPO_LOTE grupo
where grupo.id_guias_grupo_lote = :id_guias_grupo_lote


select
  grupo.*,
  usu.nome as Usuario,
  tiposer.descricao as Tipo_Servico
from GUIAS_GRUPO_LOTE grupo
inner join usuario usu on (usu.id_usuario = grupo.id_usuario)
inner join tipo_servico tiposer on (tiposer.id_tipo_servico = grupo.id_tipo_servico)
where grupo.dt_importacao = :dt_importacao
and grupo.id_tipo_servico = :id_tipo_servico
order by grupo.id_guias_grupo_lote desc



select * from guias_cabecalho cabec
where cabec.id_guias_grupo_lote = :id_tipo_servico


select * from guias_detalhe det
where det.id_guias_cabecalho =:id_guias_cabecalho
