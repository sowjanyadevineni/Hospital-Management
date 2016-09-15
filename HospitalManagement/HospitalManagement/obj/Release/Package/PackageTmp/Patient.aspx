<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="HospitalManagement.Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Petient</title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 90%;" align="center">
            <tr>
                <td colspan="3" style="text-align: right;">
                    <div style="font-size: x-large; font-weight: bold;">
                       <div style="display:inline-block; "> Welcome Patient </div>
                        <asp:ImageButton ID="imgLogout" ImageUrl="~/images/icon/exit.ico" Width="35px" runat="server" OnClick="imgLogout_Click" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="border-top: 2px solid #0000FF;"></td>
            </tr>
            <tr>
                <td colspan="3">
                    <img src="images/Patient.jpg" width="100%" />
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
                                    <asp:ListItem Value="0" Selected="True">Cardiology</asp:ListItem>
                                    <asp:ListItem Value="1">Oncology</asp:ListItem>
                                    <asp:ListItem Value="2">Opthamology</asp:ListItem>
                                    <asp:ListItem Value="3">Pediatrics</asp:ListItem>
                                </asp:RadioButtonList></th>
                            <th></th>
                        </tr>
                    </table>
                </td>
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
                                    <td>Dr. Jennifer Bright</td>
                                    <td>Glbrig bellin : jlbrig@bellin.org. </td>
                                    <td>
                                        <asp:LinkButton ID="lnkMoreInfo" runat="server">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image2" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>Dr. Brenda Milbrath, PT</td>
                                    <td>Jay's story : Linda.LaBorde@phci.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="https://ghcscw.com/ ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="txtDate" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image1" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td>Dr. Andy Kerk, PT, CFMT</td>
                                    <td>andykerk : andykerk@BMechanics.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="www.bmechanics.com ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="imgSchedule" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
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
                                    <td>Julie P Amundson, MPT</td>
                                    <td>jamunds :  jamunds@uwhpwatertown.com </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton3" runat="server">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image3" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>Dr. Brenda Milbrath, PT</td>
                                    <td>Jay's story : Linda.LaBorde@phci.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="https://ghcscw.com/ ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image4" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td>Dr. Andy Kerk, PT, CFMT</td>
                                    <td>andykerk : andykerk@BMechanics.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="www.bmechanics.com ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image5" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
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
                                    <td>Dr. Jennifer Bright</td>
                                    <td>Glbrig bellin : jlbrig@bellin.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton6" runat="server">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image6" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>Dr. Brenda Milbrath, PT</td>
                                    <td>Jay's story : Linda.LaBorde@phci.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="https://ghcscw.com/ ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image7" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td>Dr. Andy Kerk, PT, CFMT</td>
                                    <td>andykerk : andykerk@BMechanics.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="www.bmechanics.com ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image8" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
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
                                    <td>Dr. Jennifer Bright</td>
                                    <td>Glbrig bellin : jlbrig@bellin.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton9" runat="server">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image9" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>2.</td>
                                    <td>Dr. Brenda Milbrath, PT</td>
                                    <td>Jay's story : Linda.LaBorde@phci.org. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton10" runat="server" PostBackUrl="https://ghcscw.com/ ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image10" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>3.</td>
                                    <td>Dr. Andy Kerk, PT, CFMT</td>
                                    <td>andykerk : andykerk@BMechanics.com. </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton11" runat="server" PostBackUrl="www.bmechanics.com ">Click here</asp:LinkButton></td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server" Width="150px"></asp:TextBox></td>
                                    <td style="text-align: center;">
                                        <asp:Image ID="Image11" ImageUrl="~/images/icon/schedule.ico" Width="20%" runat="server" /></td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>

                </td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
        </table>
    </form>
</body>
</html>
