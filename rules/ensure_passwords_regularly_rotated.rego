package rules.ensure_passwords_regularly_rotated

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWS_DB.pdf": [
				"AWS_DB.pdf_d2423375-ec49-47a3-bb7a-6eae9d8e0800"
			]
		},
		"severity": "Medium"
	},
	"description": "AWS_DB.pdf - Version: 1.0.0",
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