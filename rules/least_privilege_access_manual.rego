package rules.least_privilege_access_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"ce8277f7-7905-4904-a44b-ee8137b9f79c": [
				"ce8277f7-7905-4904-a44b-ee8137b9f79c_07dbe18b-0a9e-487e-bc85-c4e0a4274564"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS_DB.pdf - Version: 1.0.0",
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

