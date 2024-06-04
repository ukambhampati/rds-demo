package rules.ensure_use_of_security_groups

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWS_DB.pdf": [
				"AWS_DB.pdf_6d0ca3b5-90a3-4a58-8783-586681dbce1d"
			]
		},
		"severity": "Medium"
	},
	"description": "AWS_DB.pdf - Version: 1.0.0",
	"id": "6d0ca3b5-90a3-4a58-8783-586681dbce1d",
	"title": "Ensure the Use of Security Groups (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.vpc_security_group_ids != null
}