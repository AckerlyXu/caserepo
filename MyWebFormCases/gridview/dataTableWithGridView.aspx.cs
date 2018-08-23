using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace MyWebFormCases.gridview
{
    public partial class dataTableWithGridView : System.Web.UI.Page
    {
        SupplyModel supplyModel = new SupplyModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbl.DataSource = supplyModel.Suppliers.ToList();
                tbl.DataBind();
            }
           
        }

        protected void gvwBfbStructure_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int sid = (int)tbl.DataKeys[e.RowIndex].Value;
            supplyModel.Suppliers.Remove(supplyModel.Suppliers.Find(sid));
            supplyModel.SaveChanges();
            tbl.DataSource = supplyModel.Suppliers.ToList();
            tbl.DataBind();
        }

        protected void gvwBfbStructure_RowEditing(object sender, GridViewEditEventArgs e)
        {

            tbl.EditIndex = e.NewEditIndex;
            tbl.DataSource = supplyModel.Suppliers.ToList();
            tbl.DataBind();
        }

        protected void gvwBfbStructure_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int sid = (int)tbl.DataKeys[e.RowIndex].Value;
            string city = (tbl.Rows[e.RowIndex].FindControl("TextBox1") as TextBox).Text;
            string  name = (tbl.Rows[e.RowIndex].FindControl("TextBox2") as TextBox).Text;
           Supplier supplier= supplyModel.Suppliers.Find(sid);
            supplier.City = city;
            supplier.Name = name;
            supplyModel.SaveChanges();
            tbl.EditIndex = -1;
            tbl.DataSource = supplyModel.Suppliers.ToList();
            tbl.DataBind();
        }

        protected void gvwBfbStructure_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            tbl.EditIndex = -1;
            tbl.DataSource = supplyModel.Suppliers.ToList();
            tbl.DataBind();
        }
    }
    
}