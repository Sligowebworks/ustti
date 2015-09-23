using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected System.Data.SqlClient.SqlConnection conn;
    protected System.Data.SqlClient.SqlCommand comm;
    protected System.Data.SqlClient.SqlDataAdapter adapter;
    protected System.Data.DataSet ds;
    
    //protected System.Web.UI.WebControls.DataGrid DG;
 
    protected void Page_Load(object sender, EventArgs e)
    {   //Response.Write("hola");
        
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ustti_db_migration::connectionstring::target"].ConnectionString);
        ds = new DataSet("schema comparison test");
        comm = new SqlCommand(GetSqlString(), conn); 
        adapter = new SqlDataAdapter(comm);
        adapter.Fill(ds);

        Console.Write(ds.GetXml());

        //DG = new DataGrid();
        DG.DataSource = ds;
        DG.DataBind();

        Cleanup();
    }

    protected void Cleanup()
    {
    }

    public String GetSqlString( )
    {
        string Sql = @"

SELECT 
[Done] = CASE WHEN a.T_type = b.I_type AND a.T_Length = b.I_Length AND a.T_column = b.I_column THEN 'TRUE' ELSE 'FALSE' END, 
[typetest] = CASE WHEN a.T_type = b.I_type THEN 'TRUE' ELSE 'FALSE' END, 
[lengthtest] = CASE WHEN a.T_Length = b.I_Length THEN 'TRUE' ELSE 'FALSE' END,
[colnametest] = CASE WHEN a.T_column = b.I_column THEN 'TRUE' ELSE 'FALSE' END,
[T_table], [T_column], [I_column], [I_table],
* FROM
(
SELECT [T_table] = o.name, [T_column] = c.name, [T_type]  = t.name, [T_Length] = c.length, c.xprec, c.xscale, c.colorder 
FROM 
ustti.dbo.sysobjects o
INNER JOIN
ustti.dbo.syscolumns c
	on o.id = c.id
INNER JOIN 
ustti.dbo.systypes t 
	on c.xtype = t.xtype
WHERE
o.xtype = 'U' 
AND o.name <> 'dtproperties'
) a
FULL OUTER JOIN
(
SELECT [I_table] = o.name, [I_column] = c.name, [I_type]  = t.name, [I_Length] = c.length, c.xprec, c.xscale, c.colorder
FROM 
USTTI_Oct29_Migration.dbo.sysobjects o
INNER JOIN
USTTI_Oct29_Migration.dbo.syscolumns c
	on o.id = c.id 
INNER JOIN 
USTTI_Oct29_Migration.dbo.systypes t 
	on c.xtype = t.xtype
WHERE
o.xtype = 'U' 

) b
on a.[T_table] = b.[I_table]
AND ( a.colorder = b.colorder OR b.I_column = a.T_column)
AND
(
    ([T_column] IS NULL OR [I_column] IS NULL )
    OR
    ([T_column] = [I_column] AND [T_table] = [I_table] AND [T_column] = [I_column])
)
ORDER BY 
a.T_Table,
a.T_column, 
CASE WHEN a.T_type = b.I_type AND a.T_Length = b.I_Length AND a.T_column = b.I_column THEN 'TRUE' ELSE 'FALSE' END DESC
;
";
        return Sql;
    }
}
