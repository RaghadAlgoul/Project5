using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source = DESKTOP - J9PIM9O\\SQLEXPRESS; Database = FINAL; Integrated Security = True; ");

            SqlCommand command = new SqlCommand("insert into Customer(Name,Email,PhoneNumber,City,Password) VALUES (@Name,@Email,@PhoneNumber,@City,@Password)", connection);
            connection.Open();
            command.Parameters.AddWithValue("@Name", formGroupExampleInput.Value);
            command.Parameters.AddWithValue("@Email", exampleFormControlInput1.Value);
            command.Parameters.AddWithValue("@PhoneNumber", formGroupExampleInput2.Value);
            command.Parameters.AddWithValue("@City", formGroupExampleInput3.Value);
            command.Parameters.AddWithValue("@Password", exampleInputPassword1.Value);


            command.ExecuteNonQuery();

            //SqlCommand command2 = new SqlCommand($"select count(*) from Customer ", connection);
            //SqlDataReader r = command2.ExecuteReader();
            //r.Read();
            connection.Close();

            SqlConnection connection2 = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS;Database=project5;Integrated Security=True");
            connection2.Open();
            SqlCommand command2 = new SqlCommand($"select COUNT(*) from Customer ", connection2);
            //SqlDataReader r = command2.ExecuteReader();
            //r.Read();
            //Label1.Text = "Sign Up is Done";
            //Response.Redirect($"signin.aspx?customer_id={r[0]}");
            int result = (int)command2.ExecuteScalar();

            if (exampleInputPassword1.Value == exampleInputPassword2.Value)
            {
                Label1.Text = "Sign Up is Done";
                Response.Redirect($"signin.aspx?customer_id={result}");
            }
            else
            {
                Label1.Text = "error confirm password";
            }


            connection2.Close();
        }
    }
}