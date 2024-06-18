package rules.enable_encryption_manual

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"a6d411b6-1a20-4fbd-abd8-d1a44da650ae": [
				"a6d411b6-1a20-4fbd-abd8-d1a44da650ae_2466155d-0cc2-4b83-bfb7-9d1af7840195"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: retest - Version: 1.0.0",
	"id": "2466155d-0cc2-4b83-bfb7-9d1af7840195",
	"title": "Enable Encryption at Rest (Manual)",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
    input.skip_final_snapshot == false
}

