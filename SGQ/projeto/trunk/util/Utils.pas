unit Utils;

interface

uses Forms;

type

  TUtils = class(TObject)

  public
    function getEnderecoExe():String ;

  private
    function invertePath(path :String): String;

end;

var
  Util : TUtils;


implementation

{ TUtils }

function TUtils.getEnderecoExe: String;
begin
  result := Application.exeName;
  result := self.invertePath(result);
  result := copy(result,pos('\',result)+1,length(result));
  result := self.invertePath(result);
end;



function TUtils.invertePath(path: String): String;
var pathInvertido : String;
 i :  Integer;
begin

  for i := length(path) downto 1 do
  begin
    result := result + copy(path,i,1);
  end;

end;

end.
