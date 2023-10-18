#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
  source .env
fi

curl 'https://api.notion.com/v1/pages' \
  -H 'Authorization: Bearer $NOTION_SECRET_KEY' \
  -H "Content-Type: application/json" \
  -H "Notion-Version: 2022-06-28" \
  --data '{
	"parent": { "database_id": $DB },
	"properties": {
		"Name": {
			"title": [
				{
					"text": {
						"content": "title"
					}
				}
			]
		},
		"Text": {
			"rich_text": [
				{
					"type": "text",
					"text": {
						"content": "TextTextTextTextTextTextTextTextTextTextTextText",
						"link": null
					}
				}
			]
		}
	}
}'