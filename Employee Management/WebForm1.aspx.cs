using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Employee_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
           fetchdata();
        }
        public void fetchdata()
        {
            string conn = "";

            conn = ConfigurationManager.ConnectionStrings["DBCS"].ToString();
            SqlConnection objsqlconn = new SqlConnection(conn);
            SqlDataAdapter da = new SqlDataAdapter("select * from tblEmployee", objsqlconn);
            objsqlconn.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();


            objsqlconn.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string conn = "";

                conn = ConfigurationManager.ConnectionStrings["DBCS"].ToString();

                SqlConnection objsqlconn = new SqlConnection(conn);

                objsqlconn.Open();

                SqlCommand objcmd = new SqlCommand("Insert into tblEmployee(EmpNo,EmpName,DeptName,Address,Gender) Values('" + EmpnoTextbox1.Text + "','" + EmpnameTextbox2.Text + "','" + dropdownDepartment.SelectedValue + "','" + checkboxAddress.SelectedValue + "','" + radioGender.SelectedValue + "')", objsqlconn);
                
                objcmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {

            string conn = "";

            conn = ConfigurationManager.ConnectionStrings["DBCS"]
                .ToString();
            SqlConnection objsqlconn = new SqlConnection(conn);
            SqlDataAdapter da = new SqlDataAdapter("update  tblEmployee set EmpName= '"+ EmpnameTextbox2.Text + "',Gender='" + radioGender.SelectedValue + "'where EmpNo='" + EmpnoTextbox1.Text + "'", objsqlconn);
            objsqlconn.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
        }

        protected void ButtonDel_Click(object sender, EventArgs e )
        {
            string conn = "";

            conn = ConfigurationManager.ConnectionStrings["DBCS"].ToString();
            SqlConnection objsqlconn = new SqlConnection(conn);
             SqlDataAdapter da = new SqlDataAdapter("Delete from  tblEmployee where EmpNo='" + EmpnoTextbox1.Text + "'", objsqlconn);
           // SqlDataAdapter da = new SqlDataAdapter("Delete EmpNo from  tblEmployee EmpNo", objsqlconn);
            objsqlconn.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}




        //    SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=UserDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        //    SqlCommand cmd = new SqlCommand("INSERT into Table values(EmpNo,EmpName,DeptName,Gender,Address)",con);
        //    cmd.Connection = con;
        //    cmd.CommandType = CommandType.Text;
        //    cmd.Parameters.AddWithValue("@EmpNo", Convert.ToInt32(EmpnoTextbox1.Text));
        //    cmd.Parameters.AddWithValue("@EmpName", EmpnameTextbox2.Text);
        //    cmd.Parameters.AddWithValue("@DeptName", DropDownList1.SelectedValue);
        //    cmd.Parameters.AddWithValue("@Address", CheckBoxList1.SelectedValue);
        //    cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue);
        //    con.Open();
        //    try
        //    {
        //        cmd.ExecuteNonQuery();

        //        con.Close();
        //    }
        //    catch(Exception ex)
        //    {
        //        Console.WriteLine(ex.ToString());
        //    }
        //    EmpnoTextbox1.Text = "";
        //    EmpnameTextbox2.Text = "";
        //    DropDownList1.SelectedValue = "";
        //    RadioButtonList1.SelectedValue = "";
        //    CheckBoxList1.SelectedValue = "";

        //    lblmsg.Text = "Data Has been Saved";
        //}
//    }
//}
