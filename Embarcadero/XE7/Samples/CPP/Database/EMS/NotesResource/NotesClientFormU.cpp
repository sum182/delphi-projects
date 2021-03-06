//---------------------------------------------------------------------------

#include <fmx.h>
#pragma hdrstop

#include "NotesClientFormU.h"
#include <FMX.VirtualKeyboard.hpp>
#include <FMX.Platform.hpp>
#include <System.Math.hpp>
#include <System.UITypes.hpp>
#include "NotesClientModuleU.h"
#include "NotesAdapterModuleU.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
TNotesClientForm *NotesClientForm;

const String sFieldNotFound = "Field not found.";

//---------------------------------------------------------------------------
__fastcall TNotesClientForm::TNotesClientForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::FormCreate(TObject *Sender)
{
	_di_IFMXVirtualKeyboardToolbarService FService;
	ShowView(TView::Login);
	TabControl1->TabPosition = TTabPosition::None;
	LayoutLogout->Visible = false;
	if (TPlatformServices::Current->SupportsPlatformService(__uuidof(IFMXVirtualKeyboardToolbarService)) &&
		(FService = TPlatformServices::Current->GetPlatformService(__uuidof(IFMXVirtualKeyboardToolbarService)))) {
		FService->SetToolbarEnabled(false);
		FService->SetHideKeyboardButtonVisibility(false);
	}
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::ShowView(TView AView)
{
	switch(AView) {
		case List :
			this->TabControl1->ActiveTab = TabItemList;
			break;
		case Details :
			this->TabControl1->ActiveTab = TabItemDetails;
			break;
		case Add :
			this->TabControl1->ActiveTab = TabItemAdd;
			break;
		case TView::Edit :
			this->TabControl1->ActiveTab = TabItemEdit;
			break;
		case Login :
			this->TabControl1->ActiveTab = TabItemLogin;
			break;
		default :
			throw new System::Sysutils::Exception("Unexpected");
	}
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::FormVirtualKeyboardHidden(TObject *Sender,
	bool KeyboardVisible, const TRect &Bounds)
{
	TabControl1->Align = TAlignLayout::Client;
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::FormVirtualKeyboardShown(TObject *Sender,
	bool KeyboardVisible, const TRect &Bounds)
{
	TabControl1->Align = TAlignLayout::Horizontal;
	TabControl1->Height = LayoutTabControl->Height - Bounds.Height();
}
//---------------------------------------------------------------------------
TView __fastcall TNotesClientForm::CurrentView(void)
{
	if(TabControl1->ActiveTab == TabItemAdd)
		return TView::Add;
	else if (TabControl1->ActiveTab == TabItemList)
		return TView::List;
	else if (TabControl1->ActiveTab == TabItemEdit)
		return TView::Edit;
	else if (TabControl1->ActiveTab == TabItemDetails)
		return TView::Details;
	else if (TabControl1->ActiveTab == TabItemLogin)
		return TView::Login;
	else
		throw new System::Sysutils::Exception("Unexpected");
}
//---------------------------------------------------------------------------
TBindSourceAdapterField* __fastcall TNotesClientForm::GetTitleField(void)
{
	TBindSourceAdapterField * _return = GetAdapter()->FindField("Title");
	if(_return == NULL) {
		throw new System::Sysutils::Exception(sFieldNotFound);
	}
	return _return;
}
//---------------------------------------------------------------------------
TBindSourceAdapterField* __fastcall TNotesClientForm::GetContentField(void)
{
 	TBindSourceAdapterField * _return = GetAdapter()->FindField("Content");
	if(_return == NULL) {
		throw new System::Sysutils::Exception(sFieldNotFound);
	}
	return _return;
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::PopView(void)
{
	if(FViewStack.size() > 0) {
        ShowView(FViewStack.top());
    }
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::PushView(const TView & AView)
{
	FViewStack.push(CurrentView());
	ShowView(AView);
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::ShowNavigation(TAction * AAction)
{
	switch(CurrentView()) {
		case TView::Details :
			AAction->Visible = true;
		default :
			AAction->Visible = false;
	}
}
//---------------------------------------------------------------------------
TBindSourceAdapter* __fastcall TNotesClientForm::GetAdapter(void)
{
	return this->BindSource1->InternalAdapter;
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::UpdateLoginPage(void)
{
	if (NotesClientModule->LoggedIn) {
		LayoutLogout->Visible = true;
		LayoutUserName->Visible = false;
		LabelUserName->Text = NotesClientModule->LoggedInUserName;
	}
	else {
		LayoutUserName->Visible = true;
		LayoutLogout->Visible = false;
    }
}
//----------------------------------------------------------------------------
void __fastcall TNotesClientForm::ActionAddExecute(TObject *Sender)
{
	PushView(TView::Add);
	GetAdapter()->Append();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionAddUpdate(TObject *Sender)
{
  switch(CurrentView()) {
	case TView::List:
		static_cast<TAction*>(Sender)->Visible = true;
	default :
		static_cast<TAction*>(Sender)->Visible = false;
  }
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionAddSaveExecute(TObject *Sender)
{
	GetAdapter()->Post();
	MessageDlg(String().sprintf(L"\"%s\" saved", GetTitleField()->GetTValue().ToString()),
		TMsgDlgType::mtInformation, TMsgDlgButtons() << TMsgDlgBtn::mbOK, 0 );
	PopView();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionAddSaveUpdate(TObject *Sender)
{
	  static_cast<TAction*>(Sender)->Visible = (CurrentView() == TView::Add);
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionAddCancelExecute(TObject *Sender)
{
	PopView();
	GetAdapter()->Delete();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionAddCancelUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Visible = (CurrentView() == TView::Add);
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionEditSaveExecute(TObject *Sender)
{
  FBindSourceAdapter->Post();
  MessageDlg(String().sprintf(L"\"%s\" saved", GetTitleField()->GetTValue().ToString()),
	TMsgDlgType::mtInformation, TMsgDlgButtons() << TMsgDlgBtn::mbOK, 0);
  PopView();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionEditSaveUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Visible = (CurrentView() == TView::Edit);
	static_cast<TAction*>(Sender)->Enabled = GetAdapter()->Modified;
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionEditCancelExecute(TObject *Sender)
{
  if ((!FBindSourceAdapter->Modified) ||
	(MessageDlg("Cancel changes?", TMsgDlgType::mtConfirmation, mbOKCancel, 0) != mrCancel)) {
	FBindSourceAdapter->Cancel();
	PopView();
  }
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionEditCancelUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Visible = (CurrentView() == TView::Edit);
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionEditExecute(TObject *Sender)
{
	PushView(TView::Edit);
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionEditUpdate(TObject *Sender)
{
	switch(CurrentView()) {
		case TView::Details:
		  static_cast<TAction*>(Sender)->Visible = true;
		  break;
		default :
		  static_cast<TAction*>(Sender)->Visible = false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionBackExecute(TObject *Sender)
{
	if(CurrentView() == TView::List) {
		ShowView(TView::Login);
	}
	else if(FViewStack.size() > 0) {
			PopView();
	}
	else {
        ShowView(TView::List);
    }
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionBackUpdate(TObject *Sender)
{
	switch(CurrentView()){
		case TView::List :
			static_cast<TAction*>(Sender)->Text = "Login";
			static_cast<TAction*>(Sender)->Visible = true;
			break;
		case TView::Details :
			static_cast<TAction*>(Sender)->Text = "List";
			static_cast<TAction*>(Sender)->Visible = true;
			break;
		default :
			static_cast<TAction*>(Sender)->Visible = false;
	}
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::ActionDeleteExecute(TObject *Sender)
{
	String lTitle = GetTitleField()->GetTValue().ToString();
	if(MessageDlg(String().sprintf(L"Delete \"%s\"?", lTitle.c_str()),
		TMsgDlgType::mtConfirmation, mbOKCancel, 0) != mrCancel) {
		FBindSourceAdapter->Delete();
		if(FBindSourceAdapter->ItemIndex == -1) {
			// No more records
			ShowView(TView::List);
        }
    }
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::ActionDeleteUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Visible = (CurrentView() == TView::Details);
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::ActionLabelExecute(TObject *Sender)
{
//
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionLabelUpdate(TObject *Sender)
{
	switch(CurrentView()) {
		case TView::List :
			static_cast<TAction*>(Sender)->Text = "Notes";
			break;
		case TView::Details :
			static_cast<TAction*>(Sender)->Text = "Note";
			break;
		case TView::Add :
			static_cast<TAction*>(Sender)->Text = "Add Note";
			break;
		case TView::Edit :
			static_cast<TAction*>(Sender)->Text = "Edit Note";
			break;
		case TView::Login :
			static_cast<TAction*>(Sender)->Text = "Login";
			break;
    }
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionRefreshExecute(TObject *Sender)
{
	NotesAdapterModule->RefreshAdapter();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionNextExecute(TObject *Sender)
{
	BindSource1->Next();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionNextUpdate(TObject *Sender)
{
	TAction * act = static_cast<TAction*>(Sender);
	ShowNavigation(act);
	if(act->Visible) {
		act->Enabled = !BindSource1->Eof;
	}
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionPriorExecute(TObject *Sender)
{
	BindSource1->Prior();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionPriorUpdate(TObject *Sender)
{
	TAction * act = static_cast<TAction*>(Sender);
	ShowNavigation(act);
	if(act->Visible) {
		act->Enabled = !BindSource1->BOF;
	}
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionLoginExecute(TObject *Sender)
{
	NotesClientModule->Login(EditUserName->Text, EditPassword->Text);
	UpdateLoginPage();
	ListView1->Items->Clear();
	PushView(TView::List);
	NotesAdapterModule->RefreshAdapter();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionLoginUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Enabled = !NotesClientModule->BackendAuth1->LoggedIn;
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionLogoutExecute(TObject *Sender)
{
	NotesClientModule->BackendAuth1->Logout();
	UpdateLoginPage();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionLogoutUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Enabled = NotesClientModule->BackendAuth1->LoggedIn;
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::ActionSignupExecute(TObject *Sender)
{
	NotesClientModule->Signup(EditUserName->Text, EditPassword->Text);
	UpdateLoginPage();
	ListView1->Items->Clear();
	PushView(TView::List);
	NotesAdapterModule->RefreshAdapter();
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionSignupUpdate(TObject *Sender)
{
	static_cast<TAction*>(Sender)->Enabled = !NotesClientModule->BackendAuth1->LoggedIn;
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::ActionForwardExecute(TObject *Sender)
{
	ShowView(TView::List);
}
//---------------------------------------------------------------------------
void __fastcall TNotesClientForm::ActionForwardUpdate(TObject *Sender)
{
	TAction * act = static_cast<TAction*>(Sender);
	act->Visible = (CurrentView() == TView::Login) && NotesClientModule->LoggedIn;
	if (act->Visible) {
		act->Text = "List";
	}
}
//---------------------------------------------------------------------------

void __fastcall TNotesClientForm::BindSource1CreateAdapter(TObject *Sender,
	TBindSourceAdapter *&ABindSourceAdapter)
{
	if(FBindSourceAdapter == NULL) {
		FBindSourceAdapter = BindSource1->InternalAdapter;
	}
/*
  Assert(FBindSourceAdapter = nil);
  FBindSourceAdapter := BindSource1.InternalAdapter;
{$IFDEF SAMPLEDATA}
  FBindSourceAdapter := LoadRecipesSampleData;
  ABindSourceAdapter := FBindSourceAdapter;
{$ELSE}
{$IFDEF CLOUDDATA}
  FBindSourceAdapter := NotesAdapterModule.BindSourceAdapter;
  ABindSourceAdapter := FBindSourceAdapter;
{$ENDIF}
{$ENDIF}
*/
}
//---------------------------------------------------------------------------

