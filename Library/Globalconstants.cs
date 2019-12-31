using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
namespace Library
{
    public static class Globalconstants
    {
        public static readonly string AccommodationPortal = ConfigurationManager.ConnectionStrings["AccommodationPortalDB"].ToString();
    }
}
