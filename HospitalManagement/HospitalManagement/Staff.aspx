<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="HospitalManagement.Staff" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table style="width: 90%;" align="center" border="1">
            <tr>
                <td colspan="3" style="text-align: right;">
                    <div style="font-size: x-large; font-weight: bold;">
                       <div style="display:inline-block; "> Welcome <asp:Label ID="lblWelcomeName" runat="server"></asp:Label> </div>
                        <asp:ImageButton ID="imgLogout" ImageUrl="~/images/icon/exit.ico" Width="35px" runat="server" OnClick="imgLogout_Click" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="border-top: 2px solid #0000FF;"></td>
            </tr>
            <tr>
                <td colspan="3">
                    <img src="images/Staff.jpg" width="100%" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="border-bottom: 2px solid #0000FF;"></td>
            </tr>
            <tr>
                <td colspan="3" height="50px">
                    <table>
                        <tr>
                            <th>Choose Specialist </th>
                            <th>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem Value="Cardiology" Selected="True">Cardiology</asp:ListItem>
                                    <asp:ListItem Value="Oncology">Oncology</asp:ListItem>
                                    <asp:ListItem Value="Opthamology">Opthamology</asp:ListItem>
                                    <asp:ListItem Value="Pediatrics">Pediatrics</asp:ListItem>
                                </asp:RadioButtonList></th>
                            <th></th>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width:20%;border:none;" ></td>
                <td style="border:none;">
                    <table border="0" style="width:100%">
                        <tr>
                            <td style="text-align:right"> <asp:Label ID="lblpname" Visible="true" runat="server" Text="Patient Name"></asp:Label></td>
                            <td> <asp:TextBox ID="txtPname" Visible="true" runat="server"></asp:TextBox>
                                <%--<asp:Label ID="lblp" runat="server" Text=""></asp:Label> --%>
                                <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtPname" Display="None" ValidationGroup="schedule" ErrorMessage="Patient Name is Required"></asp:RequiredFieldValidator>
                                <cc1:ValidatorCalloutExtender ID="call1" runat="server" TargetControlID="req1"></cc1:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right"><asp:Label ID="lblrmail" Visible="true" runat="server" Text="Patient Email"></asp:Label></td>
                            <td> <asp:TextBox ID="txtemail" Visible="true" runat="server"></asp:TextBox>
                                <%-- <asp:Label ID="lble" runat="server" Text="Patient Email is Required"></asp:Label>--%>
                                <asp:RequiredFieldValidator ID="req2" runat="server" ControlToValidate="txtemail" Display="None" ValidationGroup="schedule" ErrorMessage="Patient Email is Required"></asp:RequiredFieldValidator>
                                <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="req2"></cc1:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center"><%--<asp:Button ID="btnSchedule" runat="server" Text="Schedule" Visible="true" OnClick="schedule"  OnClientClick="return oConform();"></asp:Button>--%>
                                <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
                            </td>
                            <%--<td></td>--%>
                        </tr>
                    </table>
                </td>
                <td style="width:20%;border:none;"></td>
            </tr>
            <tr>
                <td colspan="3">
                     <asp:MultiView ID="MultiViewSpecialist" runat="server">
                        <asp:View ID="View1" runat="server">
                            <table width="100%">
                                <tr>
                                    <td width="5%"></td>
                                    <td width="25%"></td>
                                    <td width="25%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="text-align: center; font-size: larger; font-weight: bold;">Cardiology</td>
                                </tr>
                                <tr style="text-align: left;">
                                    <th width="5%">Sr. No.</th>
                                    <th width="25%">Specialist</th>
                                    <th width="25%">Customer Service Representative</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%" style="text-align: center;">Schedule</th>
                                </tr>
                                <tr>
                                    <td>1.</td>
                                    <td> <asp:Label ID="lbl1" runat="server" Text=" Dr. Jennifer Bright"></asp:Label></td>
                                    <td>Glbrig bellin : jlbrig@bellin.org. </td>
                                    <td>
                                        <asp:LinkButton ID="lnkMoreInfo" runat="server" PostBackUrl="www.douglasspt.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate1" runat="server" Width="150px"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID ="txtDate1"/>
                                                   <%--<asp:RangeValidator ID="RangeValidator1" runat="server"
                                                        ControlToValidate="txtDate1" ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red"
                                                            Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image1" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image1_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td><asp:Label ID="lbl2" runat="server" Text="Dr.Brenda Milbrath, PT"></asp:Label> </td>
                                    <td>Jay's story : Linda.LaBorde@phci.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="https://ghcscw.com/ ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate2" runat="server" Width="150px"> </asp:TextBox>
                                         <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID ="txtDate2" />
                                        <%--<asp:RangeValidator ID="RangeValidato44r3" runat="server" ControlToValidate="txtDate2" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                       </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image2" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image2_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td><asp:Label ID="Label3" runat="server" Text="Dr. Andy Kerk, PT, CFMT"></asp:Label></td>
                                    <td>andykerk : andykerk@BMechanics.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="www.bmechanics.com ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate3" runat="server" Width="150px"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID ="txtDate3" />
                                       <%-- <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDate3" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image3" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image3_Click" ValidationGroup="schedule" /></td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <table width="100%">
                                <tr>
                                    <td width="5%"></td>
                                    <td width="25%"></td>
                                    <td width="25%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="text-align: center; font-size: larger; font-weight: bold;">Oncology</td>
                                </tr>
                                <tr style="text-align: left;">
                                    <th width="5%">Sr. No.</th>
                                    <th width="25%">Specialist</th>
                                    <th width="25%">Customer Service Representative</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%" style="text-align: center;">Schedule</th>
                                </tr>
                                <tr>
                                    <td>1.</td>
                                    <td><asp:Label ID="Label4" runat="server" Text="Julie P Amundson, MPT"></asp:Label></td>
                                    <td>jamunds :  jamunds@uwhpwatertown.com </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="www.manualphysio.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate4" runat="server" Width="150px"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID ="txtDate4" />
                                      <%--  <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtDate4" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image4" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image4_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td><asp:Label ID="Label5" runat="server" Text="Vikram Talwar MD"></asp:Label></td>
                                    <td>Daniel Benson : DanielBenson@phci.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="www.websterorthopedics.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate5" runat="server" Width="150px"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID ="txtDate5" />
                                      <%--  <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtDate5" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image5" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image5_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td><asp:Label ID="Label6" runat="server" Text="John G. Finkenberg, MD"></asp:Label></td>
                                    <td>David Schechter : DSchechter@Bhanics.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="www.SchechterMD.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate6" runat="server" Width="150px"></asp:TextBox>
                                         <cc1:CalendarExtender ID="CalendarExtender6" runat="server" TargetControlID ="txtDate6" />
                                        <%--<asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtDate6" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image6" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image6_Click" ValidationGroup="schedule"/></td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <table width="100%">
                                <tr>
                                    <td width="5%"></td>
                                    <td width="25%"></td>
                                    <td width="25%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="text-align: center; font-size: larger; font-weight: bold;">Opthamology</td>
                                </tr>
                                <tr style="text-align: left;">
                                    <th width="5%">Sr. No.</th>
                                    <th width="25%">Specialist</th>
                                    <th width="25%">Customer Service Representative</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%" style="text-align: center;">Schedule</th>
                                </tr>
                                <tr>
                                    <td>1.</td>
                                    <td><asp:Label ID="Label7" runat="server" Text="Dr. Alexander Francini"></asp:Label></td>
                                    <td>Robin Christenson : info@wholebodypt.com </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="www.wholebodypt.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate7" runat="server" Width="150px"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender7" runat="server" TargetControlID ="txtDate7" />
                                     <%--   <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="txtDate7" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image7" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image7_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td><asp:Label ID="Label8" runat="server" Text="David A. Zarou"></asp:Label></td>
                                    <td>Sandra Shevlin: info@pelvictherapy.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="www.oimcare.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate8" runat="server" Width="150px"></asp:TextBox>
                                          <cc1:CalendarExtender ID="CalendarExtender8" runat="server" TargetControlID ="txtDate8" />
                                      <%--  <asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="txtDate8" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image8" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image8_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td><asp:Label ID="Label9" runat="server" Text="Dr. Mark Grossnickle"></asp:Label></td>
                                    <td>John Nelson :peter@philipphysicaltherapy.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="www.philipphysicaltherapy.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate9" runat="server" Width="150px"></asp:TextBox>
                                           <cc1:CalendarExtender ID="CalendarExtender9" runat="server" TargetControlID ="txtDate9" />
                                       <%-- <asp:RangeValidator ID="RangeValidator8" runat="server" ControlToValidate="txtDate9" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image9" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image9_Click" ValidationGroup="schedule"/></td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                            <table width="100%">
                                <tr>
                                    <td width="5%"></td>
                                    <td width="25%"></td>
                                    <td width="25%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                    <td width="15%"></td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="text-align: center; font-size: larger; font-weight: bold;">Pediatrics</td>
                                </tr>
                                <tr style="text-align: left;">
                                    <th width="5%">Sr. No.</th>
                                    <th width="25%">Specialist</th>
                                    <th width="25%">Customer Service Representative</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%">More Info</th>
                                    <th width="15%" style="text-align: center;">Schedule</th>
                                </tr>
                                <tr>
                                    <td>1.</td>
                                    <td><asp:Label ID="Label10" runat="server" Text="Philip Kim, Chee Woo"></asp:Label></td>
                                    <td> 	Tracy She :  cipspainmgt@centerisp.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton9" runat="server" PostBackUrl="www.centerisp.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate10" runat="server" Width="150px"></asp:TextBox>
                                         <cc1:CalendarExtender ID="CalendarExtender10" runat="server" TargetControlID ="txtDate10" />
                                       <%-- <asp:RangeValidator ID="RangeValidator9" runat="server" ControlToValidate="txtDate10" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image10" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image10_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td><asp:Label ID="Label11" runat="server" Text="Dr. Kim Van Liempd, PT, DPT"></asp:Label></td>
                                    <td> 	Laura Rampil : drlaurado@hotmail.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton10" runat="server" PostBackUrl="laurarampil.vpweb.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate11" runat="server" Width="150px"></asp:TextBox>
                                         <cc1:CalendarExtender ID="CalendarExtender11" runat="server" TargetControlID ="txtDate11" />
                                     <%--   <asp:RangeValidator ID="RangeValidator10" runat="server" ControlToValidate="txtDate11" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image11" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image11_Click" ValidationGroup="schedule"/></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td><asp:Label ID="Label12" runat="server" Text="Louis J. Raso, M.D"></asp:Label></td>
                                    <td> 	Vicki Lukert :  lukerv@shands.ufl.edu. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton11" runat="server" PostBackUrl="www.jupiterinterventionalpain.com">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate12" runat="server" Width="150px"></asp:TextBox>
                                        <cc1:CalendarExtender ID="CalendarExtender12" runat="server" TargetControlID ="txtDate12" />
                                        <%--<asp:RangeValidator ID="RangeValidator11" runat="server" ControlToValidate="txtDate12" 
                                            ErrorMessage="You can book appointments upto 15 days from today." ForeColor="Red" Type="Date"></asp:RangeValidator>--%>
                                    </td>
                                    <td style="text-align: center;">
                                        <asp:ImageButton ID="Image12" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" OnClick="Image12_Click" ValidationGroup="schedule"/></td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>

                </td>
            </tr>
            <tr>
                <td colspan="3" style="border:none;">
                    <div style="height:30px;width:100%;border:none;"></div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width:100%;">
                        <tr>
                            <td> Select From Date :</td>
                            <td><asp:TextBox ID="ddlMonthFrom" runat="server" ValidationGroup="Dates1"></asp:TextBox>
                            <cc1:CalendarExtender ID="CalendarExtender13" runat="server" TargetControlID="ddlMonthFrom" />
                            </td>
                            <td>  Select To Date :</td>
                            <td> <asp:TextBox ID="ddlMonthTo" runat="server" ValidationGroup="Dates1"></asp:TextBox>
                            <cc1:CalendarExtender ID="CalendarExtender14" runat="server" TargetControlID="ddlMonthTo" />
                            </td>
                            <td>
                                 <asp:Button ID="Button1" runat="server" Text="Show Appointments" ValidationGroup="Dates1" OnClick="btnBetweenMonths" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div style="height:15px;width:100%;border:none;"></div>
                </td>
            </tr>
             <tr>
                <td colspan="3">
                    <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    GridLines="Vertical" 
                     Visible="true" Width="100%" >
             <FooterStyle  />
             <PagerStyle HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
              <asp:BoundField HeaderText="Physician" DataField="physician_name" />
              <asp:BoundField HeaderText="Specialty" DataField="specialty" />
              <asp:BoundField HeaderText="Appointment Date" DataField="app_date"/>
              <asp:BoundField HeaderText="Patient Name" DataField="patient_name" />
              <asp:BoundField HeaderText="Patient Email" DataField="patient_email" />
              </Columns>
         </asp:GridView>

            </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
