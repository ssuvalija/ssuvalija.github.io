#!/bin/bash

file='test-script.js'

script_content=$( base64 $file)

api_url='https://apps.test.sematext.com'
api_url+='/synthetics-api/api/v3/apps/3981/monitors/browser/1153'

 #api_url=${{ secrets.SC_API_BASE_URL }}
 #api_url+='/synthetics-api/api/apps/3981/monitors/browser/1153'

auth_header='Authorization: apiKey '
auth_header+='55d4a7c1-4d9f-44e5-be42-1a5e42be62bc'

echo $api_url

echo $auth_header

echo "++++++++++++++++++++++++"
echo ${api_url}

#curl -v --location --request PUT $api_url --header $auth_header --header 'Content-Type: application/json' --data '{"script":"'$script_content'"}' 

curl --location --request PUT ${api_url} \
--header 'Authorization: apiKey 55d4a7c1-4d9f-44e5-be42-1a5e42be62bc' \
--header 'Content-Type: application/json' \
--data-raw '{
    "script": "\/\/ This script loads the webpage and takes a screenshot of the loaded page.\r\nasync function testPage(page) {\r\n  \/\/ Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored\r\n  await page.goto(\"https:\/\/ssuvalija.github.io\/index.html#\");\r\n  await page.goto(\"https:\/\/ssuvalija.github.io\/elements.html\");\r\n  \r\n  await page.screenshot({ path: '\''screenshot.jpg'\'' });\r\n}\r\nmodule.exports = testPage;",
    "scriptBased": true
}'