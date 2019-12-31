using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
namespace BAL
{
    public class SignUpBAL
    {
        public void RegisterUser(string LoginId, string Password, string FirstnName, string LastName, DateTime DateOfBirth, string State, string Zipcode, string City, string Address1, string Address2, string EmailId, string Qualification, string SecurityQuestion, string SecurityAnswer)
        {
            SignUpDAL dal = new SignUpDAL();
            dal.RegisterUser(LoginId, Password, FirstnName, LastName, DateOfBirth, State, Zipcode, City, Address1, Address2, EmailId, Qualification, SecurityQuestion, SecurityAnswer);
        }
        public int CheckLoginIdAvailability(string LoginId)
        {
            SignUpDAL dal = new SignUpDAL();
            int result=dal.CheckLoginIdAvailable(LoginId);
            return result;
        }
    }
}
