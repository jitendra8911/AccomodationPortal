using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Library;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{

    public class LoginDAL
    {
        string conn = Globalconstants.AccommodationPortal;
        public bool AuthenticateUser(string Username, string Password)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[3];
                parameterArray[0] = new SqlParameter("@username", SqlDbType.VarChar);
                parameterArray[0].Value = Username;

                parameterArray[1] = new SqlParameter("@pwd", SqlDbType.VarChar);
                parameterArray[1].Value = Password;
                parameterArray[2] = new SqlParameter("@flag", SqlDbType.Bit);
                parameterArray[2].Direction = ParameterDirection.Output;
                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "AuthenticateUser", parameterArray);
                return Convert.ToBoolean(parameterArray[2].Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
