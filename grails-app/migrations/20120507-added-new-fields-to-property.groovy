databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1336378974553-1") {
		addColumn(tableName: "property") {
			column(name: "number_of_offices", type: "INT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1336378974553-2") {
		addColumn(tableName: "property") {
			column(name: "property_purpose", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1336378974553-3") {
		addColumn(tableName: "property") {
			column(name: "roof_type", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1336378974553-4") {
		addColumn(tableName: "property") {
			column(name: "space_available", type: "INT")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1336378974553-5") {
		addColumn(tableName: "property") {
			column(name: "wall_type", type: "VARCHAR(255)")
		}
	}
}
