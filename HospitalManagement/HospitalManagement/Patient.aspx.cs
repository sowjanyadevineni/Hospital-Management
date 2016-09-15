using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace HospitalManagement
{
    public partial class Patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblWelcomeName.Text = Convert.ToString(Session["username"]);
                MultiViewSpecialist.ActiveViewIndex = 0;
            }

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                MultiViewSpecialist.ActiveViewIndex = RadioButtonList1.SelectedIndex;
            }
            catch (Exception)
            {
            }
        }

        protected void imgLogout_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                Response.Redirect("Login.aspx");
            }
            catch (Exception)
            {
            }
        }
        protected void schedule(string physician_name, string specialty, DateTime app_date, string patient_name, string patient_email)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                string s = "insert into appointment(physician_name,specialty,app_date,patient_name,patient_email) values ('" + physician_name + "','" + specialty + "','" + app_date + "','" + patient_name + "','" + patient_email + "')";
                SqlCommand cmd = new SqlCommand(s, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "alert('Appoinment Scheduled Successfully');", true);
               // clear();
                txtPname.Text = string.Empty;
                txtemail.Text = string.Empty;
            }
            catch (Exception ex)
            {
                lblDisplay.Text = ex.Message;

            }
        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = lbl2.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate2.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = lbl1.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate =Convert.ToDateTime(txtDate1.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);

        }

        protected void Image3_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label3.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate3.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image4_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label4.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate4.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image5_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label5.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate5.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image6_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label6.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate6.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image7_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label7.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate7.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image8_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label8.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate8.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image9_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label9.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate9.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image9_Click1(object sender, ImageClickEventArgs e)
        {
            string doctor = Label10.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate10.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image10_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label11.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate11.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image11_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label12.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate12.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }

        protected void Image12_Click(object sender, ImageClickEventArgs e)
        {
            string doctor = Label12.Text.Trim();
            string Speciality = RadioButtonList1.SelectedValue.ToString();
            DateTime AppDate = Convert.ToDateTime(txtDate12.Text.Trim());
            string PatientName = txtPname.Text.Trim();
            string PEmail = txtemail.Text.Trim();
            schedule(doctor, Speciality, AppDate, PatientName, PEmail);
        }
    }
}