using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class sameCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection connection = new SqlConnection("Data Source = DESKTOP-J9PIM9O\\SQLEXPRESS; Database = FINAL; Integrated Security = True; ");
                //SqlCommand command = new SqlCommand("Select * from FloorCleaner ", connection);
                //SqlCommand command = new SqlCommand("Select * from FloorCleaner where ID=2", connection);
                string id = Request.QueryString["categoryId"];
                string c_id = Request.QueryString["customer_Id"];
                string categ_id = Request.QueryString["categoryId"];
                SqlCommand command = new SqlCommand($"Select * from Product where Category_ID='{id}'", connection);
                connection.Open();
                SqlDataReader d = command.ExecuteReader();

                while (d.Read())
                {
                    // {C:\Users\Ahmad\source\repos\roginacode\roginacode\images\a.jpg
                    //string img = $"images\\{d[4]}\\"; 
                    //Label1.Text +=

                    Label1.Text += $"<div Class=\"col-sm-12 col-md-6 col-lg-3\" class=\"card\" style=\"width: 15rem; height:400px; padding:20px; box-shadow: 10px 10px 50px  lightgray; cursor:pointer; \" onclick=\"location.href='productt.aspx?productId='+{d[0]}+'&customer_Id='+{c_id}+'&categoryId='+{categ_id}\">\r\n  <img style=\" height:75%; margin:0px;\" class=\"card-img-top\" src='{ d[6]}' alt=\"Card image cap\">\r\n " +
                    $" <div class=\"card-body\">\r\n    <h5 class=\"card-title\">{d[1]}</h5>\r\n   " +
                    $" <p class=\"card-text\">{d[4]}JD</p>\r\n    <a href=\"#\"  class=\"btn btn-primary\">Add to cart</a>\r\n  </div>\r\n</div>";
                    //Label1.Text += $"       <div class=\" bg - trasparent my - 4 p - 3\" style=\"position: relative; margin - top:400px; height: 350px\">\r\n <div>\r\n <div class=\"col\">\r\n\r\n   <div class=\"card h-100 shadow - sm\">\r\n  <img src=\"{ MyClass.path + reader[6]}\" +
                    //" style="height: 200px; width: 200px; margin - left:20px; margin - top:10px; " class="card - img - top" alt="..." />\r\n<div class="card - body">\r\n                                                <div class="clearfix mb-3">\r\n                                                    <span class="float-start badge rounded-pill bg - primary">{reader[1]}</span>\r\n                                                    <h5 class="card - title"><details>\r\n  <summary>Mor details</summary>\r\n  <p>{reader[3]}</p>\r\n</details></h5>\r\n                                                    <span class="float-end price - hp">{reader[4]}$</span>\r\n                                                </div>\r\n  <div style="background - color:#82B0CA;cursor:pointer;width:70px;height:30px;color:white;border-radius:15px;text-align:center;padding-top:5px;" onclick="location.href='test.aspx?productId='+{reader[0]}">Edit\r\n        </div>                                    \r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n\r\n  </div>\r\n </div>";







                }
                connection.Close();
            }
        }
    }
}