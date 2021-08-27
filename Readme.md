<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128548970/17.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T556711)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [BootstrapChartDataItem.cs](./CS/App_Code/BootstrapChartDataItem.cs) (VB: [BootstrapChartDataItem.vb](./VB/App_Code/BootstrapChartDataItem.vb))
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# BootstrapChart - How to bind to filtered or sorted ASPxGridView data on the server side at runtime
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t556711/)**
<!-- run online end -->


This example demonstrates how to show filtered or sorted <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridView.members">ASPxGridView</a> data in <a href="https://documentation.devexpress.com/AspNetBootstrap/DevExpress.Web.Bootstrap.BootstrapChart.members">BootstrapChart</a> on a callback at runtime by using server side data binding.<br><br>In page markup, enable ASPxGridView’s <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridViewSettings.ShowFilterRow.property">ShowFilterRow</a> property to show <a href="https://documentation.devexpress.com/AspNet/3753/ASP-NET-WebForms-Controls/Grid-View/Concepts/Data-Shaping-and-Manipulation/Filtering/Filter-Row">FilterRow</a> in it. Handle the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxDataWebControlBase.DataBound.event">DataBound</a> event on the first page load to bind BootstrapChart data to ASPxGridView data. Use the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridView.VisibleRowCount.property">VisibleRowCount</a> property to determine what ASPxGridView data is not filtered. Set the <a href="https://documentation.devexpress.com/AspNetBootstrap/DevExpress.Web.Bootstrap.BootstrapChartValueAxis.ValueType.property">ValueType</a> property of the <a href="https://documentation.devexpress.com/AspNetBootstrap/DevExpress.Web.Bootstrap.BootstrapChartValueAxis.members">ValueAxisCollection.BootstrapChartValueAxis</a> settings to enable sorting of against BootstrapChart's ValueAxis values.<br><br>Handle the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.Scripts.ASPxClientGridView.members">ASPxClientGridView</a>.<a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.Scripts.ASPxClientGridView.BeginCallback.event">BeginCallback</a> event to save the callback command name in the javascript variable. Then handle ASPxClientGridView's <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.Scripts.ASPxClientGridView.EndCallback.event">EndCallback</a> to check the callback command name and perform a callback if the condition is satisfied (the command name is "APPLYCOLUMNFILTER" or "SORT").<br><br>Put the BootstrapChart to <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxCallbackPanel.members">ASPxCallbackPanel</a> to update its data source on the server side after a callback. Then, handle ASPxCallbackPanel's <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxCallbackPanel.Callback.event">Callback</a> event to get the filtered or sorted ASPxGridView data, convert it to BootstrapChart's data format and bind to BootstrapChart on the server side on a callback.<br><br>

<br/>


