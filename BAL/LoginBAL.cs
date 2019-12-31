using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
namespace BAL
{
    public class LoginBAL
    {
        public bool AuthenticateUser(string Username, string Password)
        {
            LoginDAL DAL = new LoginDAL();
            bool flag = DAL.AuthenticateUser(Username, Password);
            return flag;
        }
    }
}
