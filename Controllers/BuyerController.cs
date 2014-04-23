using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TextileManagementSystem.Models;

namespace TextileManagementSystem.Controllers
{
    public class BuyerController : Controller
    {
        MeetingRepository meetingRepository = new MeetingRepository();
        BuyerRepository buyerRepository = new BuyerRepository();

        //
        // GET: /Buyer/

        public ActionResult Meeting()
        {
            var m = meetingRepository.FindUpcomingMeetings().ToList();
            return View("Meeting", m);
        }

        public ActionResult MeetingDetails(int id)
        {
            Meeting m = meetingRepository.GetMeeting(id);
            return View("MeetingDetails", m);
        }

        public ActionResult Deactivated()
        {
            return View();
        }
    }
}