databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1333314853978-1") {
		createTable(tableName: "tiger_box") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "page", type: "VARCHAR(255)")
		}
	}

}
