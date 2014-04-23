using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class OrderRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Finding orders by date
        public IQueryable<Order> FindsOrders(DateTime date)
        {
            return from Order in entities.Orders
                   where Order.Date == date
                   orderby Order.Date
                   select Order;
        }

        //Find todays orders
        public IQueryable<Order> FindTodaysOrders()
        {
            return from Order in entities.Orders
                   where Order.Date == DateTime.Now
                   orderby Order.Date
                   select Order;
        }

        //Find order by No
        public Order FindOrder(int id)
        {
            return entities.Orders.FirstOrDefault(d => d.No == id);
        }

        public IQueryable<Order> FindOrdersByBuyer(int id)
        {
            return from Order in entities.Orders
                   where Order.BuyerID == id
                   orderby Order.Date
                   select Order;
        }

        //Finding all
        public IQueryable<Order> FindAllOrders()
        {
            return entities.Orders;
        }

        //Finding all by a buyer
        public IQueryable<Order> FindAllOrders(Buyer b)
        {
            return from Order in entities.Orders
                   where Order.BuyerID == b.ID
                   orderby Order.Date
                   select Order;
        }

        //Insert
        public void Add(Order o)
        {
            entities.Orders.AddObject(o);
        }

        //Persistent
        public void Save()
        {
            entities.SaveChanges();
        }
    }
}