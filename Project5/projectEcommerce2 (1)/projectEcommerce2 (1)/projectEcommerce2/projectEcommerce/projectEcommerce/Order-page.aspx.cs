using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class Order_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source = DESKTOP-J9PIM9O\\SQLEXPRESS; Database=FINAL;Integrated Security=True;");
            SqlCommand command = new SqlCommand("select Customer.customer_ID ,oldOrders.product_ID,Product.Name,Product.price from oldOrders inner join Product On oldOrders.product_ID=Product.product_ID inner join Customer On Customer.customer_ID=oldOrders.customer_ID;", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            string table = "<div class=\"table-responsive\"> <thead>\r\n                      <tr>\r\n                        <th scope=\"col\">Cstomer ID</th>\r\n                        <th scope=\"col\">Product ID</th>\r\n                            <th scope=\"col\">Name</th>\r\n            <th scope=\"col\">Price</th>\r\n                               </tr>\r\n                    </thead><tbody></div>";
            while (reader.Read())
            {
                table += $"<tr>\r\n                        <th scope=\"row\">{reader[0]}</th>\r\n                        <td>{reader[1]}</td>\r\n                        <td>{reader[2]}</td>\r\n                     <td>{reader[3]}</td>\r\n                      </tr></tr>";
            }
            table += " </tbody>";

            Label1.Text = table;
            connection.Close();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //string searchkey = search.Text;
            //SqlConnection conn1 = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project5;Integrated Security=True;");
            //SqlCommand comand2 = new SqlCommand($"select Customer.customer_ID ,oldOrders.product_ID,Product.Name,Product.price from oldOrders inner join Product On oldOrders.product_ID=Product.product_ID inner join Customer On Customer.customer_ID=oldOrders.customer_ID WHERE Name LIKE '%{searchkey}%'", conn1);
            //conn1.Open();
            //SqlDataReader reader = comand2.ExecuteReader();
            //string table = " <thead>\r\n                      <tr>\r\n                        <th scope=\"col\">Cstomer ID</th>\r\n                        <th scope=\"col\">Product ID</th>\r\n                            <th scope=\"col\">Name</th>\r\n            <th scope=\"col\">Price</th>\r\n                               </tr>\r\n                    </thead><tbody>";
            //while (reader.Read())
            //{
            //    table += $"<tr>\r\n                        <th scope=\"row\">{reader[0]}</th>\r\n                        <td>{reader[1]}</td>\r\n                        <td>{reader[2]}</td>\r\n                     <td>{reader[3]}</td>\r\n                      </tr></tr>";
            //}
            //table += " </tbody>";

            //Label1.Text = table;
            //conn1.Close();
        }
       
    }
}