<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous"/>
</head>
<body style="background:#ccccff">
    <div class="container" style="margin-top: 100px;">
		<div class="row justify-content-center">
			<div class="col-md-6 col-md-offset-3"align="center">
    <form id="form1" runat="server">
        <div>
            <h2>User Registration Form</h2>
            <hr />
            <asp:Label ID="lblmsg" Visible="false" runat="server" Font-Bold="true"></asp:Label>
            <br />
            <table style="width:450px">
                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server" placeholder="Username..."></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" placeholder="Password..." autocomplete = "current-password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Email..."></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone No</td>
                    <td>
                        <asp:TextBox ID="txtphoneNo" runat="server" placeholder="PhoneNo..."></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnregister" OnClick="btnregister_Click" runat="server" Text="Register" ></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                       <asp:LinkButton id="LinkButton1" 
                           Text="Login"
                           Font-Names="Verdana" 
                           Font-Size="14pt" 
                           OnClick="LinkButton_Click" 
                           runat="server"/>
                     <br />
 
                    </td>
                </tr>
            </table>
        </div>
    </form>
                		</div>
		</div>
	</div>
</body>
</html>
