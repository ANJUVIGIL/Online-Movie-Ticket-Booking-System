using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DAL
{
    public class dalLogin
    {
        SqlConnection con = new SqlConnection(@"data source=LAKSHANYA\SQLEXPRESS;database=master;integrated security=true");
        public int userlogin(string user, string password)//checking the user name and password.If matched count 1 not 0.
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from register_table where Name='" + user + "'and Password='" + password + "'", con);
                int a = Convert.ToInt32(cmd.ExecuteScalar());
                return a;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public string userlog(string user, string password)//getting the userType
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select userType from register_table where Name='" + user + "' and Password='" + password + "'", con);
                string a = cmd.ExecuteScalar().ToString();
                return a;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}