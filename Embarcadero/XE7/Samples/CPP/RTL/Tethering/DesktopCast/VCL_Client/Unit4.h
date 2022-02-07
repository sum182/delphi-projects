//---------------------------------------------------------------------------

#ifndef Unit4H
#define Unit4H
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
#include <Vcl.Imaging.Jpeg.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TImage *Image1;
	TPanel *Panel1;
	TLabel *Label1;
	TButton *Button1;
	TButton *Button2;
	TButton *Button3;
	TButton *Button4;
	TTetheringManager *DesktopTheterManager;
	TActionManager *ActionManager1;
	TAction *actFullShot;
	TAction *actStartCast;
	TAction *actStopCast;
	TTetheringAppProfile *TetheringAppProfile1;
	TTimer *tmCheckConnection;
	void __fastcall DesktopTheterManagerEndAutoConnect(TObject *Sender);
	void __fastcall DesktopTheterManagerRequestManagerPassword(const TObject *Sender,
          const UnicodeString RemoteIdentifier, UnicodeString &Password);
	void __fastcall tmCheckConnectionTimer(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
	void __fastcall TetheringAppProfile1Resources0ResourceReceived(const TObject *Sender,
          const TRemoteResource *AResource);


private:	// User declarations
	bool FIsConnected;
	void __fastcall CheckRemoteProfiles(void);
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
