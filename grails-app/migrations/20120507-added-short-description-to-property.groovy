databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1336382624702-1") {
		addColumn(tableName: "property") {
			column(name: "short_description", type: "VARCHAR(800)") {
				constraints(nullable: "false")
			}
		}
	}

}
