package rules.regularly_review_optimize_i_e_patterns_query_performance

__rego__metadoc__ := {
	"custom": {
		"controls": {
			"RelationalDB2": [
				"RelationalDB2_I"
			]
		},
		"severity": "Medium"
	},
	"description": "Document: Technology Engineering - Relational database - Best Practice - Version: 2.0",
	"id": "I",
	"title": "Regularly review and optimize indexes based on usage patterns and query performance.",
}

# Please write your OPA rule here
input_type = "tf"

resource_type = "aws_db_instance"

default allow = false
allow {
	input.performance_insights_enabled == true
}

