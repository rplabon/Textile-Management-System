using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TextileManagementSystem.Models
{
    public class MeetingRepository
    {
        private MangementEntities entities = new MangementEntities();

        //Find meeting by 
        public Meeting GetMeeting(int i)
        {
            return entities.Meetings.FirstOrDefault(d => d.OrderNo == i);
        }

        //Find all upcoming meetings
        public IQueryable<Meeting> FindUpcomingMeetings()
        {
            return from Meeting in entities.Meetings
                   where Meeting.Date > DateTime.Now
                   orderby Meeting.Date
                   select Meeting;
        }

        //Insert

        public void Add(Meeting m)
        {
            entities.Meetings.AddObject(m);
        }

        //Persistent

        public void Save()
        {
            entities.SaveChanges();
        }
    }
}