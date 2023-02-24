using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectEcommerce
{
    class MyClass2
    {
        public static string img = "Image\\";
    };
    public partial class productt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["customerId"];
            string id2 = Request.QueryString["productId"];
            //string id = "2";


            SqlConnection c = new SqlConnection("Data Source = DESKTOP - J9PIM9O\\SQLEXPRESS; Database = FINAL; Integrated Security = True; ");
            c.Open();
            SqlCommand comm = new SqlCommand($"Select * from Product Where product_ID={id2}", c);
            SqlDataReader r = comm.ExecuteReader();

            if (r.Read())
            {
                Label1.Text = $"                    <div id=\"cardd\">\r\n                        <img src='{MyClass2.img + r[6]}' style=\"width: 45%; height: 80%; border-radius:10px;\"  />\r\n                        <div style=\"width: 40%\" >\r\n                        <p style=\"font-size:30px;\">{r[1]}</p>\r\n                            <br />\r\n                        <p style=\"font-size:20px;\">{r[3]}</p>\r\n                        <p style=\"font-size:20px;\">{r[4]} JD</p>\r\n                        </div>\r\n                    </div>";
            }
            c.Close();

            //SqlConnection connectt = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5 ; integrated security=SSPI");
            //connectt.Open();
            //SqlCommand command = new SqlCommand($"Select * from Customer Where customer_ID={id}", connectt);
            //SqlDataReader rd = command.ExecuteReader();
            //if (rd.Read())
            //{
            //    image.Src = $"{MyClass2.img + rd[1]}";
            //}

            //connectt.Close();
            if (!IsPostBack)
            {
                SqlConnection connect2 = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5; integrated security=SSPI");
                connect2.Open();
                SqlCommand command2 = new SqlCommand("select * from comment", connect2);
                SqlDataReader rd2 = command2.ExecuteReader();

                while (rd2.Read())
                {

                    Label2.Text += $"                 <div class=\"addcomment\">\r\n                        <label id=\"lbl\">{rd2[2]}</label>\r\n\r\n                </div>";

                }
                connect2.Close();

            }
            //SqlConnection connect3 = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5; integrated security=SSPI");
            //connect3.Open();
            //SqlCommand command5 = new SqlCommand($"select * from Customer Where customer_ID={id}", connect3);
            //SqlDataReader rd5 = command5.ExecuteReader();
            //while (rd5.Read())
            //{
            //    Label2.Text += "<img src=\"Image/p.png \" style=\"width: 50px; height: 50px; border-radius: 50%; position: relative; left:7.2%; top:10%;\"   />";
            //}



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string customerId = Request.QueryString["customerId"];
            //string productId = Request.QueryString["productId"];
            //string id = "2";

            SqlConnection connect = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5 ; integrated security=SSPI");
            connect.Open();

            string comment = input.Value;

            string query = "insert into comment (comment,customer_ID)" + " values ('" + comment + "','" + customerId + "')";

            SqlCommand command = new SqlCommand(query, connect);
            command.ExecuteNonQuery();
            connect.Close();

            input.Value = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idc = Request.QueryString["customer_Id"];
            string idp = Request.QueryString["productId"];
            string idca = Request.QueryString["categoryId"];
            //SqlConnection connection = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5 ; integrated security=SSPI");


            int x = Convert.ToInt32(idc);
            int y = Convert.ToInt32(idp);
            int z = Convert.ToInt32(idca);

            //connection.Open();

            //SqlCommand comm = new SqlCommand($"insert into Orders(product_ID,Category_ID,customer_ID,count) values ({idp},{idca},{idc},{TextBox2.Text})", connection);
            ////comm.Parameters.AddWithValue("@Name", product_id.Text);
            ////comm.Parameters.AddWithValue("@Category_ID", product_categorie.Text);
            ////comm.Parameters.AddWithValue("@description", product_description.Value);
            ////comm.Parameters.AddWithValue("@price", product_weight.Text);
            ////comm.Parameters.AddWithValue("@quantity", available_quantity.Text);
            ////comm.Parameters.AddWithValue("@ImageProduct", filebutton.FileName);

            //comm.ExecuteNonQuery();
            //connection.Close();
            SqlConnection connect = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5 ; integrated security=SSPI");
            connect.Open();


            string query = "insert into Orders(product_ID,Category_ID,customer_ID,count)" + " values ('" + y + "','" + z + "','" + x + "', '" + 1 + "')";

            SqlCommand command = new SqlCommand(query, connect);
            command.ExecuteNonQuery();
            connect.Close();

            Response.Redirect($"cart.aspx?productId='+{y}+'&customer_Id='+{x}+'&categoryId='+{z}");

        }
    }

    //    SqlConnection connect2 = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = test ; integrated security=SSPI");
    //    connect2.Open();
    //            SqlCommand command2 = new SqlCommand("SELECT  Customerz.image_url ,Customerz.Name,comments.comment\r\nFROM Customerz\r\n JOIN comments ON Customerz.customer_ID  = comments.customer_ID", connect2);
    //    SqlDataReader rd2 = command2.ExecuteReader();
    //            while (rd2.Read())
    //            {

    //                Label2.Text += $"                <div class=\"addcomment\">\r\n                        <img src=\"{rd2[0]}\"  style=\"width: 50px; height: 50px; border-radius: 50%\"  />&nbsp;&nbsp;<label id=\"lbll\">{rd2[1]}</label><br />\r\n                        <label id=\"lbl\">{rd2[2]}</label>\r\n                </div>";

    //            }

    //connect2.Close();


}