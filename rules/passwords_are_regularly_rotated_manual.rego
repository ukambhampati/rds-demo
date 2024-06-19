package rules.passwords_are_regularly_rotated_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"ce8277f7-7905-4904-a44b-ee8137b9f79c": [
				"ce8277f7-7905-4904-a44b-ee8137b9f79c_d2423375-ec49-47a3-bb7a-6eae9d8e0800"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS_DB.pdf - Version: 1.0.0",
	"id": "d2423375-ec49-47a3-bb7a-6eae9d8e0800",
	"title": "Ensure Passwords are Regularly Rotated (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.password != null
}

