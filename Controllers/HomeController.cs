using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileManagementSystem.Models;

namespace TextileManagementSystem.Controllers
{
    public class HomeController : Controller
    {
        MerchandiserRepository merchRepository = new MerchandiserRepository();
        OrderRepository orderRepository = new OrderRepository();
        BuyerRepository buyerRepository = new BuyerRepository();
        //
        // GET: /Home/

        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(int id, string pass)
        {
            Merchandiser m = merchRepository.GetMerch(id, pass);
            if (m == null)
            {
                return View("NotFound");
            }
            else
            {
                return View("Merchandiser");
            }
        }

        public ActionResult Merchandiser()
        {
            var o = orderRepository.FindAllOrders();
            return View("Merchandiser", o);
        }

        public ActionResult Details(Buyer b)
        {
            return View("Details", b);
        }

        [HttpGet]
        public ActionResult Click()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Click(FormCollection f)
        {
            int i = Convert.ToInt32(f["formID"]);
            Buyer b = buyerRepository.GetBuyer(i);
            return View("Details", b);
        }
    }
}