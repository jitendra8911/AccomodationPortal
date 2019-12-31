using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
namespace BAL
{
    public class RetrieveVacantRoomDetailsBAL
    {
        public DataSet RetrieveVacantRoomDetails(string roomId)
        {
            RetrieveVacantRoomDetailsDAL dal = new RetrieveVacantRoomDetailsDAL();
            DataSet dsRoomDetails = dal.RetrieveVacantRoomDetails(roomId);
            return dsRoomDetails;
        }
    }
}
