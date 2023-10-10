component {

	this.datasources["sqlite"] = {
		  class: 'org.sqlite.JDBC',
		  connectionString: 'jdbc:sqlite:C:/dev/sqlite_samples/chinook.db'
	};

	this.datasources["sqlite_new"] = {
		  class: 'org.sqlite.JDBC',
		  connectionString: 'jdbc:sqlite:C:/dev/sqlite_samples/sample_new.db'
	};

	this.defaultdatasource = "sqlite";

}