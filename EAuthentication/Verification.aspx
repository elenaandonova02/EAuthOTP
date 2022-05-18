<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Verification.aspx.cs" Inherits="Verification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body style="background:#ccccff">
    <div class="container" style="margin-top: 100px;">
		<div class="row justify-content-center">
			<div class="col-md-6 col-md-offset-3"align="center">
    <form id="form1" runat="server">
        <div>
            <h2>Verify your identity</h2>
            <hr />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <br />
            <table style="width:450px">
                <tr>
                    <th colspan="2">Enter OTP recieved on your phone/email or scan the QR code</th>
                </tr>
                <tr>
                    <td>Enter OTP</td>
                    <td>
                        <asp:TextBox ID="txtOTP" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Image ID="imgQRCODE" width="120px" height="120px" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnverify" runat="server" Text="Verify" OnClick="btnverify_Click" />
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