package rules.access_keys_are_regularly_rotated_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"ce8277f7-7905-4904-a44b-ee8137b9f79c": [
				"ce8277f7-7905-4904-a44b-ee8137b9f79c_510b01d5-3982-4930-970f-292297d4e7df"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS_DB.pdf - Version: 1.0.0",
	"id": "510b01d5-3982-4930-970f-292297d4e7df",
	"title": "Ensure Access Keys are Regularly Rotated (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.access_keys_rotated = true
}

