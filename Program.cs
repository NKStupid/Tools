using System;
using System.Threading.Tasks;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

        }

        static async void SendMail()
        {
            var apiKey = "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";
            var client = new SendGridClient(apiKey);
            var msg = new SendGridMessage()
            {
                From = new EmailAddress("test@example.com", "DX Team"),
                Subject = "Hello World from the SendGrid CSharp SDK!",
                PlainTextContent = "Hello, Email!",
                HtmlContent = "<strong>Hello, Email!</strong>"
            };
            msg.AddTo(new EmailAddress("joseph.siyi@gmail.com", "Test User")); 
            msg.AddTo(new EmailAddress("chenjian014@chinasofti.com", "Test User"));

            var response = await client.SendEmailAsync(msg);
        }
    }
}
