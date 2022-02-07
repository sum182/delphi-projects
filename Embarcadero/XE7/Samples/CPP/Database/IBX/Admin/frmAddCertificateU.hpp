// CodeGear C++Builder
// Copyright (c) 1995, 2013 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'frmAddCertificateU.pas' rev: 26.00 (Windows)

#ifndef FrmaddcertificateuHPP
#define FrmaddcertificateuHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Winapi.Windows.hpp>	// Pascal unit
#include <System.SysUtils.hpp>	// Pascal unit
#include <System.Classes.hpp>	// Pascal unit
#include <Vcl.Graphics.hpp>	// Pascal unit
#include <Vcl.Forms.hpp>	// Pascal unit
#include <Vcl.Controls.hpp>	// Pascal unit
#include <Vcl.StdCtrls.hpp>	// Pascal unit
#include <Vcl.Buttons.hpp>	// Pascal unit
#include <Vcl.Dialogs.hpp>	// Pascal unit
#include <IBServices.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Frmaddcertificateu
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfrmAddCertificate;
class PASCALIMPLEMENTATION TfrmAddCertificate : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
__published:
	Vcl::Stdctrls::TLabel* Label1;
	Vcl::Stdctrls::TEdit* edID;
	Vcl::Stdctrls::TButton* OKBtn;
	Vcl::Stdctrls::TButton* CancelBtn;
	Vcl::Stdctrls::TLabel* Label2;
	Vcl::Stdctrls::TLabel* Label3;
	Vcl::Stdctrls::TEdit* edKey;
	void __fastcall OKBtnClick(System::TObject* Sender);
	
private:
	Ibservices::TIBLicensingService* FIBLicensingService;
	
public:
	__property Ibservices::TIBLicensingService* LicensingService = {read=FIBLicensingService, write=FIBLicensingService};
public:
	/* TCustomForm.Create */ inline __fastcall virtual TfrmAddCertificate(System::Classes::TComponent* AOwner) : Vcl::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfrmAddCertificate(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TfrmAddCertificate(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TfrmAddCertificate(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Frmaddcertificateu */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FRMADDCERTIFICATEU)
using namespace Frmaddcertificateu;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// FrmaddcertificateuHPP
