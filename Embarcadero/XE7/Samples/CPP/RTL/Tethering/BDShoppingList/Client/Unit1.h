//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <Data.Bind.Components.hpp>
#include <Data.Bind.EngExt.hpp>
#include <Data.Bind.GenData.hpp>
#include <Data.Bind.ObjectScope.hpp>
#include <Fmx.Bind.DBEngExt.hpp>
#include <Fmx.Bind.Editors.hpp>
#include <Fmx.Bind.GenData.hpp>
#include <FMX.ListView.hpp>
#include <FMX.ListView.Types.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Types.hpp>
#include <IPPeerClient.hpp>
#include <IPPeerServer.hpp>
#include <System.Bindings.Outputs.hpp>
#include <System.Rtti.hpp>
#include <System.Tether.AppProfile.hpp>
#include <System.Tether.Manager.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TListView *ListView1;
	TLabel *Label1;
	TLabel *Label2;
	TButton *Button1;
	TTetheringManager *TetherBDTestManager;
	TTetheringAppProfile *TetherBDTestProfile;
	TPrototypeBindSource *PrototypeBindSource1;
	TBindingsList *BindingsList1;
	TLinkFillControlToField *LinkFillControlToFieldColorsName1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall TetherBDTestManagerRequestManagerPassword(const TObject *Sender,
          const UnicodeString RemoteIdentifier, UnicodeString &Password);
	void __fastcall TetherBDTestManagerRemoteManagerShutdown(const TObject *Sender,
          const UnicodeString ManagerIdentifier);
	void __fastcall TetherBDTestManagerEndAutoConnect(TObject *Sender);
	void __fastcall TetherBDTestProfileResources0ResourceReceived(const TObject *Sender,
          const TRemoteResource *AResource);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall ListView1ButtonClick(const TObject *Sender, const TListViewItem *AItem,
          const TListItemSimpleControl *AObject);

private:	// User declarations
	void __fastcall CheckRemoteProfiles(void);
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
