using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Library.Types
{
    public class Student
    {
        private string loginId;
        private string password;
        private string firstName;
        private string lastName;
        private DateTime dob;
        private string state;
        private string city;
        private string zipCode;
        private string address1;
        private string address2;
        private string emailId;
        private string qualification;
        private string securityQuestion;
        private string securityAnswer;
        public string LoginId
        {
            get
            {
                return this.loginId;
            }
            set
            {
                this.loginId = value;
            }
        }
        public string Password
        {
            get
            {
                return this.password;
            }
            set
            {
                this.password = value;
            }
        }
        public string FirstName
        {
            get
            {
                return this.firstName;
            }
            set
            {
                this.firstName = value;
            }
        }
        public string LastName
        {
            get
            {
                return this.lastName;
            }
            set
            {
                this.lastName = value;
            }
        }
        public DateTime DOB
        {
            get
            {
                return this.dob;
            }
            set
            {
                this.dob = value;
            }
        }
        public string State
        {
            get
            {
                return this.state;
            }
            set
            {
                this.state = value;
            }
        }
        public string City
        {
            get
            {
                return this.city;
            }
            set
            {
                this.city = value;
            }
        }
        public string ZipCode
        {
            get
            {
                return this.zipCode;
            }
            set
            {
                this.zipCode = value;
            }
        }
        public string Address1
        {
            get
            {
                return this.address1;
            }
            set
            {
                this.address1 = value;
            }
        }
        public string Address2
        {
            get
            {
                return this.address2;
            }
            set
            {
                this.address2 = value;
            }
        }
        public string EmailId
        {
            get
            {
                return this.emailId;
            }
            set
            {
                this.emailId = value;
            }
        }
        public string Qualification
        {
            get
            {
                return this.qualification;
            }
            set
            {
                this.qualification = value;
            }
        }
        public string SecurityQuestion
        {
            get
            {
                return this.securityQuestion;
            }
            set
            {
                this.securityQuestion = value;
            }
        }
        public string SecurityAnswer
        {
            get
            {
                return this.securityAnswer;
            }
            set
            {
                this.securityAnswer = value;
            }
        }
    }
}
