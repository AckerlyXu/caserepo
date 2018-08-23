using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _struct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EntityExeEntities entityExeEntities = new EntityExeEntities();
            if (!Page.IsPostBack)
            {

                // ContactsTableAdapter
                int id = Convert.ToInt32((Request["id"] ?? "1"));
              List<Contact> ts=  entityExeEntities.Contacts.Where(c=>c.Id==id).ToList();
                contactDV.DataSource = ts;
                contactDV.DataBind();

                rowForGridService("serviceGV", "ObjectDataSource2", "currentTableService", new string[] { "Tag_servicesId", "ContactTypeId" });
            }
            else
            {

                int id = Convert.ToInt32((Request["id"] ?? "1"));
                List<Contact> ts = entityExeEntities.Contacts.Where(c => c.Id == id).ToList();
                contactDV.DataSource = ts;
                contactDV.DataBind();
               
            }


        }

        private void rowForGridService(string gv, string ods, string viewState, string[] col)
        {
            DataTable dt = new DataTable();
            DataTable dtNew = new DataTable();
            DataRow drCurrentRow = null;

            foreach (string oneCol in col)
            {
                dtNew.Columns.Add(new DataColumn(oneCol, typeof(string)));
            }

            GridView GV = (GridView)contactDV.FindControl(gv);
            ObjectDataSource ODS = (ObjectDataSource)contactDV.FindControl(ods);
            dt = ((DataView)ODS.Select()).ToTable();

            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    drCurrentRow = dtNew.NewRow();
                    foreach (string oneCol in col)
                    {
                        drCurrentRow[oneCol] = dt.Rows[i][oneCol];
                    }
                    dtNew.Rows.Add(drCurrentRow);
                }
            }

            ViewState[viewState] = dt;
            GV.DataSource = dt;
            GV.DataBind();
        }



       

        protected void serviceGV_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            GridView GV = (GridView)contactDV.FindControl("serviceGV");
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                DropDownList serviceDDL = (e.Row.FindControl("serviceDDL") as DropDownList);
                DropDownList typeDDL = (e.Row.FindControl("typeDDL") as DropDownList);
                string service = DataBinder.Eval(e.Row.DataItem, "Tag_servicesId").ToString();
                string type = DataBinder.Eval(e.Row.DataItem, "ContactTypeId").ToString();
                serviceDDL.Items.FindByValue(service).Selected = true;
                typeDDL.Items.FindByValue(type).Selected = true;

            }


        }

        protected void serviceGV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridView csGV = (GridView)contactDV.FindControl("serviceGV");
            setRowDataForGridCS();

            if (ViewState["currentTableService"] != null)
            {
                DataTable dt = (DataTable)ViewState["currentTableService"];
                DataRow drCurrentRow = null;
                int rowIndex = Convert.ToInt32(e.RowIndex);
                if (dt.Rows.Count > 1)
                {
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    drCurrentRow = dt.NewRow();
                    ViewState["currentTableService"] = dt;
                    csGV.DataSource = dt;
                    csGV.DataBind();
                    setPreviousDataForGrid();
                }
                else
                {
                    dt.Rows.Remove(dt.Rows[rowIndex]);
                    drCurrentRow = dt.NewRow();
                    dt.Rows.Add(drCurrentRow);
                    ViewState["currentTableService"] = dt;
                    csGV.DataSource = dt;
                    csGV.DataBind();
                }
            }
        }

        private void setPreviousDataForGrid()
        {
            try
            {
                GridView GV = (GridView)contactDV.FindControl("serviceGV");

                if (ViewState["currentTableService"] != null)
                {
                    DataTable dt = (DataTable)ViewState["currentTableService"];

                    if (dt.Rows.Count > 0)
                    {
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            DropDownList serviceDDL = (DropDownList)GV.Rows[i].Cells[0].FindControl("serviceDDL");
                            DropDownList typeDDL = (DropDownList)GV.Rows[i].Cells[1].FindControl("typeDDL");
                            serviceDDL.SelectedValue = dt.Rows[i][0].ToString();
                            typeDDL.SelectedValue = dt.Rows[i][1].ToString();
                        }
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void addService_Click(object sender, EventArgs e)
        {
            int rowIndex = 0;
            GridView GV = (GridView)contactDV.FindControl("serviceGV");

            if (ViewState["currentTableService"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["currentTableService"];
                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        drCurrentRow = dtCurrentTable.NewRow();

                        DropDownList serviceDDL = (DropDownList)GV.Rows[rowIndex].Cells[0].FindControl("serviceDDL");
                        DropDownList typeDDL = (DropDownList)GV.Rows[rowIndex].Cells[1].FindControl("typeDDL");
                        //TextBox serviceTxt = (TextBox)GV.Rows[rowIndex].Cells[0].FindControl("serviceTxt");
                        dtCurrentTable.Rows[i - 1]["Tag_servicesId"] = serviceDDL.SelectedValue;
                        dtCurrentTable.Rows[i - 1]["ContactTypeId"] = typeDDL.SelectedValue;
                        rowIndex++;
                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["currentTableService"] = dtCurrentTable;
                    GV.DataSource = dtCurrentTable;


                    GV.DataBind();



                }
            }
            setPreviousDataForGrid();
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            int idContact = int.Parse(Request.QueryString["id"]);



            using (EntityExeEntities context = new EntityExeEntities())
            {
                try
                {

                    ObjectDataSource1.UpdateParameters["firstName"].DefaultValue = ((TextBox)contactDV.FindControl("firstNameETB")).Text;

                    ObjectDataSource1.UpdateParameters["Original_id"].DefaultValue = Request.QueryString["id"];
                    ObjectDataSource1.Update();

                    Contact_Service contact_Service = context.Contact_Service.FirstOrDefault(cs => cs.ContactsId == idContact);
                    if (contact_Service != null)
                    {
                        context.Contact_Service.Remove(contact_Service);
                    }

                    //Ajouter les données dans la table contact_service
                    setRowDataForGridCS();
                    DataTable csTable = (DataTable)ViewState["currentTableService"];

                    for (int i = 0; i < csTable.Rows.Count; i++)
                    {
                        Contact_Service cs = new Contact_Service();
                        cs.ContactsId = idContact;
                        cs.Tag_servicesId = Int32.Parse(csTable.Rows[i][0].ToString());
                        cs.ContactTypeId = Int32.Parse(csTable.Rows[i][1].ToString());
                        context.Contact_Service.Add(cs);
                    }

                    context.SaveChanges();



                }
                catch (Exception ex)
                {

                }
            }
        }


        protected void contactODS_Updated(object sender, ObjectDataSourceStatusEventArgs e)
        {
            int idContact = int.Parse(Request.QueryString["id"]);
            using (EntityExeEntities context = new EntityExeEntities())
            {
                try
                {
                    Contact_Service contact_Service = context.Contact_Service.FirstOrDefault(cs => cs.ContactsId == idContact);
                    if (contact_Service != null)
                    {
                        context.Contact_Service.Remove(contact_Service);
                    }

                    //Ajouter les données dans la table contact_service
                    setRowDataForGridCS();
                    DataTable csTable = (DataTable)ViewState["currentTableService"];

                    for (int i = 0; i < csTable.Rows.Count; i++)
                    {
                        Contact_Service cs = new Contact_Service();
                        cs.ContactsId = idContact;
                        cs.Tag_servicesId = Int32.Parse(csTable.Rows[i][0].ToString());
                        cs.ContactTypeId = Int32.Parse(csTable.Rows[i][1].ToString());
                        context.Contact_Service.Add(cs);
                    }

                    context.SaveChanges();

                    GridView gv = (GridView)contactDV.FindControl("serviceGV");
                    ObjectDataSource ods = (ObjectDataSource)contactDV.FindControl("serviceODS");



                    //gv.DataSource = csTable;
                    //gv.DataBind();

                  
                }
                catch (Exception ex)
                { }
            }
        }

        private void setRowDataForGridCS()
        {
            GridView GV = (GridView)contactDV.FindControl("serviceGV");

            if (ViewState["currentTableService"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["currentTableService"];
                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 0; i < dtCurrentTable.Rows.Count; i++)
                    {
                        drCurrentRow = dtCurrentTable.NewRow();
                        DropDownList serviceDDL = (DropDownList)GV.Rows[i].Cells[0].FindControl("serviceDDL");
                        DropDownList typeDDL = (DropDownList)GV.Rows[i].Cells[1].FindControl("typeDDL");
                        dtCurrentTable.Rows[i][0] = serviceDDL.Text;
                        dtCurrentTable.Rows[i][1] = typeDDL.Text;

                    }
                    ViewState["currentTableService"] = dtCurrentTable;
                }
            }
        }

        protected void contactDV_DataBound(object sender, EventArgs e)
        {
            GridView gv = (GridView)contactDV.FindControl("serviceGV");
            if (gv.Rows.Count > 0)
            {
                var type = gv.Rows[0].RowType;
            }
            DataTable table = ViewState["currentTableService"] as DataTable;

            //GridView GV = (GridView)contactDV.FindControl("serviceGV");
            gv.DataSource = table;
            gv.DataBind();

        }

        protected void contactDV_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            var i = 1;
        }
    }  
}