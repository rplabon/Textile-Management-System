using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class YarnRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Finding Yarns by date
        public IQueryable<Yarn> FindTodaysYarns(DateTime date)
        {
            return from Yarn in entities.Yarns
                   where Yarn.Date == date
                   orderby Yarn.Date
                   select Yarn;
        }

        //Find todays Yarns
        public IQueryable<Yarn> FindTodaysYarns()
        {
            return from Yarn in entities.Yarns
                   where Yarn.Date == DateTime.Now
                   orderby Yarn.Date
                   select Yarn;
        }

        //Finding all
        public IQueryable<Yarn> FindAllYarns()
        {
            return entities.Yarns;
        }

        //Insert
        public void Add(Yarn d)
        {
            entities.Yarns.AddObject(d);
        }

        //Persistent
        public void Save()
        {
            entities.SaveChanges();
        }
    }
}