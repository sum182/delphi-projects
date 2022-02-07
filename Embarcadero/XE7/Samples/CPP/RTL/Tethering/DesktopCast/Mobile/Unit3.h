//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.ActnList.hpp>
#include <FMX.Objects.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Types.hpp>
#include <IPPeerClient.hpp>
#include <IPPeerServer.hpp>
#include <System.Actions.hpp>
#include <System.Tether.AppProfile.hpp>
#include <System.Tether.Manager.hpp>
#include <FMX.MobilePreview.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TImage *Image1;
	TToolBar *ToolBar1;
	TLabel *lbStatus;
	TToolBar *ToolBar2;
	TLabel *Label1;
	TButton *Button2;
	TToolBar *ToolBar3;
	TButton *TakeShot;
	TButton *Button1;
	TButton *Button3;
	TTetheringManager *CommandManager;
	TTetheringAppProfile *CommandApp;
	TActionList *ActionList1;
	TAction *Action1;
	TAction *Action2;
	TAction *Action3;
	TTimer *tmCheckConnection;
	void __fastcall tmCheckConnectionTimer(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall CommandManagerRequestManagerPassword(const TObject *Sender, const UnicodeString RemoteIdentifier,
          UnicodeString &Password);
	void __fastcall CommandAppResources0ResourceReceived(const TObject *Sender, const TRemoteResource *AResource);
	void __fastcall CommandManagerEndManagersDiscovery(const TObject *Sender, const TTetheringManagerInfoList *RemoteManagers);
private:	// User declarations
	bool FIsConnected;
	void __fastcall CheckRemoteProfiles(void);
public:		// User declarations
	__fastcall TForm3(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif
