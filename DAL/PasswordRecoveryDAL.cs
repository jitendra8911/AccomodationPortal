using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Library;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class PasswordRecoveryDAL
    {
        string conn = Globalconstants.AccommodationPortal;
        public int RecoverPassword(string loginId, string securityQuestion, string securityAnswer)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[4];
                parameterArray[0] = new SqlParameter("@loginId", SqlDbType.VarChar);
                parameterArray[0].Value = loginId;

                parameterArray[1] = new SqlParameter("@securityQuestion", SqlDbType.VarChar);
                parameterArray[1].Value = securityQuestion;
                parameterArray[2] = new SqlParameter("@securityAnswer", SqlDbType.VarChar);
                parameterArray[2].Value = securityAnswer;
                parameterArray[3] = new SqlParameter("@flag", SqlDbType.Bit);
                parameterArray[3].Direction = ParameterDirection.Output;
                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "PasswordRecovery", parameterArray);
                return Convert.ToInt32(parameterArray[3].Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int ChangePassword(string loginId, string password)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[3];
                parameterArray[0] = new SqlParameter("@loginId", SqlDbType.VarChar);
                parameterArray[0].Value = loginId;

                parameterArray[1] = new SqlParameter("@newPassword", SqlDbType.VarChar);
                parameterArray[1].Value = password;
                parameterArray[2] = new SqlParameter("@flag", SqlDbType.Bit);
                parameterArray[2].Direction = ParameterDirection.Output;
                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "ChangePassword", parameterArray);
                return Convert.ToInt32(parameterArray[2].Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
