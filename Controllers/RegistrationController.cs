using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileManagementSystem.Models;

namespace TextileManagementSystem.Controllers
{
    public class RegistrationController : Controller
    {
        private Log log = new Log();

        BuyerRepository buyerRepository = new BuyerRepository();

        //
        // GET: /Registration/

        public ActionResult Index()
        {
            Buyer b = new Buyer();
            return View(b);
        }

        [HttpPost]
        public ActionResult Index(Buyer b)
        {
            if (ModelState.IsValid)
            {
                b.Valid = 1;
                buyerRepository.Add(b);

                /************** Saving log ***************/

                log.DoAll("Buyer: " + b.ID + ", " + b.Name + ", " + b.Pass
                    + ", " + b.ComName + ", " + b.Email + ", " + b.Country
                    + ", " + b.Valid + ".");

                /*****************************************/

                buyerRepository.Save();

                Session["buyerID"] = b.ID;
                return View("Confermation");
            }
            return View("~/Views/Home/Error.aspx");
        }

        public ActionResult Confermation()
        {
            return View();
        }
    }
}
