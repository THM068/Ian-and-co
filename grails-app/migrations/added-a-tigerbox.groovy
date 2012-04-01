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

	changeSet(author: "thandomafela (generated)", id: "1333314853978-2") {
		createTable(tableName: "tiger_box_photo") {
			column(name: "tiger_box_photos_id", type: "BIGINT")

			column(name: "photo_id", type: "BIGINT")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333314853978-3") {
		addForeignKeyConstraint(baseColumnNames: "photo_id", baseTableName: "tiger_box_photo", constraintName: "FK9182A33EF089A326", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "photo", referencesUniqueColumn: "false")
	}

	changeSet(author: "thandomafela (generated)", id: "1333314853978-4") {
		addForeignKeyConstraint(baseColumnNames: "tiger_box_photos_id", baseTableName: "tiger_box_photo", constraintName: "FK9182A33EE8EAF05", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "tiger_box",  referencesUniqueColumn: "false")
	}
}
