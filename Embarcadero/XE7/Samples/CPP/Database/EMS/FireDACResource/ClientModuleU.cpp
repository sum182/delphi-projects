//---------------------------------------------------------------------------


#pragma hdrstop

#include "ClientModuleU.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma resource "*.dfm"
TClientModule *ClientModule;
//---------------------------------------------------------------------------
__fastcall TClientModule::TClientModule(TComponent* Owner)
	: TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
