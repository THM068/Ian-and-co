databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1332102316312-1") {
		addColumn(tableName: "property") {
			column(name: "date_created", type: "DATETIME") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1332102316312-2") {
		addColumn(tableName: "property") {
			column(name: "last_updated", type: "DATETIME") {
				constraints(nullable: "false")
			}
		}
	}
}
