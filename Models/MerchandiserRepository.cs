using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class MerchandiserRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Login
        public Merchandiser GetMerch(int id, string pass)
        {
            return entities.Merchandisers.FirstOrDefault(d => d.ID == id && d.Pass == pass);
        }

        public Merchandiser GetMerchByID(int id)
        {
            return entities.Merchandisers.FirstOrDefault(d => d.ID == id);
        }
    }
}