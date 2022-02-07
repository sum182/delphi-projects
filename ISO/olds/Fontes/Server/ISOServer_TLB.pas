unit ISOServer_TLB;

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
// File generated on 31/8/2007 21:56:49 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\Fontes\Server\ISOServer.tlb (1)
// LIBID: {CC629537-0337-4946-9C1E-E1188D4B2E44}
// LCID: 0
// Helpfile: 
// HelpString: ISOServer Library
// DepndLst: 
//   (1) v1.0 Midas, (E:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (E:\WINDOWS\system32\stdole2.tlb)
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
  ISOServerMajorVersion = 1;
  ISOServerMinorVersion = 0;

  LIBID_ISOServer: TGUID = '{CC629537-0337-4946-9C1E-E1188D4B2E44}';

  IID_IClassMain: TGUID = '{42BA95E0-4956-496A-999E-CCD1A2A30844}';
  CLASS_ClassMain: TGUID = '{2909E717-5C94-4AC1-86E8-CD98B850C521}';
  IID_IClassACP: TGUID = '{73D3E5BA-0138-46B6-A990-4A0CD5CF74ED}';
  CLASS_ClassACP: TGUID = '{AD723511-10C9-4639-AFC7-A07915BAD2BF}';
  IID_IClassRH: TGUID = '{B6C9A135-72EF-47FB-B5A1-179A48F761DF}';
  CLASS_ClassRH: TGUID = '{BF04BB20-4188-4E4F-82D5-606E70B1E032}';
  IID_IClassReg: TGUID = '{3E494A32-C098-431C-BA98-E24F55F00E95}';
  CLASS_ClassReg: TGUID = '{FB33B077-5720-4A85-A3F9-452499C2439C}';
  IID_IClassCalib: TGUID = '{485600CD-752D-41F8-A90B-86DC24CE509A}';
  CLASS_ClassCalib: TGUID = '{5695695D-7854-420F-8390-C9A0B258F0B1}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IClassMain = interface;
  IClassMainDisp = dispinterface;
  IClassACP = interface;
  IClassACPDisp = dispinterface;
  IClassRH = interface;
  IClassRHDisp = dispinterface;
  IClassReg = interface;
  IClassRegDisp = dispinterface;
  IClassCalib = interface;
  IClassCalibDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ClassMain = IClassMain;
  ClassACP = IClassACP;
  ClassRH = IClassRH;
  ClassReg = IClassReg;
  ClassCalib = IClassCalib;


// *********************************************************************//
// Interface: IClassMain
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42BA95E0-4956-496A-999E-CCD1A2A30844}
// *********************************************************************//
  IClassMain = interface(IAppServer)
    ['{42BA95E0-4956-496A-999E-CCD1A2A30844}']
    function Get_ClassACP: IClassACP; safecall;
    function Get_ClassReg: IClassReg; safecall;
    function Get_ClassRH: IClassRH; safecall;
    function Get_ClassCalib: IClassCalib; safecall;
    property ClassACP: IClassACP read Get_ClassACP;
    property ClassReg: IClassReg read Get_ClassReg;
    property ClassRH: IClassRH read Get_ClassRH;
    property ClassCalib: IClassCalib read Get_ClassCalib;
  end;

// *********************************************************************//
// DispIntf:  IClassMainDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42BA95E0-4956-496A-999E-CCD1A2A30844}
// *********************************************************************//
  IClassMainDisp = dispinterface
    ['{42BA95E0-4956-496A-999E-CCD1A2A30844}']
    property ClassACP: IClassACP readonly dispid 302;
    property ClassReg: IClassReg readonly dispid 303;
    property ClassRH: IClassRH readonly dispid 304;
    property ClassCalib: IClassCalib readonly dispid 301;
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
// Interface: IClassACP
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {73D3E5BA-0138-46B6-A990-4A0CD5CF74ED}
// *********************************************************************//
  IClassACP = interface(IAppServer)
    ['{73D3E5BA-0138-46B6-A990-4A0CD5CF74ED}']
  end;

// *********************************************************************//
// DispIntf:  IClassACPDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {73D3E5BA-0138-46B6-A990-4A0CD5CF74ED}
// *********************************************************************//
  IClassACPDisp = dispinterface
    ['{73D3E5BA-0138-46B6-A990-4A0CD5CF74ED}']
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
// Interface: IClassRH
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B6C9A135-72EF-47FB-B5A1-179A48F761DF}
// *********************************************************************//
  IClassRH = interface(IAppServer)
    ['{B6C9A135-72EF-47FB-B5A1-179A48F761DF}']
  end;

// *********************************************************************//
// DispIntf:  IClassRHDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B6C9A135-72EF-47FB-B5A1-179A48F761DF}
// *********************************************************************//
  IClassRHDisp = dispinterface
    ['{B6C9A135-72EF-47FB-B5A1-179A48F761DF}']
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
// Interface: IClassReg
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3E494A32-C098-431C-BA98-E24F55F00E95}
// *********************************************************************//
  IClassReg = interface(IAppServer)
    ['{3E494A32-C098-431C-BA98-E24F55F00E95}']
  end;

// *********************************************************************//
// DispIntf:  IClassRegDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3E494A32-C098-431C-BA98-E24F55F00E95}
// *********************************************************************//
  IClassRegDisp = dispinterface
    ['{3E494A32-C098-431C-BA98-E24F55F00E95}']
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
// Interface: IClassCalib
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {485600CD-752D-41F8-A90B-86DC24CE509A}
// *********************************************************************//
  IClassCalib = interface(IAppServer)
    ['{485600CD-752D-41F8-A90B-86DC24CE509A}']
  end;

// *********************************************************************//
// DispIntf:  IClassCalibDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {485600CD-752D-41F8-A90B-86DC24CE509A}
// *********************************************************************//
  IClassCalibDisp = dispinterface
    ['{485600CD-752D-41F8-A90B-86DC24CE509A}']
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
// The Class CoClassMain provides a Create and CreateRemote method to          
// create instances of the default interface IClassMain exposed by              
// the CoClass ClassMain. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClassMain = class
    class function Create: IClassMain;
    class function CreateRemote(const MachineName: string): IClassMain;
  end;

// *********************************************************************//
// The Class CoClassACP provides a Create and CreateRemote method to          
// create instances of the default interface IClassACP exposed by              
// the CoClass ClassACP. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClassACP = class
    class function Create: IClassACP;
    class function CreateRemote(const MachineName: string): IClassACP;
  end;

// *********************************************************************//
// The Class CoClassRH provides a Create and CreateRemote method to          
// create instances of the default interface IClassRH exposed by              
// the CoClass ClassRH. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClassRH = class
    class function Create: IClassRH;
    class function CreateRemote(const MachineName: string): IClassRH;
  end;

// *********************************************************************//
// The Class CoClassReg provides a Create and CreateRemote method to          
// create instances of the default interface IClassReg exposed by              
// the CoClass ClassReg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClassReg = class
    class function Create: IClassReg;
    class function CreateRemote(const MachineName: string): IClassReg;
  end;

// *********************************************************************//
// The Class CoClassCalib provides a Create and CreateRemote method to          
// create instances of the default interface IClassCalib exposed by              
// the CoClass ClassCalib. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClassCalib = class
    class function Create: IClassCalib;
    class function CreateRemote(const MachineName: string): IClassCalib;
  end;

implementation

uses ComObj;

class function CoClassMain.Create: IClassMain;
begin
  Result := CreateComObject(CLASS_ClassMain) as IClassMain;
end;

class function CoClassMain.CreateRemote(const MachineName: string): IClassMain;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClassMain) as IClassMain;
end;

class function CoClassACP.Create: IClassACP;
begin
  Result := CreateComObject(CLASS_ClassACP) as IClassACP;
end;

class function CoClassACP.CreateRemote(const MachineName: string): IClassACP;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClassACP) as IClassACP;
end;

class function CoClassRH.Create: IClassRH;
begin
  Result := CreateComObject(CLASS_ClassRH) as IClassRH;
end;

class function CoClassRH.CreateRemote(const MachineName: string): IClassRH;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClassRH) as IClassRH;
end;

class function CoClassReg.Create: IClassReg;
begin
  Result := CreateComObject(CLASS_ClassReg) as IClassReg;
end;

class function CoClassReg.CreateRemote(const MachineName: string): IClassReg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClassReg) as IClassReg;
end;

class function CoClassCalib.Create: IClassCalib;
begin
  Result := CreateComObject(CLASS_ClassCalib) as IClassCalib;
end;

class function CoClassCalib.CreateRemote(const MachineName: string): IClassCalib;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClassCalib) as IClassCalib;
end;

end.
