using NHibernate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCaseDal;

namespace MyWebFormCases.FrameWork
{
    public partial class FluentNhibernate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ISessionFactory sessionFactory = FluentNHibernateHelper.GetSessionFactory();

   

            // get the core object through sessionFactory
            ISession session = sessionFactory.OpenSession();

            // open thransaction
            using (var trans = session.BeginTransaction())
            {
                try
                {
                    // create a student and grade 
                    Student student = new Student() { Name = "mike", Age = 18 };
                    Grade grade = new Grade() { Name = "grade1" };
                    //create relationship between student and grade
                    student.Grade = grade;
                    grade.Students.Add(student);

                    //update student and grade
                    session.SaveOrUpdate(grade);
                    session.SaveOrUpdate(student);
                    
                    //commit thransaction
                    trans.Commit();

                }
                catch (Exception)
                {
                    trans.Rollback();
                    throw;
                }
            }
        }
    }
}