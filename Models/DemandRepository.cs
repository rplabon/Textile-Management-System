using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class DemandRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Finding Demands by date
        public IQueryable<Demand> FindTodaysDemands(DateTime date)
        {
            return from Demand in entities.Demands
                   where Demand.Date == date
                   orderby Demand.Date
                   select Demand;
        }

        //Find todays Demands
        public IQueryable<Demand> FindTodaysDemands()
        {
            return from Demand in entities.Demands
                   where Demand.Date == DateTime.Now
                   orderby Demand.Date
                   select Demand;
        }

        //Find demand by No
        public Demand FindDemand(int id)
        {
            return entities.Demands.FirstOrDefault(d => d.No == id);
        }

        //Finding all
        public IQueryable<Demand> FindAllDemands()
        {
            return entities.Demands;
        }

        //Insert
        public void Add(Demand d)
        {
            entities.Demands.AddObject(d);
        }

        //Persistent
        public void Save()
        {
            entities.SaveChanges();
        }
    }
}