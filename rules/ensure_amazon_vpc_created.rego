package rules.ensure_amazon_vpc_created

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWS_DB.pdf": [
				"AWS_DB.pdf_e5ab5593-3f3b-4b69-aa5d-0160850d8636"
			]
		},
		"severity": "Medium"
	},
	"description": "AWS_DB.pdf - Version: 1.0.0",
	"id": "e5ab5593-3f3b-4b69-aa5d-0160850d8636",
	"title": "Ensure Amazon VPC (Virtual Private Cloud) has been created (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.vpc_security_group_ids != null
}