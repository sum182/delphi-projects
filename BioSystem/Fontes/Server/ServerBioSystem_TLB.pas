unit ServerBioSystem_TLB;

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
// File generated on 21/2/2006 00:00:45 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Sistemas\BioSystem\Fontes\Server\ServerBioSystem.tlb (1)
// LIBID: {A43BC5EE-49BF-4CCF-A044-5A6C0A2A516F}
// LCID: 0
// Helpfile: 
// HelpString: ServerBioSystem Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
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
  ServerBioSystemMajorVersion = 1;
  ServerBioSystemMinorVersion = 0;

  LIBID_ServerBioSystem: TGUID = '{A43BC5EE-49BF-4CCF-A044-5A6C0A2A516F}';

  IID_IServer_BioSystem: TGUID = '{09C86BA1-A9F2-4335-B443-B831FDB49F16}';
  CLASS_Server_BioSystem: TGUID = '{121590D7-04B7-4805-A4F7-8375A174E4EF}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IServer_BioSystem = interface;
  IServer_BioSystemDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Server_BioSystem = IServer_BioSystem;


// *********************************************************************//
// Interface: IServer_BioSystem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {09C86BA1-A9F2-4335-B443-B831FDB49F16}
// *********************************************************************//
  IServer_BioSystem = interface(IAppServer)
    ['{09C86BA1-A9F2-4335-B443-B831FDB49F16}']
    procedure AddConection(const USUARIO: WideString; const SENHA: WideString; 
                           const DIRETORIO: WideString); safecall;
    procedure EndConection(const USUARIO: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IServer_BioSystemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {09C86BA1-A9F2-4335-B443-B831FDB49F16}
// *********************************************************************//
  IServer_BioSystemDisp = dispinterface
    ['{09C86BA1-A9F2-4335-B443-B831FDB49F16}']
    procedure AddConection(const USUARIO: WideString; const SENHA: WideString; 
                           const DIRETORIO: WideString); dispid 301;
    procedure EndConection(const USUARIO: WideString); dispid 302;
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
// The Class CoServer_BioSystem provides a Create and CreateRemote method to          
// create instances of the default interface IServer_BioSystem exposed by              
// the CoClass Server_BioSystem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServer_BioSystem = class
    class function Create: IServer_BioSystem;
    class function CreateRemote(const MachineName: string): IServer_BioSystem;
  end;

implementation

uses ComObj;

class function CoServer_BioSystem.Create: IServer_BioSystem;
begin
  Result := CreateComObject(CLASS_Server_BioSystem) as IServer_BioSystem;
end;

class function CoServer_BioSystem.CreateRemote(const MachineName: string): IServer_BioSystem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Server_BioSystem) as IServer_BioSystem;
end;

end.
