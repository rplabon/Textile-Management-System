using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileManagementSystem.Models;
using System.Text;
using System.IO;

namespace TextileManagementSystem.Controllers
{
    public class LogController : Controller
    {
        private Log log = new Log();

        MerchandiserRepository merchRepository = new MerchandiserRepository();
        BuyerRepository buyerRepository = new BuyerRepository();
        OrderRepository orderRepository = new OrderRepository();
        DemandRepository demandRepository = new DemandRepository();

        //
        // GET: /Log/
        [HttpGet]
        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOn(FormCollection f)
        {
            try
            {
                int id = Convert.ToInt32(f["formID"]);
                string pass = f["formPass"];
                Merchandiser m = merchRepository.GetMerch(id, pass);

                if (m == null)
                {
                    Buyer b = buyerRepository.GetBuyer(id, pass);
                    if (b == null)
                    {
                        return View("~/Views/Home/NotFound.aspx");
                    }
                    else
                    {
                        if (b.Valid == 1)
                        {
                            Session["buyerID"] = f["formID"];
                            return View("Buyer", b);
                        }
                        return View("~/Views/Home/NotFound.aspx");
                    }
                }
                else
                {
                    Session["merchID"] = f["formID"];
                    return View("Merch", m);
                }
            }
            catch (Exception e)
            {
                return View("~/Views/Home/NotFound.aspx");
            }
        }

        //
        // GET: /Merchandiser/
        //

        [HttpGet]
        public ActionResult Merch(Merchandiser m)
        {
            return View();
        }

        //[ActionName("Merch")]
        //public ActionResult MerchNew(int id)
        //{
        //    Merchandiser m = merchRepository.GetMerchByID(id);
        //    return View(m);
        //}

        //Create New Demand

        [HttpGet]
        public ActionResult CreateDemand(int id)
        {
            //Session["merchID"] = id;
            Demand d = new Demand();
            return View(d);
        }

        [HttpPost]
        public ActionResult CreateDemand(Demand d)
        {
            if (ModelState.IsValid)
            {
                d.MerchID = Convert.ToInt32(Session["merchID"]);
                d.Date = DateTime.Now.Date;
                demandRepository.Add(d);

                /************** Saving log ***************/

                log.DoAll("Demand: " + d.No + ", " + d.Thickness + ", " + d.Color
                    + ", " + d.Date +  ", " + d.Quantity + ", " + d.Size + ", " + d.OrderNo + ", "
                    + d.MerchID + ".");

                /*****************************************/

                demandRepository.Save();
                return View("Merch", merchRepository.GetMerchByID(Convert.ToInt32(Session["merchID"])));
            }
            return View("~/Views/Home/Error.aspx");
        }


        /****************************Buyer controls******************************/

        //
        // GET: /Buyer/
        //

        [HttpGet]
        public ActionResult Buyer(Buyer b)
        {
            return View();
        }

        public ActionResult Deactivate(int id)
        {
            Buyer b = buyerRepository.GetBuyer(id);

            if (b == null)
                return View("NotFound");
            else
                return View(b);
        }

        // Deactivate/

        [HttpPost]
        public ActionResult Deactivate(int id, string confirmButton)
        {
            Buyer b = buyerRepository.GetBuyer(id);

            if (b == null)
                return View("NotFound");

            buyerRepository.Delete(b);

            /************** Saving log ***************/
            
            log.DoAll("Buyer: " + b.ID + ", " + b.Name + ", " + b.Pass
                + ", " + b.ComName + ", " + b.Email + ", " + b.Country
                + ", " + b.Valid + ".");

            /*****************************************/

            buyerRepository.Save();

            return View("~/Views/Buyer/Deactivated.aspx");
        }

        // Edit

        [HttpGet]
        public ActionResult EditBuyer(int id)
        {
            Buyer buyer = buyerRepository.GetBuyer(id);
            return View("EditBuyer", buyer);
        }

        [HttpPost]
        public ActionResult EditBuyer(int id, FormCollection formValues)
        {
            Buyer buyer = buyerRepository.GetBuyer(id);

            if (TryUpdateModel(buyer))
            {
                /************** Saving log ***************/

                log.DoAll("Buyer: " + buyer.ID + ", " + buyer.Name + ", " + buyer.Pass
                    + ", " + buyer.ComName + ", " + buyer.Email + ", " + buyer.Country
                    + ", " + buyer.Valid + ".");

                /*****************************************/

                buyerRepository.Save();
                return View("Buyer", buyer);
            }
            return View("EditBuyer", id);
        }

        //Creting new order

        public ActionResult CreateOrder(int id)
        {
            //Session["buyerID"] = id;
            Order o = new Order();
            return View(o);
        }

        [HttpPost]
        public ActionResult CreateOrder(Order o)
        {
            if (ModelState.IsValid)
            {
                o.BuyerID = buyerRepository.ValidID(Convert.ToInt32(Session["buyerID"])).ID;
                o.Date = DateTime.Now.Date;
                orderRepository.Add(o);

                /************** Saving log ***************/

                log.DoAll("Order: " + o.No + ", " + o.Color + ", " + o.Size
                    + ", " + o.Amount + ", " + o.Dia + ", " + o.Shade
                    + ", " + o.Date + ", " + o.BuyerID + ".");

                /*****************************************/

                orderRepository.Save();
                return View("Buyer", buyerRepository.GetBuyer(Convert.ToInt32(Session["buyerID"])));
            }
            return View("~/Views/Home/Error.aspx");
        }

        //Show orders

        [HttpGet]
        public ActionResult BuyerOrders(int id)
        {
            var orders = orderRepository.FindOrdersByBuyer(id).ToList();
            return View("BuyerOrders", orders);
        }

        [HttpGet]
        public ActionResult OrderDetails(int No)
        {
            Order o = orderRepository.FindOrder(No);
            return View("OrderDetails", o);
        }
    }
}