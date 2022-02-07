//---------------------------------------------------------------------------

#ifndef MDIChildH
#define MDIChildH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <System.Win.TaskbarCore.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Taskbar.hpp>
//---------------------------------------------------------------------------
class TFrMDIChild : public TForm
{
__published:	// IDE-managed Components
	TImage *Image1;
	TTaskbar *Taskbar1;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TFrMDIChild(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrMDIChild *FrMDIChild;
//---------------------------------------------------------------------------
#endif
