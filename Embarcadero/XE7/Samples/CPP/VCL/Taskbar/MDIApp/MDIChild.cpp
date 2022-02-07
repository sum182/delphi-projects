//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MDIChild.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFrMDIChild *FrMDIChild;
//---------------------------------------------------------------------------
__fastcall TFrMDIChild::TFrMDIChild(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFrMDIChild::FormClose(TObject *Sender, TCloseAction &Action)
{
  Action = caFree;
}
//---------------------------------------------------------------------------
