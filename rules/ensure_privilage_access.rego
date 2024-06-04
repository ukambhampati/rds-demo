package rules.ensure_privilage_access

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWS_DB.pdf": [
				"AWS_DB.pdf_07dbe18b-0a9e-487e-bc85-c4e0a4274564"
			]
		},
		"severity": "Medium"
	},
	"description": "AWS_DB.pdf - Version: 1.0.0",
	"id": "07dbe18b-0a9e-487e-bc85-c4e0a4274564",
	"title": "Ensure Least Privilege Access (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.publicly_accessible == false
}