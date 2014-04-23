using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class BuyerRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Login and finding by id
        public Buyer GetBuyer(int i)
        {
            return entities.Buyers.FirstOrDefault(d => d.ID == i);
        }

        //Login and finding by id and pass
        public Buyer GetBuyer(int i, string s)
        {
            return entities.Buyers.FirstOrDefault(d => d.ID == i && d.Pass == s);
        }

        //Finding all
        public IQueryable<Buyer> FindAllBuyers()
        {
            return entities.Buyers;
        }

        //Insert, Delete
        public void Add(Buyer b)
        {
            entities.Buyers.AddObject(b);
        }

        //public bool Delete(int i) //return true if success, false otherwise
        //{
        //    try
        //    {
        //        Buyer tmp = entities.Buyers.First(d => d.ID == i);
        //        tmp.Valid = 0;
        //        return true;
        //    }
        //    catch (Exception e)
        //    {
        //        return false;
        //    }
        //}

        public void Delete(Buyer b)
        {
            /*Buyer tmp = entities.Buyers.First(d => d.ID == b.ID);*/
            b.Valid = 0;
        }

        public Buyer ValidID(int id)
        {
            return entities.Buyers.FirstOrDefault(d => d.ID == id);
        }

        //Persistent
        public void Save()
        {
            entities.SaveChanges();
        }
    }
}