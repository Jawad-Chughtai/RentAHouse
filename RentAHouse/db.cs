using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RentAHouse
{
    public class db
    {
        public static SqlConnection get()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["dbRentAHouse"].ConnectionString);
        }
    }
}