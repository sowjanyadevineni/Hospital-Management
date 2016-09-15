﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HospitalManagement.Login" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <style type="text/css">
        body
        {
            background-color: #f4f4f4;
            color: #5a5656;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            font-size: 16px;
            line-height: 1.5em;
        }

        a
        {
            text-decoration: none;
        }

        h1
        {
            font-size: 1em;
        }

        h1, p
        {
            margin-bottom: 10px;
        }

        strong
        {
            font-weight: bold;
        }

        .uppercase
        {
            text-transform: uppercase;
        }

        /* ---------- LOGIN ---------- */
        #login
        {
            margin: 100px auto;
            width: 300px;
        }

        form fieldset input[type="text"], input[type="password"]
        {
            background-color: #e5e5e5;
            border: none;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #5a5656;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            font-size: 14px;
            height: 50px;
            outline: none;
            padding: 0px 10px;
            width: 280px;
            -webkit-appearance: none;
        }

        form fieldset input[type="submit"]
        {
            background-color: #008dde;
            border: none;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            color: #f4f4f4;
            cursor: pointer;
            font-family: 'Open Sans', Arial, Helvetica, sans-serif;
            height: 50px;
            text-transform: uppercase;
            width: 300px;
            -webkit-appearance: none;
        }

        form fieldset a
        {
            color: #5a5656;
            font-size: 10px;
        }

            form fieldset a:hover
            {
                text-decoration: underline;
            }

        .btn-round
        {
            background-color: #5a5656;
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            color: #f4f4f4;
            display: block;
            font-size: 12px;
            height: 50px;
            line-height: 50px;
            margin: 30px 125px;
            text-align: center;
            text-transform: uppercase;
            width: 50px;
        }

        .facebook-before
        {
            background-color: #0064ab;
            border-radius: 3px 0px 0px 3px;
            -moz-border-radius: 3px 0px 0px 3px;
            -webkit-border-radius: 3px 0px 0px 3px;
            color: #f4f4f4;
            display: block;
            float: left;
            height: 50px;
            line-height: 50px;
            text-align: center;
            width: 50px;
        }

        .facebook
        {
            background-color: #0079ce;
            border: none;
            border-radius: 0px 3px 3px 0px;
            -moz-border-radius: 0px 3px 3px 0px;
            -webkit-border-radius: 0px 3px 3px 0px;
            color: #f4f4f4;
            cursor: pointer;
            height: 50px;
            text-transform: uppercase;
            width: 250px;
        }

        .twitter-before
        {
            background-color: #189bcb;
            border-radius: 3px 0px 0px 3px;
            -moz-border-radius: 3px 0px 0px 3px;
            -webkit-border-radius: 3px 0px 0px 3px;
            color: #f4f4f4;
            display: block;
            float: left;
            height: 50px;
            line-height: 50px;
            text-align: center;
            width: 50px;
        }

        .twitter
        {
            background-color: #1bb2e9;
            border: none;
            border-radius: 0px 3px 3px 0px;
            -moz-border-radius: 0px 3px 3px 0px;
            -webkit-border-radius: 0px 3px 3px 0px;
            color: #f4f4f4;
            cursor: pointer;
            height: 50px;
            text-transform: uppercase;
            width: 250px;
        }
    </style>
</head>
<body>
    <div id="login">
        <h1><strong>Welcome.</strong> Please login.</h1>
        <form id="frm" runat="server">
            <fieldset>
                <p>
                    <asp:TextBox ID="txtUserName" placeholder="Username" runat="server"></asp:TextBox>
                    </p>
                <p>
                    <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                </p>
                <p><a href="#">Forgot Password?</a></p>
                <p>
                    <asp:Button id="btnlogin" runat="server" Text="LOGIN" OnClick="btnlogin_Click"/> </p>
            </fieldset>
        </form>
    </div>
    <!-- end login -->
</body>
</html>

