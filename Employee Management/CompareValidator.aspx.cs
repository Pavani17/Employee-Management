using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Management
{
    public partial class CompareValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                lblmsg.Text = "Data saved";
                lblmsg.ForeColor = System.Drawing.Color.DarkOrange;
            }
            else
            {
                lblmsg.Text = " validation failed and Data not saved";
                lblmsg.ForeColor = System.Drawing.Color.DarkSeaGreen;
            }
        }
    }
}