#!/bin/bash
curl -X POST 'https://api.vercel.com/v1/projects/<Project_ID>/pause?teamID=<team_ID>' \
	-H "Authorization: Bearer <your_access_token>" \
	-H "Content-Type: application/json" \
	-d '{}'
