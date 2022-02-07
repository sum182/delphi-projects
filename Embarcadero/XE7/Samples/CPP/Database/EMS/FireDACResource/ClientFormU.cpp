//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ClientFormU.h"
#include "ClientModuleU.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TClientForm *ClientForm;
//---------------------------------------------------------------------------
__fastcall TClientForm::TClientForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TClientForm::ActionGetTablesExecute(TObject *Sender)
{
	 EMSFireDACClient1->GetData();
}
//---------------------------------------------------------------------------

void __fastcall TClientForm::ActionGetTablesUpdate(TObject *Sender)
{
	//
}
//---------------------------------------------------------------------------

void __fastcall TClientForm::ActionPostUpdatesExecute(TObject *Sender)
{
	EMSFireDACClient1->PostUpdates();
}
//---------------------------------------------------------------------------

void __fastcall TClientForm::ActionPostUpdatesUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Enabled = EMSFireDACClient1->CanPostUpdates;
}
//---------------------------------------------------------------------------

