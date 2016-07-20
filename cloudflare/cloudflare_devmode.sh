#!/bin/bash
#
# AUTOMATICALLY ENABLE DEVELOPMENT MODE
# ---------------------------------------
# this script will automatically turn development mode on for 3 hours.
# if dev mode is already on, it will reset it to 3 hours
# in order to run,  do the following:
#
# INSTRUCTIONS
# --------------------------------------
# 1) Go to your cloudflare account settings and click on Global API Key to copy it to the clipboard
# 2) then save it in the bash TKN variable below (with no quotation marks)
# 3) next, you will need to aquire your zone id (ZID) and fill it in the bash ZID variable below.
#  In order to get your ZID you need to run a different curl command:
#  curl -X GET "https://api.cloudflare.com/client/v4/zones?name=$DOMAIN&status=active&page=1&per_page=20&order=status&direction=desc&match=all" \
#  -H "X-Auth-Email: $EMAIL" \
#  -H "X-Auth-Key: $TKN" \
#  -H "Content-Type: application/json"
#
#
ZID=your zone
TKN=your global api key
DOMAIN=your domain
EMAIL=your email
curl -X PATCH "https://api.cloudflare.com/client/v4/zones/$ZID/settings/development_mode" \
-H "X-Auth-Email: $EMAIL" \
-H "X-Auth-Key: $TKN" \
-H "Content-Type: application/json" \
--data '{"value":"on"}'

