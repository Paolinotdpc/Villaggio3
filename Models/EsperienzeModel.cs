using System;

namespace MVC_TDPC.DB.Entities
{
    public class EsperienzeModel
    {
        public int id { get; set; }
        public string Description { get; set; }
        public string Event_type { get; set; }
        public string Address { get; set; }
        public string Contact { get; set; }
        public string Email { get; set; }
        public int Max_places { get; set; }
        public decimal? Price_per_person { get; set; }
    }
}
