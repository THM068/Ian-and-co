databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1332962903812-1") {
		dropColumn(columnName: "built_in_cupboards", tableName: "property")
	}

	changeSet(author: "thandomafela (generated)", id: "1332962903812-2") {
		dropColumn(columnName: "dining_room", tableName: "property")
	}

	changeSet(author: "thandomafela (generated)", id: "1332962903812-3") {
		dropColumn(columnName: "garden", tableName: "property")
	}

	changeSet(author: "thandomafela (generated)", id: "1332962903812-4") {
		dropColumn(columnName: "kitchen", tableName: "property")
	}

	changeSet(author: "thandomafela (generated)", id: "1332962903812-5") {
		dropColumn(columnName: "lounge", tableName: "property")
	}
}
