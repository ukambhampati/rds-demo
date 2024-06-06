package rules.iam_roles_policies_are_created_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"ce8277f7-7905-4904-a44b-ee8137b9f79c": [
				"ce8277f7-7905-4904-a44b-ee8137b9f79c_7e0925f0-531d-44f2-a66b-cecaffba81ae"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: AWS_DB.pdf - Version: 1.0.0",
	"id": "7e0925f0-531d-44f2-a66b-cecaffba81ae",
	"title": "Ensure IAM Roles and Policies are Created (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false

allow {
  input.iam_user_policy = true
}

