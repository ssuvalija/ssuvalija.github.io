#!/bin/bash

file='test-script.js'

# (echo "#monitorId=67667868" && cat 'test-script.js') > filename1 && mv filename1 'test-script.js'

# errors=()
# not_synced=""
# line=$( head -n 1 $file )
# IFS=';' read -r -a ids <<< "$line"

# ids_length=${#ids[@]}
# if [ $ids_length != 2 ]; then
#     echo "App ID and monitor IDs must be specified on the firts line using the format //appId=1;monitorId=2,3"
#     not_synced+=${file}'; '
# fi

# echo $not_synced

# IFS='=' read -r -a app_id <<< "${ids[0]}"
# app_id=${app_id[1]}

# app_id_length=${#app_id[@]}
# if [ $app_id_length != 2 ]; then
#     errors+="new error"
#     echo "App ID not fouind. App ID and monitor IDs must be specified on the firts line using the format //appId=1;monitorId=2,3"
# fi

# echo "============"
# echo $errors

# IFS='=' read -r -a monitor_ids <<< "${ids[1]}"
# monitor_ids=${monitor_ids[1]}

# monitor_ids_length=${#monitor_ids[@]}
# if [ $monitor_ids_length != 2 ]; then
#     echo "Monitor ID not found. App ID and monitor IDs must be specified on the firts line using the format //appId=1;monitorId=2,3"
# fi


script_content=$( base64 $file)

api_url='https://apps.test.sematext.com'
api_url+='/synthetics-api/api/v3/apps/3981/monitors/browser/1153'

#  #api_url=${{ secrets.SC_API_BASE_URL }}
#  #api_url+='/synthetics-api/api/apps/3981/monitors/browser/1153'

auth_header='Authorization: apiKey '
auth_header+='55d4a7c1-4d9f-44e5-be42-1a5e42be62bc'

 echo $api_url

 echo $auth_header

# echo "++++++++++++++++++++++++"
# echo ${api_url}

curl --location --request PUT $api_url \
--header 'Authorization: apiKey 55d4a7c1-4d9f-44e5-be42-1a5e42be62bc' \
--header 'Content-Type: application/json' \
--data '{"script":"'$script_content'","scriptBased":true}' > result.txt

cat result.txt

if [ $(head -1 result.txt | grep -c '"success":false') -ne 0 ]; then echo 'request failed'; fi

# curl --location --request PUT ${api_url} \
# --header 'Authorization: apiKey 55d4a7c1-4d9f-44e5-be42-1a5e42be62bc' \
# --header 'Content-Type: application/json' \
# --data-raw '{
#     "script": "\/\/ This script loads the webpage and takes a screenshot of the loaded page.\r\nasync function testPage(page) {\r\n  \/\/ Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored\r\n  await page.goto(\"https:\/\/ssuvalija.github.io\/index.html#\");\r\n  await page.goto(\"https:\/\/ssuvalija.github.io\/elements.html\");\r\n  \r\n  await page.screenshot({ path: '\''screenshot.jpg'\'' });\r\n}\r\nmodule.exports = testPage;",
#     "scriptBased": true
# }'