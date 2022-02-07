unit Server_CashSystem_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 26/10/2006 00:32:17 from Type Library described below.

// ************************************************************************  //
// Type Lib: I:\Alvaro - Files\Delphi\_Desenvolvimento\CashSystem\Fontes\Server\Server_CashSystem.tlb (1)
// LIBID: {459A082A-1B11-43B4-912E-92D6FCA1B6D5}
// LCID: 0
// Helpfile: 
// HelpString: Server_CashSystem Library
// DepndLst: 
//   (1) v1.0 Midas, (I:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (I:\WINDOWS\system32\STDOLE2.TLB)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Server_CashSystemMajorVersion = 1;
  Server_CashSystemMinorVersion = 0;

  LIBID_Server_CashSystem: TGUID = '{459A082A-1B11-43B4-912E-92D6FCA1B6D5}';

  IID_IServerCashSystem: TGUID = '{6554EDFF-0814-40BD-8320-D916DCF52525}';
  CLASS_ServerCashSystem: TGUID = '{3FA75E01-94BD-4A63-9F2D-AD156796978D}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IServerCashSystem = interface;
  IServerCashSystemDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ServerCashSystem = IServerCashSystem;


// *********************************************************************//
// Interface: IServerCashSystem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6554EDFF-0814-40BD-8320-D916DCF52525}
// *********************************************************************//
  IServerCashSystem = interface(IAppServer)
    ['{6554EDFF-0814-40BD-8320-D916DCF52525}']
    procedure AddConection(const Usuario: WideString; const Senha: WideString; 
                           const Diretorio: WideString); safecall;
    procedure EndConection(const Usuario: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IServerCashSystemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6554EDFF-0814-40BD-8320-D916DCF52525}
// *********************************************************************//
  IServerCashSystemDisp = dispinterface
    ['{6554EDFF-0814-40BD-8320-D916DCF52525}']
    procedure AddConection(const Usuario: WideString; const Senha: WideString; 
                           const Diretorio: WideString); dispid 301;
    procedure EndConection(const Usuario: WideString); dispid 302;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServerCashSystem provides a Create and CreateRemote method to          
// create instances of the default interface IServerCashSystem exposed by              
// the CoClass ServerCashSystem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerCashSystem = class
    class function Create: IServerCashSystem;
    class function CreateRemote(const MachineName: string): IServerCashSystem;
  end;

implementation

uses ComObj;

class function CoServerCashSystem.Create: IServerCashSystem;
begin
  Result := CreateComObject(CLASS_ServerCashSystem) as IServerCashSystem;
end;

class function CoServerCashSystem.CreateRemote(const MachineName: string): IServerCashSystem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerCashSystem) as IServerCashSystem;
end;

end.
