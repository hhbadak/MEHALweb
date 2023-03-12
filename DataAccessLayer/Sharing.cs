using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Sharing
    {
        public int ID { get; set; }
        public int user_ID { get; set; }
        public string user { get; set; }
        public int numberOfLikes { get; set; }
        public string content { get; set; }
        public string imagePath { get; set; }
        public DateTime date { get; set; }
        public DateTime time { get; set; }
        public string dateStr { get; set; }
        public string timeStr { get; set; }
        public bool status { get; set; }
        public string display { get; set; }
    }
}
