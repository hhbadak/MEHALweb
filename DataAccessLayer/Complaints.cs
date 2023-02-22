using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Complaints
    {
        public int ID { get; set; }
        public int c_Subjects_ID { get; set; }
        public int c_Area_ID { get; set; }
        public int user_ID { get; set; }
        public int theComplainingUser { get; set; }
        public string user { get; set; }
        public string area { get; set; }
        public string subjects { get; set; }
        public DateTime date { get; set; }
        public DateTime time { get; set; }
        public string dateStr { get; set; }
        public string timeStr { get; set; }
        public bool status { get; set; }
    }
}
