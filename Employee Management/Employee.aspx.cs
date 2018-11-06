using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using Npgsql;

namespace Employee_Management
{
    public partial class Employee : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



           
                    try
                    {
                        string conn = "";

                        conn = ConfigurationManager.ConnectionStrings["Conn"].ToString();

                        NpgsqlConnection objNpgsqlconn = new NpgsqlConnection(conn);

                        objNpgsqlconn.Open();

                        NpgsqlCommand objcmd = new NpgsqlCommand("Insert into InsertEmp(EmpNo,EmpName,DeptName,Address,Gender) Values('" + EmpnoTextbox1.Text + "','" + EmpnameTextbox2.Text + "','" + DropDownList1.SelectedValue + "','" + CheckBoxList1.SelectedValue + "','" + RadioButtonList1.SelectedValue + "')", objNpgsqlconn);

                        objcmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.ToString());
                    }

                    //cmd.Connection = connection;
                    //cmd.CommandText = "INSERT INTO public.InsertEmp" +
                    //    " values (@EmpNo,@EmpName,@DeptName,@Address,@Gender)";
                    //cmd.CommandType = CommandType.Text;
                    //cmd.Parameters.Add(new NpgsqlParameter("@EmpNo", Convert.ToInt32(EmpnoTextbox1.Text)));
                    //cmd.Parameters.Add(new NpgsqlParameter("@EmpName", (EmpnameTextbox2.Text)));
                    //cmd.Parameters.Add(new NpgsqlParameter("@DeptName", DropDownList1.SelectedValue));
                    //cmd.Parameters.Add(new NpgsqlParameter("@Address", CheckBoxList1.SelectedValue));
                    //cmd.Parameters.Add(new NpgsqlParameter("@Gender", RadioButtonList1.SelectedValue));


                    //cmd.ExecuteNonQuery();
                    //cmd.Dispose();



                    //connection.Close();
                    //EmpnoTextbox1.Text = "";
                    //EmpnameTextbox2.Text = "";
                    //DropDownList1.SelectedValue = "";
                    //RadioButtonList1.SelectedValue = "";
                    //CheckBoxList1.SelectedValue = "";


                }

                



            }

        }
    

        


