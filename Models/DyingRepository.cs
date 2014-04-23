using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class DyingRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Finding Dyings by date
        public IQueryable<Dying> FindTodaysDyings(DateTime date)
        {
            return from Dying in entities.Dyings
                   where Dying.Date == date
                   orderby Dying.Date
                   select Dying;
        }

        //Find todays Dyings
        public IQueryable<Dying> FindTodaysDyings()
        {
            return from Dying in entities.Dyings
                   where Dying.Date == DateTime.Now
                   orderby Dying.Date
                   select Dying;
        }

        //Finding all
        public IQueryable<Dying> FindAllDyings()
        {
            return entities.Dyings;
        }

        //Insert
        public void Add(Dying d)
        {
            entities.Dyings.AddObject(d);
        }

        //Persistent
        public void Save()
        {
            entities.SaveChanges();
        }
    }
}