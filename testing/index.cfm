<cfscript>
local.sql = "
	SELECT albumid, title
	FROM albums
	ORDER BY title
	LIMIT 100;
";
local.params = {};
albums = queryExecute( local.sql, local.params );
writeDump(albums);

local.sql = "
	CREATE TABLE IF NOT EXISTS warehouses (
        id integer PRIMARY KEY,
        name text NOT NULL,
        capacity real
      );";

local.params = {};
albums = queryExecute( local.sql, local.params, {datasource="sqlite_new", result="res"} );
writeDump(res);

local.sql = "
	INSERT INTO warehouses (
        id ,
        name,
        capacity
      )

	VALUES (1, 'Warehouse 1', 5000);";

local.params = {};
albums = queryExecute( local.sql, local.params, {datasource="sqlite_new", result="res"} );
writeDump(res);
/* local.result.generatedKey  */
</cfscript>