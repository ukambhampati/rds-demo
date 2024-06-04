package rules.ensure_rest_is_encrypted

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWS_DB.pdf": [
				"AWS_DB.pdf_93ae87fb-1680-4704-a474-d7f15ad1c57b"
			]
		},
		"severity": "Medium"
	},
	"description": "AWS_DB.pdf - Version: 1.0.0",
	"id": "93ae87fb-1680-4704-a474-d7f15ad1c57b",
	"title": "Ensure Data at Rest is Encrypted (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.skip_final_snapshot == false
}