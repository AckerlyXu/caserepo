using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class TreeViewShowFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  TreeView1.Nodes
        
            if (!IsPostBack)
            {                           //get the root path of your directory
                LoadData(TreeView1.Nodes, @"D:\clientSideResource");
                TreeView1.CollapseAll();
            }
           
        }

        private void LoadData(TreeNodeCollection collection,string filePath)
        {
            if (File.Exists(filePath))
            {
                collection.Add(new TreeNode(Path.GetFileNameWithoutExtension(filePath)));
             
            }
            else
            {
                
                TreeNode node=new TreeNode(Path.GetFileNameWithoutExtension(filePath));
                //add the current node
                collection.Add(node);

                //get all the directory in the current directory   use the orderbydescending method to  have descending data.
                foreach (var item in Directory.GetDirectories(filePath).OrderByDescending(d=>d))
                {
                    // recursively  load data with current node's childnodes collection and the directory name
                    //which is being iterated    as the parameter of the method.
                    LoadData(node.ChildNodes, item);
                    
                }
                //get all the file in the current directory        use the orderbydescending method to  have descending data.
                foreach (var item in Directory.GetFiles(filePath).OrderByDescending(f => f))
                {
                    // add all the filename to the childNodes of current nodes
                    node.ChildNodes.Add(new TreeNode(Path.GetFileNameWithoutExtension(item)));
                }
            }
        }
    }
}