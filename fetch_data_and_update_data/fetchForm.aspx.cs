using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fetch_data_and_update_data
{
    public partial class fetchForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\fazal\Documents\Visual Studio 2015\Projects\fetch_data_and_update_data\fetch_data_and_update_data\App_Data\fetchDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void fetch_btn_Click(object sender, EventArgs e)
        {

            try
            {
                int id = Convert.ToInt16(DropDownList1.SelectedValue);
                con.Open();

                string query = "select * from fetchTB where ( Id='" + id + "' ) ";
                SqlCommand sql_server = new SqlCommand(query, con);
                SqlDataReader db_data = sql_server.ExecuteReader();
                if (db_data.Read())
                {
                    tb_updateFname.Text = db_data.GetString(1);
                    tb_updateLname.Text = db_data.GetString(2);
                    tb_updateEmail.Text = db_data.GetString(3);
                    tb_updateNum.Text = db_data.GetString(4);
                    update_msg.Text = null;
                }
                else
                {
                    fetch_msg.Text = "Record Not Found";
                }
            }
            catch (Exception ex_msg)
            {
                updateException_msg.Text = ex_msg.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void update_btn_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt16(DropDownList1.SelectedValue);
                string fname = tb_updateFname.Text;
                string lname = tb_updateLname.Text;
                string email = tb_updateEmail.Text;
                string num = tb_updateNum.Text;

                con.Open();

                string query = "update fetchTB set db_fname='" + fname + "', db_lname='" + lname + "', db_email='" + email + "', db_num='" + num + "' where Id='" + id + "' ";
                SqlCommand sql_server = new SqlCommand(query, con);
                sql_server.ExecuteNonQuery();
                update_msg.Text = "Update Successfully";
            }
            catch (Exception ex_msg)
            {
                updateException_msg.Text = ex_msg.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void insert_btn_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = tb_insertFname.Text;
                string lname = tb_insertLname.Text;
                string email = tb_insertEmail.Text;
                string num = tb_insertNum.Text;

                con.Open();

                string query = "insert into fetchTB ( db_fname, db_lname, db_email, db_num ) values ( '" + fname + "','" + lname + "','" + email + "','" + num + "' )";
                SqlCommand sql_server = new SqlCommand(query, con);
                sql_server.ExecuteNonQuery();
                insert_msg.Text = "Your data is inserted.";
            }
            catch (Exception ex_msg)
            {
                insertException_msg.Text = ex_msg.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
//INSERT QUERY
