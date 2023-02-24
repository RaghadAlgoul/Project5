using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class deletProduct : System.Web.UI.Page
    {
            
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["productId"];
                SqlConnection connection = new SqlConnection("Data Source = DESKTOP-J9PIM9O\\SQLEXPRESS; Database=FINAL; Integrated Security=True;");
                SqlCommand command = new SqlCommand($"select * from Product WHERE product_ID = '{id}'", connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    //product_id.Text = reader[1].ToString();
                    //product_categorie.Text = reader[2].ToString();
                    //product_description.Value = reader[3].ToString();
                    //product_weight.Text = reader[4].ToString();
                    //available_quantity.Text = reader[5].ToString();

                }
                connection.Close();
            }
        }

        protected void singlebutton_Click(object sender, EventArgs e)
        {
            string id2 = Request.QueryString["productId"];
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-J9PIM9O\\SQLEXPRESS; Database=FINAL; Integrated Security=True;"))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE product_ID = @id", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", id2);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Response.Redirect("Product-page.aspx");
        }

        protected void product_weight_TextChanged(object sender, EventArgs e)
        {

        }
    }
}