using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Users
    {
        public int ID { get; set; }
        public string name { get; set; }
        public string surname { get; set; }
        public string userName { get; set; }
        public string eMail { get; set; }
        public string password { get; set; }
        public DateTime dateOfBirth { get; set; }
        public string dateBirthStr { get; set; }
        public string image { get; set; }
        public byte memberStatus { get; set; }
        public DateTime dateOfregistration { get; set; }
        public string dateRegistrationStr { get; set; }
        public bool status { get; set; }
    }
}
