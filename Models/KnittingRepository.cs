using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class KnittingRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Finding Knittings by date
        public IQueryable<Knitting> FindTodaysKnittings(DateTime date)
        {
            return from Knitting in entities.Knittings
                   where Knitting.Date == date
                   orderby Knitting.Date
                   select Knitting;
        }

        //Find todays Knittings
        public IQueryable<Knitting> FindTodaysKnittings()
        {
            return from Knitting in entities.Knittings
                   where Knitting.Date == DateTime.Now
                   orderby Knitting.Date
                   select Knitting;
        }

        //Finding all
        public IQueryable<Knitting> FindAllKnittings()
        {
            return entities.Knittings;
        }

        //Insert
        public void Add(Knitting d)
        {
            entities.Knittings.AddObject(d);
        }

        //Persistent
        public void Save()
        {
            entities.SaveChanges();
        }
    }
}