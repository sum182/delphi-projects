//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;
//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm4::Panel1DblClick(TObject *Sender)
{

  if (OpenDialog1->Execute()) {
	MediaPlayer1->FileName = OpenDialog1->FileName;
	MediaPlayer1->Open();
  }

}
//---------------------------------------------------------------------------
void __fastcall TForm4::Taskbar1ThumbButtonClick(TObject *Sender, int AButtonID)
{
	switch (AButtonID) {
		case 0: MediaPlayer1->Play(); break;
		case 1: MediaPlayer1->Pause(); break;
	}
}
//---------------------------------------------------------------------------
