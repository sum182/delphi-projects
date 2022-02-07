//---------------------------------------------------------------------------

// This software is Copyright (c) 2014 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

#include <fmx.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::CheckRemoteProfiles(void)
{
	String ConnectedProfiles = "";
	if(TetherBDTestManager->RemoteProfiles->Count > 0) {
		for(int i = 0; i < TetherBDTestManager->RemoteProfiles->Count; i++) {
			ConnectedProfiles += ConnectedProfiles + " - " +
				TetherBDTestManager->RemoteProfiles->Items[i].ProfileText;
		}
		Label2->Text = "Working with : " + ConnectedProfiles;
	}
	else {
        Label2->Text = "You are not connected";
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
	ListView1->Items->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::TetherBDTestManagerRequestManagerPassword(const TObject *Sender,
		  const UnicodeString RemoteIdentifier, UnicodeString &Password)
{
	Password = "TetherBDTest";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TetherBDTestManagerRemoteManagerShutdown(const TObject *Sender,
          const UnicodeString ManagerIdentifier)
{
	CheckRemoteProfiles();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TetherBDTestManagerEndAutoConnect(TObject *Sender)
{
	CheckRemoteProfiles();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TetherBDTestProfileResources0ResourceReceived(const TObject *Sender,
		  const TRemoteResource *AResource)
{
	TStringList * lStrings = NULL;
	ListView1->Items->Clear();
	if(AResource->Value.AsString != "NONE") {
		lStrings = new TStringList();
		try
		{
			lStrings->Delimiter = ':';
			lStrings->DelimitedText = AResource->Value.AsString;
			for(int i = 0; i < lStrings->Count; i++){
				TListViewItem * lItem = ListView1->Items->Add();
				TStringList * itemParts = new TStringList();
				try
                {
					itemParts->Delimiter = '-';
					itemParts->DelimitedText = lStrings->Strings[i];
					lItem->Text = itemParts->Strings[1];
					lItem->Detail = itemParts->Strings[0] + " (needs " + itemParts->Strings[2] + ")";
				}
				 __finally
				{
					delete itemParts;
				}
			}
		}
		 __finally
		{
			delete lStrings;
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
	TetherBDTestManager->AutoConnect();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ListView1ButtonClick(const TObject *Sender, const TListViewItem *AItem,
          const TListItemSimpleControl *AObject)
{
	TetherBDTestProfile->SendString(TetherBDTestManager->RemoteProfiles->Items[0],
		"Buy item", AItem->Text);
}
//---------------------------------------------------------------------------

