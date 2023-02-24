using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Razor.Parser.SyntaxTree;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    class MyClass { public static string table; public static string path="Image\\";
        internal static object img;
    }
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection1 = new SqlConnection("Data Source = DESKTOP-J9PIM9O\\SQLEXPRESS; Database=project5; Integrated Security=True;");
            SqlCommand command1 = new SqlCommand("select count(*)from contact;", connection1);
            try
            {
                connection1.Open();
                
                Button3.Text="New Message ( "+ command1.ExecuteScalar()+" )";
                connection1.Close();
                
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Can not open connection ! ");
            }

            SqlConnection connection = new SqlConnection("Data Source = DESKTOP-J9PIM9O\\SQLEXPRESS; Database=FINAL;Integrated Security=True;");
                SqlCommand command = new SqlCommand("select * from Product order by product_ID asc", connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
            string table = "<div class=\"table-responsive\"><table class=\"table\">\r\n  <thead class=\"thead-dark\">\r\n    <tr>\r\n      <th scope=\"col\">ID</th>\r\n      <th scope=\"col\">Name</th>\r\n  <th scope=\"col\">Image</th>\r\n     <th scope=\"col\">Category ID</th>\r\n      <th scope=\"col\">Price</th>\r\n  <th scope=\"col\">Edit</th>\r\n <th scope=\"col\">Delete</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody></div>";
            while (reader.Read())
            {
                table += $"<tr style=\"height:70px;\">\r\n      <th scope=\"row\">{reader[0].ToString()}</th>\r\n      <td>{reader[1]}</td>\r\n   <td ><img style=\"hieght:50px;width:50px;\" src='{MyClass.path + reader[6]}' class=\"img-fluid img-thumbnail\" ></td>\r\n     <td>{reader[2]}</td>\r\n      <td>{reader[4]}</td>\r\n  <td><div style=\"display:grid;grid-template-columns: auto auto;\">\r\n<div style=\"background-color:#82B0CA;cursor:pointer;width:70px;height:30px;color:white;border-radius:15px;text-align:center;padding-top:5px;display:inline-block;\" onclick=\"location.href='edit-product.aspx?productId='+{reader[0]}\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-pen\" viewBox=\"0 0 16 16\">\r\n  <path d=\"m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z\"/>\r\n</svg>Edit       </div>                                         </div></td>\r\n <td><div  style=\"background-color:white;  cursor:pointer;width:90px;height:30px;color:#EB1D36;border-radius:15px;text-align:center;padding-top:5px; \" onclick=\"location.href='deletProduct.aspx?productId='+{reader[0]}\"><svg xmlns=\"http://www.w3.org/2000/svg/\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-trash3\" viewBox=\"0 0 16 16\">\\r\\n  <path d=\"M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z\"/>\\r\\n</svg> Delete  </div></td>   </tr>";
            }
            table += " </tbody>\r\n</table>";

            Label1.Text = table;

           
            reader.Close();
                connection.Close();
            
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add-product.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string searchkey = search.Text;
            SqlConnection conn1 = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=Project5;Integrated Security=True;");
            SqlCommand comand2 = new SqlCommand($"select * from Product WHERE Name LIKE '%{searchkey}%'", conn1);
            conn1.Open();
            SqlDataReader reader = comand2.ExecuteReader();
            string table = "<div class=\"table-responsive\"><table class=\"table\">\r\n  <thead class=\"thead-dark\">\r\n    <tr>\r\n      <th scope=\"col\">ID</th>\r\n      <th scope=\"col\">Name</th>\r\n  <th scope=\"col\">Image</th>\r\n     <th scope=\"col\">Category ID</th>\r\n      <th scope=\"col\">Price</th>\r\n  <th scope=\"col\">Edit</th>\r\n <th scope=\"col\">Delete</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody></div>";
            while (reader.Read())
            {
                table += $"<tr style=\"height:70px;\">\r\n      <th scope=\"row\">{reader[0].ToString()}</th>\r\n      <td>{reader[1]}</td>\r\n   <td ><img style=\"hieght:50px;width:50px;\" src='{MyClass.path + reader[6]}' class=\"img-fluid img-thumbnail\" ></td>\r\n     <td>{reader[2]}</td>\r\n      <td>{reader[4]}</td>\r\n  <td><div style=\"display:grid;grid-template-columns: auto auto;\">\r\n<div style=\"background-color:#82B0CA;cursor:pointer;width:70px;height:30px;color:white;border-radius:15px;text-align:center;padding-top:5px;display:inline-block;\" onclick=\"location.href='edit-product.aspx?productId='+{reader[0]}\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-pen\" viewBox=\"0 0 16 16\">\r\n  <path d=\"m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z\"/>\r\n</svg>Edit       </div>                                         </div></td>\r\n <td><div  style=\"background-color:white;  cursor:pointer;width:90px;height:30px;color:#EB1D36;border-radius:15px;text-align:center;padding-top:5px; \" onclick=\"location.href='deletProduct.aspx?productId='+{reader[0]}\"><svg xmlns=\"http://www.w3.org/2000/svg/\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-trash3\" viewBox=\"0 0 16 16\">\\r\\n  <path d=\"M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z\"/>\\r\\n</svg> Delete  </div></td>   </tr>";
            }
            table += " </tbody>\r\n</table>";

            Label1.Text = table;


            reader.Close();
            conn1.Close();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sallers-page.aspx");
        }
    }
}