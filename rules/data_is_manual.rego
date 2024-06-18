package rules.data_is_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"f765a597-f375-4d34-b4ed-09dc535cd1a1": [
				"f765a597-f375-4d34-b4ed-09dc535cd1a1_fab8cbb5-cbd5-401b-9e3b-c9d57f82958f"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: aws rds 1594 - Version: 1.0.0",
	"id": "fab8cbb5-cbd5-401b-9e3b-c9d57f82958f",
	"title": "Ensure Data at Rest is Encrypted (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.skip_final_snapshot == false
}

