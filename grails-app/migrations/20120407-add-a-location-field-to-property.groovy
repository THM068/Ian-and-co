databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1333896658994-4") {
		addColumn(tableName: "property") {
			column(name: "location", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333896658994-10") {
		dropColumn(columnName: "city", tableName: "property")
	}

	changeSet(author: "thandomafela (generated)", id: "1333896658994-11") {
		dropColumn(columnName: "suburb", tableName: "property")
	}
}
