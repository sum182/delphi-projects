//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm5::FileOpen1Accept(TObject *Sender)
{
  TFrMDIChild *LChild;
  LChild = new TFrMDIChild( this );
  LChild->Visible = True;
  LChild->Image1->Picture->LoadFromFile(FileOpen1->Dialog->FileName);
}
//---------------------------------------------------------------------------
