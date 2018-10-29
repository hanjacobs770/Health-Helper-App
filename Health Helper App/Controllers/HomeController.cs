using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Health_Helper_App.ScriptMods;

namespace Health_Helper_App.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            //ViewBag.Message = "Your application description page.";
            Hello hello = new Hello();
            ViewBag.Message = hello.GetHello();

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Health Helper contact page.";

            return View();
        }

        public ActionResult newlink()
        {

            return View();
        }

        public ActionResult Send_Email()
        {

            return View();
        }
    }
}