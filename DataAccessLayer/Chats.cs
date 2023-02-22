using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Chats
    {
        public int ID { get; set; }
        public int outGoingChat { get; set; }
        public int inComingChat { get; set; }
        public string user { get; set; }
        public string texts { get; set; }
        public DateTime date { get; set; }
        public DateTime time { get; set; }
        public string dateStr { get; set; }
        public string timeStr { get; set; }
        public bool readReceipt { get; set; }
        public bool status { get; set; }
    }
}
