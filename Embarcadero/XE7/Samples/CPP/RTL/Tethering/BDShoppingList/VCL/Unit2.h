//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <IPPeerClient.hpp>
#include <IPPeerServer.hpp>
#include <System.Tether.AppProfile.hpp>
#include <System.Tether.Manager.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TDBGrid *DBGrid1;
	TDBEdit *DBEdit1;
	TDBEdit *DBEdit2;
	TDBEdit *DBEdit3;
	TDBEdit *DBEdit4;
	TDBNavigator *DBNavigator1;
	TClientDataSet *CDSProducts;
	TAutoIncField *CDSProductsCode;
	TStringField *CDSProductsProductName;
	TIntegerField *CDSProductsStock;
	TIntegerField *CDSProductsMinimalStock;
	TTetheringManager *TetherBDTest;
	TTetheringAppProfile *TetherBDTestProfile;
	TDataSource *DsProducts;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall CDSProductsAfterPost(TDataSet *DataSet);
	void __fastcall TetherBDTestProfileResources0ResourceReceived(const TObject *Sender,
		  const TRemoteResource *AResource);
private:	// User declarations
	void __fastcall CreateShoppingList(void);
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
