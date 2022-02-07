//---------------------------------------------------------------------------

#ifndef MediaPlayerVCLCommandFormH
#define MediaPlayerVCLCommandFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <IPPeerClient.hpp>
#include <IPPeerServer.hpp>
#include <System.Tether.AppProfile.hpp>
#include <System.Tether.Manager.hpp>
#include <Vcl.ComCtrls.hpp>
#include <System.SysUtils.hpp>
//---------------------------------------------------------------------------
class TForm9 : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TListBox *LbPlayers;
	TButton *Button1;
	TButton *Button2;
	TTrackBar *VolumeTrack;
	TTetheringManager *VCLCommandManager;
	TTetheringAppProfile *VCLCommandApp;
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall VolumeTrackChange(TObject *Sender);
	void __fastcall VCLCommandManagerEndManagersDiscovery(const TObject *Sender, const TTetheringManagerInfoList *RemoteManagers);
	void __fastcall VCLCommandManagerEndProfilesDiscovery(const TObject *Sender, const TTetheringProfileInfoList *RemoteProfiles);
	void __fastcall VCLCommandManagerRequestManagerPassword(const TObject *Sender, const UnicodeString RemoteIdentifier,
          UnicodeString &Password);
private:	// User declarations
	TFormatSettings  FInvariantFormatSettings;
	bool __fastcall CheckMediaPlayers(void);
public:		// User declarations
	__fastcall TForm9(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm9 *Form9;
//---------------------------------------------------------------------------
#endif
