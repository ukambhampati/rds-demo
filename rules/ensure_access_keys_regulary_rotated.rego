package rules.ensure_access_keys_regulary_rotated

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWS_DB.pdf": [
				"AWS_DB.pdf_510b01d5-3982-4930-970f-292297d4e7df"
			]
		},
		"severity": "Medium"
	},
	"description": "AWS_DB.pdf - Version: 1.0.0",
	"id": "510b01d5-3982-4930-970f-292297d4e7df",
	"title": "Ensure Access Keys are Regularly Rotated (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.iam_user_policy = true
}