databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1332708043837-1") {
		addColumn(tableName: "property") {
			column(name: "property_type", type: "varchar(11)")
		}
	}
}
