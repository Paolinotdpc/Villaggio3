using System;

namespace MVC_TDPC.DB.Entities
{
    public class UserModel
    {
        public int id_cliente { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string CF { get; set; }
        public string Phone { get; set; }
        public string Email_cliente { get; set; }
        public int Max_places { get; set; }
        public decimal? Price_per_person { get; set; }
    }
}
