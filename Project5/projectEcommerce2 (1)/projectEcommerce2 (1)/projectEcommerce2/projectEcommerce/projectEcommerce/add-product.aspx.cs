using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Windows.Input;
using static System.Net.Mime.MediaTypeNames;

namespace projectEcommerce
{
    public partial class add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void singlebutton_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/image/");
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            filebutton.SaveAs(folderPath + Path.GetFileName(filebutton.FileName));
            //Image1.ImageUrl = "~/Iamge/" + filebutton.FileName;
            //SqlConnection connection = new SqlConnection("Data Source=DESKTOP-J9PIM9O\\SQLEXPRESS;Database=project5;Integrated Security=True;");
            // SqlCommand comm = new SqlCommand("insert into Product(Name,Category_ID,description,price,quantity,ImageProduct,newPrice) values (@Name,@Category_ID,@description,@price,@quantity,@ImageProduct,@newPrice)", connection);
            //SqlCommand comm = new SqlCommand($"insert into Product(Name,Category_ID,description,price,quantity,ImageProduct,newPrice) values ('{product_id.Text}','{product_categorie.Text}','{product_description.Value}','{product_weight.Text}','{available_quantity.Text}','{filebutton.FileName}','{1}')", connection);

            //comm.CommandType = CommandType.StoredProcedure;

            //    comm.Parameters.AddWithValue("@Name", product_id.Text);
            //comm.Parameters.AddWithValue("@Category_ID", product_categorie.Text);
            //comm.Parameters.AddWithValue("@description", product_description.Value);
            //comm.Parameters.AddWithValue("@price", product_weight.Text);
            //comm.Parameters.AddWithValue("@quantity", available_quantity.Text);
            //comm.Parameters.AddWithValue("@ImageProduct", filebutton.FileName);
            // comm.Connection.Open();
            //comm.ExecuteNonQuery();
            //con.Open();
            //    int count = (int)
            //     comm.ExecuteNonQuery();
            //    if (count >= 1)
            //    {
            //        Label1.Text = "Succefull Inserted";
            //        Label1.ForeColor = System.Drawing.Color.Green;
            //    }
            //    else
            //    {
            //        Label1.Text = "Errors";
            //        Label1.ForeColor = System.Drawing.Color.Red;
            //    }



            using (
                SqlConnection connection = new SqlConnection("Data Source = DESKTOP-J9PIM9O\\SQLEXPRESS; Database=FINAL;Integrated Security=True;")
                )
            {
                SqlCommand comm = new SqlCommand($"insert into Product(Name,Category_ID,description,price,quantity,ImageProduct) values ('{product_id.Text}','{product_categorie.Text}','{product_description.Value}','{product_weight.Text}','{available_quantity.Text}','{filebutton.FileName}')", connection);
                comm.Parameters.AddWithValue("@Name", product_id.Text);
                comm.Parameters.AddWithValue("@Category_ID", product_categorie.Text);
                comm.Parameters.AddWithValue("@description", product_description.Value);
                comm.Parameters.AddWithValue("@price", product_weight.Text);
                comm.Parameters.AddWithValue("@quantity", available_quantity.Text);
                comm.Parameters.AddWithValue("@ImageProduct", filebutton.FileName);

                comm.Connection.Open();
                comm.ExecuteNonQuery();
            }
            Response.Redirect("Product-page.aspx");
        }
    }
}