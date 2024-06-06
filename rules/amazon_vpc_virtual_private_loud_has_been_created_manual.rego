package rules.amazon_vpc_virtual_private_loud_has_been_created_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"ce8277f7-7905-4904-a44b-ee8137b9f79c": [
				"ce8277f7-7905-4904-a44b-ee8137b9f79c_e5ab5593-3f3b-4b69-aa5d-0160850d8636"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS_DB.pdf - Version: 1.0.0",
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

