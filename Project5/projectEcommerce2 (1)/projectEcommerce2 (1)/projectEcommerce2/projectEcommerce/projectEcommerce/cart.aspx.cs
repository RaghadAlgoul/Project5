using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    public partial class cart : System.Web.UI.Page
    {
        class MyClass2
        {
            public static string img = "Image\\";
        };
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string id = Request.QueryString["customer_Id"];
                string idp = Request.QueryString["productId"];
                SqlConnection connection = new SqlConnection("Data Source = DESKTOP - J9PIM9O\\SQLEXPRESS; Database = FINAL; Integrated Security = True; ");
                //SqlCommand command = new SqlCommand($"select * from Product where product_ID={idp} ", connection);
                SqlCommand command = new SqlCommand($"select Product.Name,Product.ImageProduct,Product.price from Product inner join Orders on Product.product_ID={idp} inner join Customer on Product.product_ID=Orders.product_ID where Customer.customer_ID={id} ", connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                string table = "<div class=\" d-flex flex-row px-lg-5 mx-lg-5 mobile\" id=\"heading\">\r\n                            <div style=\"margin-left: 100px;\" class=\" px-lg-5 mr-lg-5\" id=\"produc\">PRODUCTS</div>\r\n                            <div style=\"margin-left: 90px;\" class=\"px-lg-5 ml-lg-5\" id=\"prc\">PRICE</div>\r\n                            <div style=\"margin-left: 30px;\" class=\"px-lg-5 ml-lg-1\" id=\"quantity\">QUANTITY</div>\r\n                            <div style=\"margin-left: 20px; color:white;\" class=\"px-lg-5 ml-lg-3\" id=\"total\">TOTAL</div>\r\n                    </div>";
                while (reader.Read())
                {
                    table += $" <div class=\"d-flex flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile\">\r\n                            <div class=\"d-flex flex-row align-items-center\">\r\n                                <div>\r\n                                    <img src=\"{MyClass2.img + reader[1]}\" width=\"150\" height=\"150\" alt=\"\" id=\"image\">\r\n                                </div>\r\n                                <div class=\"d-flex flex-column pl-md-3 pl-1\" style=\"margin-left: 100px;\">\r\n                                    <div>\r\n                                        <h6>{reader[0]}</h6>\r\n                                    </div>\r\n                                                              </div>\r\n                            </div>\r\n                            <div class=\"pl-md-0 pl-1\"><b>{reader[2]}</b></div>\r\n                                <div class=\"pl-md-0 pl-2\">\r\n                                    <span class=\"px-md-3 px-1\">5</span>           <span style=\"color:white;\" class=\"px-md-3 px-1\">5</span>                     </div>\r\n                                                               <div class=\"close\">&times;</div>\r\n                                </div>\r\n\r\n                        </div>\r\n     ";
                }


                Label1.Text = table;


                reader.Close();
                connection.Close();
            }
        }
    }
}