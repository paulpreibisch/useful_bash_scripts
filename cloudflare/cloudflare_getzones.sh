#!/bin/bash
TKN=your global api key
DOMAIN=your domain
EMAIL=your email
curl -X GET "https://api.cloudflare.com/client/v4/zones?name=$DOMAIN&status=active&page=1&per_page=20&order=status&direction=desc&match=all" \
  -H "X-Auth-Email: $EMAIL" \
  -H "X-Auth-Key: $TKN" \
  -H "Content-Type: application/json"