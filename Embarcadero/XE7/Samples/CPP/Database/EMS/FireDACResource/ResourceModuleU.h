// EMS Resource Modules
//---------------------------------------------------------------------------

#ifndef ResourceModuleUH
#define ResourceModuleUH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <EMS.Services.hpp>
#include <EMS.ResourceAPI.hpp>
#include <EMS.ResourceTypes.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.Comp.UI.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.SQLite.hpp>
#include <FireDAC.Phys.SQLiteDef.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.ExprFuncs.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.Stan.StorageJSON.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
//---------------------------------------------------------------------------
#pragma explicit_rtti methods (public)
class TResourceModule : public TDataModule
{
__published:
	TDataSource *dsOrders;
	TDataSource *dsCustomers;
	TFDQuery *qOrders;
	TFDQuery *qCustomers;
	TFDSchemaAdapter *FDSchemaAdapter1;
	TFDStanStorageJSONLink *FDStanStorageJSONLink1;
	TFDGUIxWaitCursor *FDGUIxWaitCursor1;
	TFDPhysSQLiteDriverLink *FDPhysSQLiteDriverLink1;
	TFDConnection *FDConnection1;
private:
public:
	__fastcall TResourceModule(TComponent* Owner);
	void Get(TEndpointContext* AContext, TEndpointRequest* ARequest, TEndpointResponse* AResponse);
	void Post(TEndpointContext* AContext, TEndpointRequest* ARequest, TEndpointResponse* AResponse);
};
#endif


