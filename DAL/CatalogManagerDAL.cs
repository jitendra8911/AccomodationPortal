using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Library;

namespace DAL
{
    public class CatalogManagerDAL
    {
        string conn = Globalconstants.AccommodationPortal;
        public bool AddToCatalog(string loginId, string roomId)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[3];
                parameterArray[0] = new SqlParameter("@loginId", SqlDbType.VarChar);
                parameterArray[0].Value = loginId;

                parameterArray[1] = new SqlParameter("@roomId", SqlDbType.VarChar);
                parameterArray[1].Value = roomId;
                parameterArray[2] = new SqlParameter("@flag", SqlDbType.Bit);
                parameterArray[2].Direction = ParameterDirection.Output;
                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "InsertIntoRoomCatalog", parameterArray);
                return Convert.ToBoolean(parameterArray[2].Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool DeleteFromCatalog(string loginId, string roomId)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[3];
                parameterArray[0] = new SqlParameter("@loginId", SqlDbType.VarChar);
                parameterArray[0].Value = loginId;

                parameterArray[1] = new SqlParameter("@roomId", SqlDbType.VarChar);
                parameterArray[1].Value = roomId;
                parameterArray[2] = new SqlParameter("@flag", SqlDbType.Bit);
                parameterArray[2].Direction = ParameterDirection.Output;
                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "DeleteFromRoomCatalog", parameterArray);
                return Convert.ToBoolean(parameterArray[2].Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool CheckCatalog(string loginId, string roomId)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[3];
                parameterArray[0] = new SqlParameter("@loginId", SqlDbType.VarChar);
                parameterArray[0].Value = loginId;

                parameterArray[1] = new SqlParameter("@roomId", SqlDbType.VarChar);
                parameterArray[1].Value = roomId;
                parameterArray[2] = new SqlParameter("@flag", SqlDbType.Bit);
                parameterArray[2].Direction = ParameterDirection.Output;
                int result = SQLHelperDAL.ExecuteNonQuery(conn, CommandType.StoredProcedure, "CheckCatalog", parameterArray);
                return Convert.ToBoolean(parameterArray[2].Value);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet RetrieveRoomsFromCatalog(string loginId)
        {
            try
            {
                SqlParameter[] parameterArray;
                parameterArray = new SqlParameter[1];
                parameterArray[0] = new SqlParameter("@loginId", SqlDbType.VarChar);
                parameterArray[0].Value = loginId;
                DataSet ds = SQLHelperDAL.ExecuteDataset(conn, CommandType.StoredProcedure, "RetrieveRoomsFromCatalog", parameterArray);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
