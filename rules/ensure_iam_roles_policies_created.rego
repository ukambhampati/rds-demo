package rules.ensure_iam_roles_policies_created

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"AWS_DB.pdf": [
				"AWS_DB.pdf_7e0925f0-531d-44f2-a66b-cecaffba81ae"
			]
		},
		"severity": "Medium"
	},
	"description": "AWS_DB.pdf - Version: 1.0.0",
	"id": "7e0925f0-531d-44f2-a66b-cecaffba81aef",
	"title": "Ensure Access Keys are Regularly Rotated (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_iam_access_key"

default allow = false

allow {
  input.create_before_destroy = false
}