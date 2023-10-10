# sqlite

Notes and samples for using SQLite with Lucee

## Using SQL Lite

Just bung the driver into your server's Java classpath[^classpath] and use as is.

```
this.datasources["sqlite"] = {
	class: 'org.sqlite.JDBC',
	connectionString: 'jdbc:sqlite:C:/dev/sqlite_samples/chinook.db'
};
```

That's it.

[^classpath]: for development at Clik we do this by having a single folder with all our drivers and adding that to the commandbox `server.json` in `app->libDirs`




