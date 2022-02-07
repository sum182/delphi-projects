object SrvScreen: TSrvScreen
  OldCreateOrder = False
  OnCreate = ServiceCreate
  OnDestroy = ServiceDestroy
  AllowStop = False
  AllowPause = False
  DisplayName = 'd:\Delphi\Projetos\Outros\PrintScreen Locked\svprint'
  ErrorSeverity = esIgnore
  Height = 150
  Width = 215
end
