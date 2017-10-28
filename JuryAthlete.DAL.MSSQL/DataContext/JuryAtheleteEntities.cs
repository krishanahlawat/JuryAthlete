using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JuryAthlete.DAL.MSSQL.DataContext
{
    public partial class AthleteJuryEntities
    {
        public static AthleteJuryEntities GetDBContext()
        {
            AthleteJuryEntities context = new AthleteJuryEntities();
            context.Database.CommandTimeout = 100000;
            return context;
        }

        public AthleteJuryEntities(string dbName)
                : base(dbName)
            {
        }
    }
}
