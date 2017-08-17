using JuryAthelete.DAL.Interface;
using NLog;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Linq;
using System.Linq.Expressions;
using System.Text;


namespace JuryAthelete.DAL.Implementation
{
    public class JuryAthleteDAO<T> : IDAO<T> where T : class
    {
        static Logger Logger = LogManager.GetCurrentClassLogger();

        #region Interface Implementation
        public virtual IList<T> GetList(params Expression<Func<T, object>>[] navigationProperties)
        {
            try
            {
                List<T> list = new List<T>();
                using (var context = JuryAtheleteEntities.GetDBContext())
                {
                    IQueryable<T> dbQuery = context.Set<T>();

                    //Apply eager loading i.e. include navigation properties
                    foreach (Expression<Func<T, object>> navigationProperty in navigationProperties)
                        dbQuery = dbQuery.Include<T, object>(navigationProperty);

                    list = dbQuery
                        .AsNoTracking()//Don't track any changes for the selected item
                        .ToList<T>();
                }
                return list;
            }
            catch (Exception ex)
            {
                Logger.Error(ex);
                throw;
            }
        }
        public virtual IList<T> GetList(Func<T, bool> where, params Expression<Func<T, object>>[] navigationProperties)
        {
            try
            {
                List<T> list = new List<T>();
                using (var context = JuryAtheleteEntities.GetDBContext())
                {
                    IQueryable<T> dbQuery = context.Set<T>();

                    //Apply eager loading i.e. include navigation properties
                    foreach (Expression<Func<T, object>> navigationProperty in navigationProperties)
                        dbQuery = dbQuery.Include<T, object>(navigationProperty);

                    list = dbQuery
                        .AsNoTracking()//Don't track any changes for the selected item
                        .Where(where)//Apply where clause
                        .ToList<T>();
                }
                return list;
            }
            catch (Exception ex)
            {
                Logger.Error(ex);
                throw;
            }
        }
        public virtual T GetSingle(Func<T, bool> where, params Expression<Func<T, object>>[] navigationProperties)
        {
            try
            {
                T item = null;
                using (var dbContext = JuryAtheleteEntities.GetDBContext())
                {
                    IQueryable<T> dbQuery = dbContext.Set<T>();

                    //Apply eager loading i.e. include navigation properties
                    foreach (Expression<Func<T, object>> navigationProperty in navigationProperties)
                        dbQuery = dbQuery.Include<T, object>(navigationProperty);

                    item = dbQuery
                        .AsNoTracking()         //Don't track any changes for the selected item
                        .FirstOrDefault(where); //Apply where clause
                }
                return item;
            }
            catch (Exception ex)
            {
                Logger.Error(ex);
                throw;
            }
        }

        public virtual bool Add(params T[] items)
        {
            try
            {
                bool result = false;
                using (var dbContext = JuryAtheleteEntities.GetDBContext())
                {
                    foreach (T item in items)
                        dbContext.Entry(item).State = EntityState.Added;
                    result = dbContext.SaveChanges() > 0;
                }
                return result;
            }
            catch (DbUpdateException dbu)
            {
                var exception = HandleDbUpdateException(dbu);
                throw exception;
            }
            catch (Exception ex)
            {
                DbEntityValidationException validationException = ex as System.Data.Entity.Validation.DbEntityValidationException;
                if (validationException != null)
                {
                    foreach (var entityValidationErrors in validationException.EntityValidationErrors)
                        foreach (var validationError in entityValidationErrors.ValidationErrors)
                            Logger.Error(validationError.PropertyName + "-" + validationError.ErrorMessage);
                }
                Logger.Error(ex);
                throw;
            }
        }
        public virtual void Add(JuryAtheleteEntities dbContext, params T[] items)
        {
            try
            {
                foreach (T item in items)
                    dbContext.Entry(item).State = EntityState.Added;
            }
            catch (Exception ex)
            {
                DbEntityValidationException validationException = ex as System.Data.Entity.Validation.DbEntityValidationException;
                if (validationException != null)
                {
                    foreach (var entityValidationErrors in validationException.EntityValidationErrors)
                        foreach (var validationError in entityValidationErrors.ValidationErrors)
                            Logger.Error(validationError.PropertyName + "-" + validationError.ErrorMessage);
                }
                Logger.Error(ex);
                throw;
            }
        }
        public virtual bool Update(params T[] items)
        {
            try
            {
                bool result = false;
                using (var dbContext = JuryAtheleteEntities.GetDBContext())
                {
                    foreach (T item in items)
                        dbContext.Entry(item).State = EntityState.Modified;
                    result = dbContext.SaveChanges() > 0;
                }
                return result;
            }
            catch (Exception ex)
            {
                DbEntityValidationException validationException = ex as System.Data.Entity.Validation.DbEntityValidationException;
                if (validationException != null)
                {
                    foreach (var entityValidationErrors in validationException.EntityValidationErrors)
                        foreach (var validationError in entityValidationErrors.ValidationErrors)
                            Logger.Error(validationError.PropertyName + "-" + validationError.ErrorMessage);
                }
                Logger.Error(ex);
                throw;
            }
        }
        public virtual bool Remove(params T[] items)
        {
            try
            {
                bool result = false;
                using (var dbContext = JuryAtheleteEntities.GetDBContext())
                {
                    foreach (T item in items)
                        dbContext.Entry(item).State = EntityState.Deleted;
                    result = dbContext.SaveChanges() > 0;
                }
                return result;
            }
            catch (Exception ex)
            {
                DbEntityValidationException validationException = ex as System.Data.Entity.Validation.DbEntityValidationException;
                if (validationException != null)
                {
                    foreach (var entityValidationErrors in validationException.EntityValidationErrors)
                        foreach (var validationError in entityValidationErrors.ValidationErrors)
                            Logger.Error(validationError.PropertyName + "-" + validationError.ErrorMessage);
                }
                Logger.Error(ex);
                throw;
            }
        }
        public virtual void SaveChanges(JuryAtheleteEntities dbContext)
        {
            try
            {
                dbContext.SaveChanges();
            }
            catch (Exception ex)
            {
                DbEntityValidationException validationException = ex as System.Data.Entity.Validation.DbEntityValidationException;
                if (validationException != null)
                {
                    foreach (var entityValidationErrors in validationException.EntityValidationErrors)
                        foreach (var validationError in entityValidationErrors.ValidationErrors)
                            Logger.Error(validationError.PropertyName + "-" + validationError.ErrorMessage);
                }
                Logger.Error(ex);
                throw;
            }
        }

        private Exception HandleDbUpdateException(DbUpdateException dbu)
        {
            var builder = new StringBuilder("A DbUpdateException was caught while saving changes. ");

            try
            {
                foreach (var result in dbu.Entries)
                {
                    builder.AppendFormat("Type: {0} was part of the problem. ", result.Entity.GetType().Name);
                }
            }
            catch (Exception e)
            {
                builder.Append("Error parsing DbUpdateException: " + e.ToString());
            }

            string message = builder.ToString();
            return new Exception(message, dbu);
        }
        #endregion
    }
}
