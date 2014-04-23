using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileManagementSystem.Models;

namespace TextileManagementSystem.Controllers
{
    public class MerchController : Controller
    {
        private Log log = new Log();

        MerchandiserRepository merchRepository = new MerchandiserRepository();
        OrderRepository orderRepository = new OrderRepository();
        DemandRepository demandRepository = new DemandRepository();
        BuyerRepository buyerRepository = new BuyerRepository();
        KnittingRepository knittingRepository = new KnittingRepository();
        YarnRepository yarnRepository = new YarnRepository();
        DyingRepository dyingRepository = new DyingRepository();

        //
        // GET: /Merch/Order

        [HttpGet]
        public ActionResult Order()
        {
            var orders = orderRepository.FindAllOrders().ToList();
            return View("Order", orders);
        }

        [HttpGet]
        public ActionResult OrderDetails(int No)
        {
            Order o = orderRepository.FindOrder(No);
            return View("OrderDetails", o);
        }

        //
        // GET: /Merch/Demand

        [HttpGet]
        public ActionResult Demand()
        {
            var demand = demandRepository.FindAllDemands().ToList();
            return View("Demand", demand);
        }

        [HttpGet]
        public ActionResult DemandDetails(int No)
        {
            Demand d = demandRepository.FindDemand(No);
            return View("DemandDetails", d);
        }

        // GET: /Merch/Edit/2

        [HttpGet]
        public ActionResult EditDemand(int id)
        {
            Demand demand = demandRepository.FindDemand(id);
            return View("EditDemand", demand);
        }

        [HttpPost]
        public ActionResult EditDemand(int id, FormCollection formValues)
        {
            Demand demand = demandRepository.FindDemand(id);

            if (TryUpdateModel(demand))
            {
                demandRepository.Save();

                /************** Saving log ***************/

                log.DoAll("Demand: " + demand.No + ", " + demand.Thickness + ", " + demand.Color
                    + ", " + demand.Date + ", " + demand.Quantity + ", " + demand.Size + ", " + demand.OrderNo + ", "
                    + demand.MerchID + ".");

                /*****************************************/

                return RedirectToAction("DemandDetails", new { id = demand.No });
            }
            return View(demand);
        }

        public ActionResult BuyerList()
        {
            var buyer = buyerRepository.FindAllBuyers();
            return View("BuyerList", buyer);
        }

        public ActionResult BuyerDetails(int id)
        {
            Buyer b = buyerRepository.GetBuyer(id);
            return View("BuyerDetails", b);
        }

        // Knitting

        public ActionResult Knitting()
        {
            var list = knittingRepository.FindAllKnittings();
            return View("Knitting", list);
        }

        //Dying

        public ActionResult Dying()
        {
            var list = dyingRepository.FindAllDyings();
            return View("Dying", list);
        }

        //Yarn

        public ActionResult Yarn()
        {
            var list = yarnRepository.FindAllYarns();
            return View("Yarn", list);
        }
    }
}
