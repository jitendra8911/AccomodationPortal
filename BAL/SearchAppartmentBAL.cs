using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using DAL;
namespace BAL
{
    public class SearchAppartmentBAL
    {
        public DataSet SearchAppartment()
        {
            SearchAppartmentDAL dal = new SearchAppartmentDAL();
            DataSet dsAppartmentList=dal.SearchAppartment();
            return dsAppartmentList;
        }
        public DataSet SearchAppartmentBasedOnPriceRange(float minValue,float maxValue)
        {
            SearchAppartmentDAL dal = new SearchAppartmentDAL();
            DataSet dsAppartmentList = dal.SearchAppartmentBasedOnPriceRange(minValue,maxValue);
            return dsAppartmentList;
        }
    }
}
