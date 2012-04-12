databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1334250727521-1") {
		createTable(tableName: "visit") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "DATETIME") {
				constraints(nullable: "false")
			}

			column(name: "property_id", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1334250727521-2") {
		addForeignKeyConstraint(baseColumnNames: "property_id", baseTableName: "visit",  constraintName: "FK6B04D4BAD315F6E", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "property", referencesUniqueColumn: "false")
	}
}
