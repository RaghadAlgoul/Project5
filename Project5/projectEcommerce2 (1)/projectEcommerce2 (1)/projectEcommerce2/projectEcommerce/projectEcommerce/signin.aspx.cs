using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string c_id = Request.QueryString["customer_id"];
            int a = 0;
            string f = "false";
            SqlConnection connection2 = new SqlConnection("Data Source = DESKTOP - J9PIM9O\\SQLEXPRESS; Database = FINAL; Integrated Security = True; ");
            SqlCommand command2 = new SqlCommand("select * from  Customer", connection2);
            connection2.Open();
            SqlDataReader reader2 = command2.ExecuteReader();

            while (reader2.Read())
            {
                if (exampleFormControlInput1.Value == (string)reader2[3] && exampleInputPassword1.Value == (string)reader2[6])
                {
                    if (Convert.ToInt32(reader2[7]) == 1)
                    {
                        //Response.Redirect(); admin page
                        a = 1;
                        break;
                    }
                    else
                    {
                        f = "True";
                        break;


                    }

                }
                else
                    f = "False";
            }

            if (a == 0)
            {
                if (f == "True")
                {
                    Response.Redirect("home.aspx?customer_id=" + reader2[0]);
                }
                else
                {
                    Label1.Text = "error";


                }
            }
            connection2.Close();
        }
    }
}