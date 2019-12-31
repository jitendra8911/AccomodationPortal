using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BAL
{
    public class CatalogManagerBAL
    {
        public bool AddToCatalog(string loginId, string roomId)
        {
            CatalogManagerDAL dal = new CatalogManagerDAL();
            bool flag = dal.AddToCatalog(loginId, roomId);
            return flag;
        }
        public bool DeleteFromCatalog(string loginId, string roomId)
        {
            CatalogManagerDAL dal = new CatalogManagerDAL();
            bool flag = dal.DeleteFromCatalog(loginId, roomId);
            return flag;
        }
        public bool CheckCatalog(string loginId, string roomId)
        {
            CatalogManagerDAL dal = new CatalogManagerDAL();
            bool flag = dal.CheckCatalog(loginId, roomId);
            return flag;
        }
        public DataSet RetrieveRoomsFromCatalog(string loginId)
        {
            CatalogManagerDAL dal = new CatalogManagerDAL();
            DataSet dsRoomCatalog = dal.RetrieveRoomsFromCatalog(loginId);
            return dsRoomCatalog;
        }
    }
}
