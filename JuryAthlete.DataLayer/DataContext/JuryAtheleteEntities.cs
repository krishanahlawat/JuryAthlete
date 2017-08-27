using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JuryAthlete.DataLayer.DataContext
{
    public partial class AthleteJuryEntities
    {
        public static AthleteJuryEntities GetDBContext()
        {
            AthleteJuryEntities context = new AthleteJuryEntities();            
            return context;
        }

        public AthleteJuryEntities(string dbName)
                : base(dbName)
        {
        }
    }
}
