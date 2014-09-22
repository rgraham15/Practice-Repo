using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
#region
using eRestaurantSystem.Entities;
using eRestaurantSystem.DAL;
using System.ComponentModel;
#endregion


namespace eRestaurantSystem.BLL
{
    [DataObject]
    public class eRestaurantController
    {
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<SpecialEvent> SpecialEvent_List()
        {
            //interfacing with our context class.DbContext, ties into entity framework. 
            using (eRestaurantContext context = new eRestaurantContext()) 
            {
                return context.SpecialEvents.ToList();
            }
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Reservation> Reservations_List()
        {
            //interfacing with our context class.DbContext, ties into entity framework. 
            using (eRestaurantContext context = new eRestaurantContext())
            {
                return context.Reservations.ToList();
            }
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Reservation> ReservationsByEvent(string eventcode)
        {
            using (eRestaurantContext context = new eRestaurantContext())
            {
                return context.Reservations.Where(anItem => anItem.EventCode == eventcode).ToList();
            }
        }
    }
}
