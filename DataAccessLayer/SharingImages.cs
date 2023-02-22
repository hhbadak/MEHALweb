using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class SharingImages
    {
        public int ID { get; set; }
        public int sharing_ID { get; set; }
        public string sharing { get; set; }
        public string imagePath { get; set; }
    }
}
