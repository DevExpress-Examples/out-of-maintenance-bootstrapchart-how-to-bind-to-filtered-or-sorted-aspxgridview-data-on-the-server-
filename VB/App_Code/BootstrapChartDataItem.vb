''' <summary>
''' Summary description for BootstrapChartDataItem
''' </summary>
Public Class BootstrapChartDataItem
    Public Sub New(ByVal categoryName As String, ByVal categorySales As Decimal)
        Me.CategoryName = categoryName
        Me.CategorySales = categorySales
    End Sub

    Public Property CategoryName() As String

    Public Property CategorySales() As Decimal
End Class