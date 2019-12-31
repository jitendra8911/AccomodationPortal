using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
namespace BAL
{
    public class PasswordRecoveryBAL
    {

        public int RecoverPassword(string loginId, string securityQuestion, string securityAnswer)
        {
            PasswordRecoveryDAL dal = new PasswordRecoveryDAL();
            int result = dal.RecoverPassword(loginId, securityQuestion, securityAnswer);
            return result;

        }
        public int ChangePassword(string loginId, string password)
        {
            PasswordRecoveryDAL dal = new PasswordRecoveryDAL();
            int result = dal.ChangePassword(loginId, password);
            return result;
        }
    }
}
