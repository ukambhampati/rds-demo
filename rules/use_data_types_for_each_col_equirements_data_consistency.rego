package rules.use_data_types_for_each_col_equirements_data_consistency

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"RelationalDB2": [
				"RelationalDB2_J"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - Relational database - Best Practice - Version: 2.0",
	"id": "J",
	"title": "Use appropriate data types for each column to minimize storage requirements and ensure data consistency.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.allocated_storage == 20
}

