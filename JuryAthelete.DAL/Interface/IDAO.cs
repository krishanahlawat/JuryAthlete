using System;
using System.Collections.Generic;
using System.Linq.Expressions;

namespace JuryAthelete.DAL.Interface
{
    /// <summary>
    /// A generic repository pattern that wraps the IDbSet interface.
    /// </summary>
    /// <typeparam name="T"> Is a class derived from <see cref="EntityBase"/> class.</typeparam>
    public interface IDAO<T> where T : class
    {
        IList<T> GetList(params Expression<Func<T, object>>[] navigationProperties);
        IList<T> GetList(Func<T, bool> where, params Expression<Func<T, object>>[] navigationProperties);
        T GetSingle(Func<T, bool> where, params Expression<Func<T, object>>[] navigationProperties);
        bool Add(params T[] items);
        bool Update(params T[] items);
        bool Remove(params T[] items);
    }
}
