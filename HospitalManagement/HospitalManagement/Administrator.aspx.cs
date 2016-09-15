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
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblWelcomeName.Text = Convert.ToString(Session["username"]);
                MultiViewSpecialist.ActiveViewIndex = 0;
                display();
                Tr_pupdate.Visible = false;
                Tr_Save.Visible = false;
            }
        }
        protected void display()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            string s = "select * from patient_history";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "patient_history");
            GridView2.DataSource = ds.Tables[0];
            GridView2.DataBind();
            Tr_pupdate.Visible = false;
            Tr_Save.Visible = false;
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
                //lblDisplay.Text = "Successfully Submited";
                // clear();
                txtPname.Text = string.Empty;
                txtemail.Text = string.Empty;
                ddlMonthFrom.Text = string.Empty;
                ddlMonthTo.Text = String.Empty;
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                lblDisplay.Text = ex.Message;

            }
        }
        protected void BtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                Tr_pupdate.Visible = true;
                ImageButton btn = (ImageButton)sender;
                GridViewRow gvr = (GridViewRow)btn.NamingContainer;
                int rowindex = gvr.RowIndex;
                int id = Convert.ToInt32(GridView2.DataKeys[rowindex].Values["id"].ToString());

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                string s = "select * from patient_history where id='"+id+"'";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "patient_Edit");
                if (ds.Tables[0].Rows.Count>0)
                {
                    txtPaname.Text=ds.Tables[0].Rows[0]["patient_name"].ToString();
                    txtTemp.Text = ds.Tables[0].Rows[0]["temp"].ToString();
                    txtbp.Text = ds.Tables[0].Rows[0]["bp"].ToString();
                    txtpulse.Text = ds.Tables[0].Rows[0]["pulse"].ToString();
                    txtPaname.Focus();
                }
            }
            catch (Exception ex)
            {
                
               // throw;
            }
        }
        protected void Update(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            string s = "update patient_history set temp='" + txtTemp.Text + "',bp='" + txtbp.Text + "',pulse='" + txtpulse.Text + "' where patient_name='" + txtPaname.Text + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblDisplay.Text = "Successfully Submited";
           // clear();
            display();
            Tr_pupdate.Visible = false;
            Tr_Save.Visible = false;
        }
        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Tr_Save.Visible = true;
        }
        protected void btnRec(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            string s = "insert into patient_history (patient_name,patient_email,visited_date,temp,bp,pulse,symptoms,comments,physician_name,ptype,pdept) values('" + txtpatientname.Text + "','" + txtPaemail.Text + "','" + txtDat.Text + "','" + txttemperature.Text + "','" + txtBloodPre.Text + "','" + txtpluserate.Text + "','" + ddlSym.SelectedItem.Text + "','" + txtComments.Text + "','" + txtphname.Text + "','" + ddlbelongs.SelectedItem.Text + "','" + ddldept.SelectedItem.Text + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblDisplay.Text = "Successfully Submited";
           // clear();
            txtPaname.Text = "";
            txtPaemail.Text = "";
            txtDat.Text = "";
            txtTemp.Text = "";
            txtbp.Text = "";
            txtpulse.Text = "";
            ddlSym.SelectedIndex = 0;
            txtComments.Text = "";
            txtphname.Text = "";
            ddlbelongs.SelectedIndex = 0;
            ddldept.SelectedIndex = 0;
            Tr_Save.Visible = false;
            display();
            Tr_pupdate.Visible = false;
            Tr_Save.Visible = false;
        }
        protected void rdolist_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            // Physicians
            if (rdolist.SelectedIndex == 0)
            {

                try
                {
                    con.Open();
                    string s = "select physician_name from patient_history where ptype='Physician'";
                    SqlDataAdapter da = new SqlDataAdapter(s, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "patient_history");
                    GridViewPatientHistory.DataSource = ds.Tables[0];
                    GridViewPatientHistory.DataBind();
                    MultiView.ActiveViewIndex = 0;
                    con.Close();
                }
                catch (Exception ex)
                {

                    lblDisplay.Text = ex.Message;
                }


            }
            //GridViewNurse
            else if (rdolist.SelectedIndex == 1)
            {
                try
                {

                    con.Open();
                    string s = "select physician_name from patient_history where ptype='Nurse'";
                    SqlDataAdapter da = new SqlDataAdapter(s, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "patient_history");
                    GridViewNurse.DataSource = ds.Tables[0];
                    GridViewNurse.DataBind();
                    MultiView.ActiveViewIndex = 1;
                    con.Close();
                }
                catch (Exception ex)
                {

                    lblDisplay.Text = ex.Message;
                }
            }
            else if (rdolist.SelectedIndex == 2)
            {
                try
                {

                    con.Open();
                    string s = "select physician_name from patient_history where ptype='Staff'";
                    SqlDataAdapter da = new SqlDataAdapter(s, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "patient_history");
                    GridViewStaff.DataSource = ds.Tables[0];
                    GridViewStaff.DataBind();
                    MultiView.ActiveViewIndex = 2;
                    con.Close();
                }
                catch (Exception ex)
                {

                    lblDisplay.Text = ex.Message;
                }
            }
            else if (rdolist.SelectedIndex == 3)
            {
                try
                {

                    con.Open();
                    string s = "select patient_name from appointment";
                    SqlDataAdapter da = new SqlDataAdapter(s, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "appointment");
                    GridViewPatients.DataSource = ds.Tables[0];
                    GridViewPatients.DataBind();
                    MultiView.ActiveViewIndex = 3;
                    con.Close();
                }
                catch (Exception ex)
                {

                    lblDisplay.Text = ex.Message;
                }
            }
            else if (rdolist.SelectedIndex == 4)
            {
                try
                {
                    con.Open();
                    string s = "select * from patient_history";
                    SqlDataAdapter da = new SqlDataAdapter(s, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "patient_history");
                    GridViewHistory.DataSource = ds.Tables[0];
                    GridViewHistory.DataBind();
                    MultiView.ActiveViewIndex = 4;
                    con.Close();
                }
                catch (Exception ex)
                {

                    lblDisplay.Text = ex.Message;
                }
            }
            else
            {
                lblDisplay.Text = "Error";
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
            DateTime AppDate = Convert.ToDateTime(txtDate1.Text.Trim());
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
        protected void btnBetweenMonths(object sender, EventArgs e)
        {
            try
            {

                if (ddlMonthFrom.Text != String.Empty && ddlMonthTo.Text != String.Empty)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                    string s = "select id,patient_name,physician_name,specialty,Convert(nvarchar,app_date,101) as app_date,patient_email from appointment where app_date between '" + ddlMonthFrom.Text + "' and '" + ddlMonthTo.Text + "'";
                    SqlDataAdapter da = new SqlDataAdapter(s, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "appointment");
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
                else
                {
                   // clear();
                    lblDisplay.Text = "Please Select From Month & To Month to get Appointments";
                }
            }
            catch (Exception ex)
            {

                lblDisplay.Text = ex.Message;
            }

        }

        protected void BtnReport_Click(object sender, EventArgs e)
        {
            try
            {
                MainMultiview.ActiveViewIndex = 1;
                btnBack.Visible = true;
                BtnReport.Visible = false;
            }
            catch (Exception)
            {
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            try
            {
                MainMultiview.ActiveViewIndex = 0;
                btnBack.Visible = false;
                BtnReport.Visible = true;
            }
            catch (Exception)
            {
            }
        }
    }
}