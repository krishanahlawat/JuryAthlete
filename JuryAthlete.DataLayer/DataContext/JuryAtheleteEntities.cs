using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JuryAthlete.DataLayer.DataContext
{
    public partial class JuryAtheleteEntities
    {
        public static JuryAtheleteEntities GetDBContext()
        {
            JuryAtheleteEntities context = new JuryAtheleteEntities();            
            return context;
        }

        public JuryAtheleteEntities(string dbName)
                : base(dbName)
        {
        }
    }
}
