using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected BootstrapChartDataItem[] GetBootstrapChartData()
    {
        DataRow gridDataRow;
        BootstrapChartDataItem[] BootstrapChartDataItems = new BootstrapChartDataItem[ASPxGridView.VisibleRowCount];

        for (int i = 0; i < ASPxGridView.VisibleRowCount; i++)
        {
            gridDataRow = (ASPxGridView.GetRow(i) as DataRowView).Row;
            BootstrapChartDataItems[i] = new BootstrapChartDataItem(gridDataRow.Field<string>("CategoryName"), gridDataRow.Field<decimal>("CategorySales"));
        }

        return BootstrapChartDataItems;
    }

    protected void ASPxGridView_DataBound(object sender, System.EventArgs e)
    {
        if (!IsPostBack)
        {
            bootstrapChart.DataSource = GetBootstrapChartData();
            bootstrapChart.DataBind();
        }
    }

    protected void ASPxCallbackPanel_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
    {
        bootstrapChart.DataSource = GetBootstrapChartData();
        bootstrapChart.DataBind();
    }
}