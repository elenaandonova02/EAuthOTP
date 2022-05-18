using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAuthDataSetTableAdapters;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton1.Visible = false;

    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        

        try
        {
            if (txtusername.Text.Length>0 && txtpassword.Text.Length>0 && txtemail.Text.Length>0)
            {
                tbl_UsersTableAdapter iusers = new tbl_UsersTableAdapter();
                iusers.Insert(txtusername.Text, CreateMD5(txtpassword.Text), txtemail.Text, txtphoneNo.Text, "", "", "N");
                lblmsg.Text = "User Registration Successfull!";
                lblmsg.Visible = true;
                LinkButton1.Visible = true;
            }
            else
            {
                lblmsg.Text = "Error in Registration!";
                lblmsg.Visible = true;
            }
        }
        catch
        {
            lblmsg.Text = "Error in Registration!";
            lblmsg.Visible = true;
        }
    }

    public static string CreateMD5(string input)
    {
        // Use input string to calculate MD5 hash //koristenje na input string za presmetka na MD5 hash 
        using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
        {
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hashBytes = md5.ComputeHash(inputBytes);

            // Convert the byte array to hexadecimal string //Konvertiranje na byte nizata vo heksadecimalen string
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            for (int i = 0; i < hashBytes.Length; i++)
            {
                // string should be formatted in Hexadecimal //stringot treba da bide formatiran vo heksadecimalen
                sb.Append(hashBytes[i].ToString("X2"));
            }
            return sb.ToString();
        }
    }

    protected void LinkButton_Click(object sender, EventArgs e)
    {
        LinkButton1.Visible = false;
        Response.Redirect("~/Login.aspx");
    }
}