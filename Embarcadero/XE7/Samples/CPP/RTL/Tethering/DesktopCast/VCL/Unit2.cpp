// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include <memory>
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;

// ---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner) : TForm(Owner) {
}

// ---------------------------------------------------------------------------
void __fastcall TForm2::ScreenShot(TBitmap * DestBitmap) {
	HDC DC = GetDC(GetDesktopWindow());
	try {
		DestBitmap->Width = GetDeviceCaps(DC, HORZRES);
		DestBitmap->Height = GetDeviceCaps(DC, VERTRES);
		BitBlt(DestBitmap->Canvas->Handle, 0, 0, DestBitmap->Width,
			DestBitmap->Height, DC, 0, 0, SRCCOPY);
	}
	__finally {
		ReleaseDC(GetDesktopWindow(), DC);
	}
}

// ---------------------------------------------------------------------------
void __fastcall TForm2::Shot(void) {
	 std::unique_ptr<TBitmap> LCapture(new TBitmap());
	 ScreenShot(LCapture.get());
	 Capture->Assign(LCapture.get());
	 Image1->Picture->Bitmap->Assign(LCapture.get());
}

// ---------------------------------------------------------------------------
void __fastcall TForm2::actFullShotExecute(TObject *Sender) {
	this->Shot();
	if (LStream == NULL) {
		LStream = new TMemoryStream();
	}
	LStream->Position = 0;
	Capture->SaveToStream(LStream);
	LStream->Position = 0;
	TetheringAppProfile1->Resources->Items[0]->Value = TResourceValue::_op_Implicit(LStream);
}

// ---------------------------------------------------------------------------
void __fastcall TForm2::actStartCastExecute(TObject *Sender) {
	tmCast->Enabled = true;
}
// ---------------------------------------------------------------------------

void __fastcall TForm2::actStopCastExecute(TObject *Sender) {
	tmCast->Enabled = false;
}
// ---------------------------------------------------------------------------
void __fastcall TForm2::tmCastTimer(TObject *Sender)
{
	actFullShot->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::DesktopTheterManagerRequestManagerPassword(const TObject *Sender,
		  const UnicodeString RemoteIdentifier, UnicodeString &Password)
{
	Password = "Desktop";
}
//---------------------------------------------------------------------------



void __fastcall TForm2::FormCreate(TObject *Sender)
{
	Capture = new TJPEGImage();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::FormDestroy(TObject *Sender)
{
	Capture->Free();
}
//---------------------------------------------------------------------------

