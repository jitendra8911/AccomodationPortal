using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Library;

namespace DAL
{
    public class RetrieveVacantRoomDetailsDAL
    {
        string conn = Globalconstants.AccommodationPortal;
        public DataSet RetrieveVacantRoomDetails(string roomId )
        {
            SqlParameter[] parameterArray;
            parameterArray = new SqlParameter[1];
            parameterArray[0] = new SqlParameter("@roomId", SqlDbType.VarChar);
            parameterArray[0].Value = roomId;
            DataSet dsRoomDetails = SQLHelperDAL.ExecuteDataset(conn, CommandType.StoredProcedure, "RetrieveVacantRoomDetails", parameterArray);
            return dsRoomDetails;
        }
    }
}
