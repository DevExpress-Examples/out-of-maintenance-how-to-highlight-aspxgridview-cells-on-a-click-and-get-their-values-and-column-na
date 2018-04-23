using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxGridView1_HtmlDataCellPrepared(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewTableDataCellEventArgs e)
    {
        string htmlId = string.Format("cell_{0}_{1}", e.VisibleIndex, e.DataColumn.FieldName);
        string cellClickHandler = string.Format(@"onCellClick(""{0}"", ""{1}"", ""{2}"")", e.DataColumn.FieldName, e.GetValue(e.DataColumn.FieldName), htmlId);
        e.Cell.Attributes.Add("onclick", cellClickHandler);
        e.Cell.Attributes.Add("id", htmlId);
    }
}