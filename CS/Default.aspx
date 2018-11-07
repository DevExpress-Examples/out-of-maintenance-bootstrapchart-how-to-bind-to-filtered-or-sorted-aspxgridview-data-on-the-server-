<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var gridViewCommand;

        function onGridViewBeginCallback(s, e) {
            gridViewCommand = e.command;
        }

        function onGridViewEndCallback(s, e) {
            if ((gridViewCommand == "APPLYCOLUMNFILTER") || (gridViewCommand == "SORT"))
                ASPxCallbackPanel.PerformCallback(gridViewCommand);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT CategoryName, CategorySales FROM [Category Sales for 1997]" />
        <dx:ASPxGridView ID="ASPxGridView" runat="server" DataSourceID="sqlDataSource" OnDataBound="ASPxGridView_DataBound">
            <ClientSideEvents BeginCallback="onGridViewBeginCallback" EndCallback="onGridViewEndCallback" />
            <Settings ShowFilterRow="true" />
        </dx:ASPxGridView>
        <dx:ASPxCallbackPanel ID="ASPxCallbackPanel" runat="server" ClientInstanceName="ASPxCallbackPanel" OnCallback="ASPxCallbackPanel_Callback">
            <PanelCollection>
                <dx:PanelContent>
                    <dx:BootstrapChart ID="bootstrapChart" runat="server" TitleText="Category Sales for 1997">
                        <ValueAxisCollection>
                            <dx:BootstrapChartValueAxis ValueType="System.Decimal" />
                        </ValueAxisCollection>
                        <SettingsCommonAxis GridVisible="true" />
                        <SettingsLegend Visible="false" />
                        <SeriesCollection>
                            <dx:BootstrapChartBarSeries ArgumentField="CategoryName" ValueField="CategorySales" Name="CategorySales" />
                        </SeriesCollection>
                    </dx:BootstrapChart>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxCallbackPanel>
    </form>
</body>
</html>
