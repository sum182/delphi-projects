//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <IPPeerClient.hpp>
#include <IPPeerServer.hpp>
#include <System.Actions.hpp>
#include <System.Tether.AppProfile.hpp>
#include <System.Tether.Manager.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ActnMan.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.PlatformDefaultStyleActnCtrls.hpp>
#include <Vcl.Imaging.jpeg.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TImage *Image1;
	TPanel *Panel1;
	TButton *Button1;
	TButton *Button2;
	TButton *Button3;
	TTetheringManager *DesktopTheterManager;
	TActionManager *ActionManager1;
	TAction *actFullShot;
	TAction *actStartCast;
	TAction *actStopCast;
	TTetheringAppProfile *TetheringAppProfile1;
	TTimer *tmCast;
	void __fastcall actFullShotExecute(TObject *Sender);
	void __fastcall actStartCastExecute(TObject *Sender);
	void __fastcall actStopCastExecute(TObject *Sender);
	void __fastcall tmCastTimer(TObject *Sender);
	void __fastcall DesktopTheterManagerRequestManagerPassword(const TObject *Sender,
          const UnicodeString RemoteIdentifier, UnicodeString &Password);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall FormDestroy(TObject *Sender);

private:	// User declaration
	TJPEGImage * Capture;
	TStream * LStream;
	void __fastcall ScreenShot(TBitmap * DestBitmap);
	void __fastcall Shot(void);
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
