/// <summary>
/// Summary description for BootstrapChartDataItem
/// </summary>
public class BootstrapChartDataItem
{
    public BootstrapChartDataItem(string categoryName, decimal categorySales)
    {
        CategoryName = categoryName;
        CategorySales = categorySales;
    }

    public string CategoryName { get; set; }

    public decimal CategorySales { get; set; }
}