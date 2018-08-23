using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernate.Cfg;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace WebFormCaseDal
{
   public  class FluentNHibernateHelper
    {
        public static ISessionFactory GetSessionFactory()
        {
            return Fluently.Configure()
                //set the database sqlserver2008
                 .Database(MsSqlConfiguration.MsSql2008
                                            //set the server localhost
                 .ConnectionString(c => c.Server("localhost")
                 //set username
                 .Username("sa")
                 //set password
                 .Password("today1994,./")
                 //set database name
                 .Database("WebFormCases.Models.supplyModel").TrustedConnection())
                 .ShowSql())
                 
                 .Mappings(m => m.FluentMappings
                 //get the assembly name of your model and mapping class
                 .AddFromAssembly(Assembly.Load("WebFormCaseDal"))).BuildSessionFactory();
        }
    }
}
