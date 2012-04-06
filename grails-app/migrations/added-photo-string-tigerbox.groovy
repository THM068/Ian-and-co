databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1333742895695-1") {
		createTable(tableName: "tiger_box_photos") {
			column(name: "tiger_box_id", type: "BIGINT")

			column(name: "photos_string", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333742895695-2") {
		dropForeignKeyConstraint(baseTableName: "tiger_box_photo", baseTableSchemaName: "ianandco", constraintName: "FK9182A33EF089A326")
	}

	changeSet(author: "thandomafela (generated)", id: "1333742895695-3") {
		dropForeignKeyConstraint(baseTableName: "tiger_box_photo", baseTableSchemaName: "ianandco", constraintName: "FK9182A33EE8EAF05")
	}

	changeSet(author: "thandomafela (generated)", id: "1333742895695-4") {
		addForeignKeyConstraint(baseColumnNames: "tiger_box_id", baseTableName: "tiger_box_photos", constraintName: "FK9ED1C4F5F993C5EF", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "tiger_box",  referencesUniqueColumn: "false")
	}

	changeSet(author: "thandomafela (generated)", id: "1333742895695-5") {
		dropTable(tableName: "tiger_box_photo")
	}
}
