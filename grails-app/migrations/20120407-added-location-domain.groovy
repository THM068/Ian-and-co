databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1333894020496-1") {
		createTable(tableName: "location") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333894020496-6") {
		createIndex(indexName: "name", tableName: "location", unique: "true") {
			column(name: "name")
		}
	}


}
