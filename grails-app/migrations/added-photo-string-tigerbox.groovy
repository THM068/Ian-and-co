databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1333742895695-1") {
		createTable(tableName: "tiger_box_photos") {
			column(name: "tiger_box_id", type: "BIGINT")

			column(name: "photos_string", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333742895695-4") {
		addForeignKeyConstraint(baseColumnNames: "tiger_box_id", baseTableName: "tiger_box_photos", constraintName: "FK9ED1C4F5F993C5EF", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "tiger_box",  referencesUniqueColumn: "false")
	}

}
