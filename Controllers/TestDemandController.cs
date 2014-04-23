using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileManagementSystem.Models;

namespace TextileManagementSystem.Controllers
{
    public class TestDemandController : Controller
    {
        private Log log = new Log();

        DemandRepository demandRepository = new DemandRepository();

        //
        // GET: /Test/

        public ActionResult Demand()
        {
            var demand = demandRepository.FindAllDemands().ToList();
            return View("Demand", demand);
        }

        public ActionResult DemandDetails(int id)
        {
            Demand demand = demandRepository.FindDemand(id);

            /*if (demand == null)
                return View("NotFound");
            else*/

            return View("DemandDetails", demand);
        }

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
    }
}
