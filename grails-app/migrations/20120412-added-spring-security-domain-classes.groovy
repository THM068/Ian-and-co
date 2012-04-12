databaseChangeLog = {

	changeSet(author: "thandomafela (generated)", id: "1334218275040-1") {
		createTable(tableName: "cms_role") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "authority", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1334218275040-2") {
		createTable(tableName: "cms_user") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "account_expired", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "account_locked", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "enabled", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "password", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "password_expired", type: "BIT") {
				constraints(nullable: "false")
			}

			column(name: "username", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1334218275040-3") {
		createTable(tableName: "cms_user_cms_role") {
			column(name: "cms_role_id", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "cms_user_id", type: "BIGINT") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1334218275040-4") {
		addPrimaryKey(columnNames: "cms_role_id, cms_user_id", tableName: "cms_user_cms_role")
	}

	changeSet(author: "thandomafela (generated)", id: "1334218275040-5") {
		createIndex(indexName: "authority", tableName: "cms_role", unique: "true") {
			column(name: "authority")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1334218275040-6") {
		createIndex(indexName: "username", tableName: "cms_user", unique: "true") {
			column(name: "username")
		}
	}

	changeSet(author: "thandomafela (generated)", id: "1334218275040-7") {
		addForeignKeyConstraint(baseColumnNames: "cms_role_id", baseTableName: "cms_user_cms_role",  constraintName: "FKEA77572A7D094999", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "cms_role", referencesUniqueColumn: "false")
	}

	changeSet(author: "thandomafela (generated)", id: "1334218275040-8") {
		addForeignKeyConstraint(baseColumnNames: "cms_user_id", baseTableName: "cms_user_cms_role",  constraintName: "FKEA77572A22340D79", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "cms_user", referencesUniqueColumn: "false")
	}
}
