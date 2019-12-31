using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Library;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{
    public class SearchAppartmentDAL
    {
        string conn = Globalconstants.AccommodationPortal;
        public DataSet SearchAppartment()
        {
           // SqlParameter[] parameterArray;
               //parameterArray = new SqlParameter[2];
               //parameterArray[0] = new SqlParameter("@ToDate", SqlDbType.DateTime);
               //parameterArray[0].Value = ToDate;
            DataSet dsAppartmentList = SQLHelperDAL.ExecuteDataset(conn, CommandType.StoredProcedure, "RetrieveVacantRooms");
            return dsAppartmentList;
        }

        public DataSet SearchAppartmentBasedOnPriceRange(float minValue, float maxValue)
        {
            SqlParameter[] parameterArray;
            parameterArray = new SqlParameter[2];
            parameterArray[0] = new SqlParameter("@minValue", SqlDbType.Float);
            parameterArray[0].Value = minValue;
            parameterArray[1] = new SqlParameter("@maxValue", SqlDbType.Float);
            parameterArray[1].Value = maxValue;
            DataSet dsAppartmentList = SQLHelperDAL.ExecuteDataset(conn, CommandType.StoredProcedure, "RetrieveVacantRoomsBasedOnPriceRange", parameterArray);
            return dsAppartmentList;
        }
       

    }
}
