using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JuryAthelete.DAL
{
    public partial class JuryAtheleteEntities
    {
        public static JuryAtheleteEntities GetDBContext()
        {
            JuryAtheleteEntities context = new JuryAtheleteEntities();
            context.Database.CommandTimeout = 100000;
            return context;
        }

        public JuryAtheleteEntities(string dbName)
                : base(dbName)
            {
        }
    }
}
