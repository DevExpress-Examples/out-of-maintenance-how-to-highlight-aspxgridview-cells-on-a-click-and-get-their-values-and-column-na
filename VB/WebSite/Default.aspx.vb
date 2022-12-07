Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxGridView1_HtmlDataCellPrepared(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewTableDataCellEventArgs)
		Dim htmlId As String = String.Format("cell_{0}_{1}", e.VisibleIndex, e.DataColumn.FieldName)
		Dim cellClickHandler As String = String.Format("onCellClick(""{0}"", ""{1}"", ""{2}"")", e.DataColumn.FieldName, e.GetValue(e.DataColumn.FieldName), htmlId)
		e.Cell.Attributes.Add("onclick", cellClickHandler)
		e.Cell.Attributes.Add("id", htmlId)
	End Sub
End Class