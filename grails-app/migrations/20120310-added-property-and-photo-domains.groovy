databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1331373856613-1") {
		createTable(tableName: "photo") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "caption", type: "VARCHAR(255)")

			column(name: "file_name", type: "VARCHAR(255)")

			column(name: "property_id", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "photos_idx", type: "INT")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1331373856613-2") {
		createTable(tableName: "property") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "active", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "built_in_cupboards", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "city", type: "VARCHAR(255)")

			column(name: "deposit_percentage", type: "FLOAT") {
				constraints(nullable: "false")
			}

			column(name: "description", type: "LONGTEXT")

			column(name: "dining_room", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "editor_choice", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "garden", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "interest_rate", type: "FLOAT") {
				constraints(nullable: "false")
			}

			column(name: "kitchen", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "loan_term", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "lounge", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "number_of_bathrooms", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "number_of_bedrooms", type: "INT") {
				constraints(nullable: "false")
			}

			column(name: "province", type: "VARCHAR(19)") {
				constraints(nullable: "false")
			}

			column(name: "selling_price", type: "DECIMAL(19,2)") {
				constraints(nullable: "false")
			}

			column(name: "size", type: "VARCHAR(255)")

			column(name: "suburb", type: "VARCHAR(255)")

			column(name: "title", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1331373856613-3") {
		addForeignKeyConstraint(baseColumnNames: "property_id", baseTableName: "photo", constraintName: "FK65B3E32AD315F6E", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "property", referencesUniqueColumn: "false")
	}
}
