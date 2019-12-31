using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Library;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{
   public  class SignUpDAL
    {
        string conn = Globalconstants.AccommodationPortal;
        public void RegisterUser(string LoginId, string Password,string FirstnName,string LastName,DateTime DateOfBirth,string State,string Zipcode,string City,string Address1,string Address2,string EmailId,string Qualification,string SecurityQuestion,string SecurityAnswer)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[14];
                parameterArray[0] = new SqlParameter("@LoginId", SqlDbType.VarChar);
                parameterArray[0].Value = LoginId;

                parameterArray[1] = new SqlParameter("@Password", SqlDbType.VarChar);
                parameterArray[1].Value = Password;
                parameterArray[2] = new SqlParameter("@FirstName", SqlDbType.VarChar);
                parameterArray[2].Value = FirstnName;
                parameterArray[3] = new SqlParameter("@LastName", SqlDbType.VarChar);
                parameterArray[3].Value = LastName;

                parameterArray[4] = new SqlParameter("@DOB", SqlDbType.DateTime);
                parameterArray[4].Value = DateOfBirth;
                parameterArray[5] = new SqlParameter("@State", SqlDbType.VarChar);
                parameterArray[5].Value = State;
              
                parameterArray[6] = new SqlParameter("@City", SqlDbType.VarChar);
                parameterArray[6].Value = City;

                parameterArray[7] = new SqlParameter("@ZipCode", SqlDbType.VarChar);
                parameterArray[7].Value = Zipcode;
                parameterArray[8] = new SqlParameter("@Address1", SqlDbType.VarChar);
                parameterArray[8].Value = Address1;
                
                parameterArray[9] = new SqlParameter("@Address2", SqlDbType.VarChar);
                parameterArray[9].Value = Address2;

                parameterArray[10] = new SqlParameter("@EmailId", SqlDbType.VarChar);
                parameterArray[10].Value = EmailId;
                parameterArray[11] = new SqlParameter("@Qualification", SqlDbType.VarChar);
                parameterArray[11].Value = Qualification;



                parameterArray[12] = new SqlParameter("@SecurityQuestion", SqlDbType.VarChar);
                parameterArray[12].Value = SecurityQuestion;
                parameterArray[13] = new SqlParameter("@SecurityAnswer", SqlDbType.VarChar);
                parameterArray[13].Value = SecurityAnswer;


                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "StorePersonalInformation", parameterArray);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int CheckLoginIdAvailable(string LoginId)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[3];
                parameterArray[0] = new SqlParameter("@loginId", SqlDbType.VarChar);
                parameterArray[0].Value = LoginId;
                parameterArray[1] = new SqlParameter("@flag", SqlDbType.Bit);
                parameterArray[1].Direction = ParameterDirection.Output;
                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "CheckLoginIdAvailability", parameterArray);

                return Convert.ToInt32(parameterArray[1].Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
