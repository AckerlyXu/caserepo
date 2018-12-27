using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Google.Cloud.Firestore;
using Google.Cloud.Firestore.V1Beta1;

namespace ConsoleApp1
{
    class GoogleStart
    {
        public static void MainM(string[] args)
        {
            //D:\develop\vsworkspace\WebFormCases\MyWebFormCases\FrameWork\secret.json
             Get();
           
            Console.Read();
        }
        public static async void Get()
        {
            FirestoreDb db = FirestoreDb.Create("mystart-834d5");
            Console.WriteLine("Created Cloud Firestore client with project ID: {0}", "mystart-834d5");
            CollectionReference usersRef = db.Collection("users");
            QuerySnapshot snapshot = await usersRef.GetSnapshotAsync();
            foreach (DocumentSnapshot document in snapshot.Documents)
            {
                Console.WriteLine("User: {0}", document.Id);
                Dictionary<string, object> documentDictionary = document.ToDictionary();
                Console.WriteLine("First: {0}", documentDictionary["First"]);
                if (documentDictionary.ContainsKey("Middle"))
                {
                    Console.WriteLine("Middle: {0}", documentDictionary["Middle"]);
                }
                Console.WriteLine("Last: {0}", documentDictionary["Last"]);
                Console.WriteLine("Born: {0}", documentDictionary["Born"]);
                Console.WriteLine();
            }
            Console.Read();
        }
    }
}
