using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace HospitalManagement
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                string s = "select username from users where username='" + txtUserName.Text + "' and Password='" + txtPassword.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "users");
                if (ds.Tables[0].Rows.Count != 0)
                {
                    Session["username"] = txtUserName.Text;
                    string Access = txtUserName.Text;
                    if (Access == "Administrator" || Access == "Jacob")
                    {
                        FormsAuthentication.SetAuthCookie(this.txtUserName.Text.Trim(), false);                       //Create non-persistent authentication cookie.
                        HttpCookie administratorCookie = new HttpCookie("administratorCookie", "true");
                        Response.Cookies.Add(administratorCookie);
                        Response.Redirect("/Administrator.aspx");
                    }
                    else if (Access == "Patient" || Access == "John")
                    {
                        FormsAuthentication.SetAuthCookie(this.txtUserName.Text.Trim(), false);                       //Create non-persistent authentication cookie.
                        HttpCookie patientCookie = new HttpCookie("patientCookie", "true");
                        Response.Cookies.Add(patientCookie);
                        Response.Redirect("/Patient.aspx");
                    }

                    else if (Access == "Physician" || Access == "Jeremy")
                    {
                        FormsAuthentication.SetAuthCookie(this.txtUserName.Text.Trim(), false);                       //Create non-persistent authentication cookie.
                        HttpCookie physicianCookie = new HttpCookie("physicianCookie", "true");
                        Response.Cookies.Add(physicianCookie);
                        Response.Redirect("/Physician.aspx");
                    }
                    else if (Access == "Staff" || Access == "Jill")
                    {
                        FormsAuthentication.SetAuthCookie(this.txtUserName.Text.Trim(), false);                       //Create non-persistent authentication cookie.
                        HttpCookie staffCookie = new HttpCookie("staffCookie", "true");
                        Response.Cookies.Add(staffCookie);
                        Response.Redirect("/Staff.aspx");
                    }
                    else if (Access == "Nurse" || Access == "Janet")
                    {
                        FormsAuthentication.SetAuthCookie(this.txtUserName.Text.Trim(), false);                       //Create non-persistent authentication cookie.
                        HttpCookie staffCookie = new HttpCookie("nurseCookie", "true");
                        Response.Cookies.Add(staffCookie);
                        Response.Redirect("/Nurse.aspx");
                    }
                }
                else
                {
                    //FailureText.Text = "Invalid UserName & Password";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "alert('Invalid UserName & Password.');", true);
                    txtUserName.Text = "";
                    txtUserName.Text = "";
                }
            }
            catch (Exception)
            {
            }
        }
    }
}