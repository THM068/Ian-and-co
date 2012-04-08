databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1333912995132-1") {
		createTable(tableName: "tag_links") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "tag_id", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "tag_ref", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "type", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333912995132-2") {
		createTable(tableName: "tags") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333912995132-3") {
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

	changeSet(author: "thandomafela (generated)", id: "1333912995132-4") {
		createTable(tableName: "tiger_box_photos") {
			column(name: "tiger_box_id", type: "BIGINT")

			column(name: "photos_string", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333912995132-5") {
		createIndex(indexName: "name", tableName: "tags", unique: "true") {
			column(name: "name")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1333912995132-6") {
		addForeignKeyConstraint(baseColumnNames: "tag_id", baseTableName: "tag_links",  constraintName: "FK7C35D6D45A3B441D", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "tags",  referencesUniqueColumn: "false")
	}

	changeSet(author: "thandomafela (generated)", id: "1333912995132-7") {
		addForeignKeyConstraint(baseColumnNames: "tiger_box_id", baseTableName: "tiger_box_photos",  constraintName: "FK9ED1C4F5F993C5EF", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "tiger_box", referencesUniqueColumn: "false")
	}
}
