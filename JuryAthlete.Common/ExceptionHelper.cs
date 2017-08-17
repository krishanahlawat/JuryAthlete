using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace JuryAthlete.Common
{
    public class ExceptionHelper
    {
        static Logger Logger = LogManager.GetCurrentClassLogger();

        public static void Handlle(Exception ex, bool reThrow = false, bool getStactRetrace = true)
        {
            try
            {
                string bodyFormat = "Server : " + Environment.MachineName + Environment.NewLine +
                                    "Error Message  : " + GetErrorMessage(ex, true) + Environment.NewLine;

                if (!ex.Message.Contains("Thread was being aborted"))
                {
                    Logger.Error(GetErrorMessage(ex, getStactRetrace));
                    //EmailBO Email = new EmailBO()
                    //{
                    //    Body = bodyFormat,
                    //    Subject = string.Format("PCI : {0} : ERROR : {1}", Constant.ENV, ex.Message),
                    //    To = EmailNotification.Admin,
                    //};
                    //EmailNotification.SendEmail(Email);
                }
            }
            catch (Exception exEmail)
            {
                Logger.Error(ex);
                Logger.Error(exEmail);
            }
        }

        public static string GetErrorMessage(Exception ex, bool getStactRetrace = true)
        {
            var errorMessage = string.Empty;
            if (ex == null) return errorMessage;
            errorMessage = ex.Message;
            if (ex.InnerException != null)
                errorMessage += Environment.NewLine+ GetErrorMessage(ex.InnerException, getStactRetrace);

            if (getStactRetrace)
                errorMessage += Environment.NewLine + ex.StackTrace;

            return errorMessage;
        }

        public static string GetErrorMessage(XElement xEntity)
        {
            string messag = string.Empty;
            try
            {
                var nodes = xEntity.Descendants().ToList();
                foreach (var node in nodes)
                {
                    if (node.Name.LocalName == "ResponseMessage")
                    {
                        string responseCode = string.Empty;
                        string message = string.Empty;
                        var messageNode = node.Descendants().FirstOrDefault(item => item.Name.LocalName == "Message");
                        if (messageNode != null) message = messageNode.Value;

                        var responseCodeNode = node.Descendants().FirstOrDefault(item => item.Name.LocalName == "ResponseCode");
                        if (responseCodeNode != null) responseCode = responseCodeNode.Value;

                        messag += string.Format("Error Code {0} : {1}", responseCode, message) + Environment.NewLine;
                    }
                }
            }
            catch
            {
                messag = xEntity.ToString();
            }

            return messag;
        }

        public static string GetErrorMessage(string error)
        {
            string messag = string.Empty;
            try
            {
                XElement xEntity = XElement.Parse(error);
                GetErrorMessage(xEntity);
            }
            catch
            {
                messag = error;
            }

            return messag;
        }
    }
}
