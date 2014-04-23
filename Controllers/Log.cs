using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace TextileManagementSystem.Models
{
    public class Log
    {
        private FileStream fs;
        private StreamWriter logWriter;

        public void FileOpen()
        {
            try
            {
                fs = new FileStream("H:\\Programming\\MVC 2\\TextileManagementSystem\\TextileManagementSystem\\Backup\\log.txt", FileMode.Append);
                logWriter = new StreamWriter(fs);
            }
            catch (Exception e)
            {
                Console.WriteLine("Error in opening file");
            }
        }

        public void WriteTime()
        {
            try
            {
                logWriter.Write(Convert.ToString(DateTime.Now) + ", ");
            }
            catch (Exception e)
            {
                Console.WriteLine("Error in writing date in file");
            }
        }

        public void WriteString(string s)
        {
            try
            {
                logWriter.WriteLine(s);
            }
            catch (Exception e)
            {
                Console.WriteLine("Error in writing data in file");
            }
        }

        public void FileClose()
        {
            try
            {
                logWriter.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine("Error in closing file");
            }
        }

        public void DoAll(string s)
        {
            FileOpen();
            WriteTime();
            WriteString(s);
            FileClose();
        }
    }
}