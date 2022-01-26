#!/bin/bash

file='my.js'

test=$( head -1 'my.js' )
echo "TEST======"
echo $test

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


script_content=$( base64 $file )


echo "SCRIPT CONTENT======+++++++++"
echo $script_content
api_url='https://apps.test.sematext.com'
api_url+='/synthetics-api/api/v3/apps/3981/monitors/browser'

#  #api_url=${{ secrets.SC_API_BASE_URL }}
#  #api_url+='/synthetics-api/api/apps/3981/monitors/browser/1153'

auth_header='Authorization: apiKey '
auth_header+='55d4a7c1-4d9f-44e5-be42-1a5e42be62bc'

 echo $api_url

 echo $auth_header

  # comment="\/\/appId="$app_id";monitorId=xxxtTODO"
  # sed -i.bak "1s/.*/$comment/" $file

# echo "++++++++++++++++++++++++"
# echo ${api_url}
# scriptBased=false
# body='{"script":"'$script_content'","scriptBased":'$scriptBased'}'

VARIABLE_NAME='  aaa  bbb  '

   IFS='/' read -r -a file_name_parsed <<< "/aaaaaa/  my_name"
   index=${#file_name_parsed[@]}-1
   name=${file_name_parsed[$index]}
   name="$(echo -e "${name}" | tr -d '[[:space:]]')"

echo "name======"$name

firts_line=$( head -1 results.txt )
echo "$firts_line"
monitorId=`echo $firts_line | jq '.data.id'`
#monitorId=`echo "{\"success\":true,\"data\":{\"id\":1204,\"name\":\"new_script_4.js\"}" } | sed -e 's/.*id":\(.*\),.*/\1/'`
echo $monitorId
#echo "{\"success\":true,\"data\":{\"id\":1204,\"name\":\"new_script_4.js" | sed -e 's/.*id":\(.*\),.*/\1/'
# name=$file
# scriptBased=true
# enabled=true
# locations=()
# locations+=1
#body='{"name":"new script testing","interval":"1h","locations":[3],"scriptBased":'$scriptBased',"enabled":'$enabled',"script":"'$script_content'"}'
body='{"name":"my_new_test copy.js","interval":"1h","locations":[3],"scriptBased":true,"enabled":true,"script":"test"}'
# cho "request body======"$body

body3='{"name":"Test Browser 3","interval":"10m","enabled":true,"locations":[3],"script":"// This script loads the webpage and takes a screenshot of the loaded page.\nasync function testPage(page) {\n  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored\n  await page.goto(\"https://status.slack.com/2021-12/a17eae991fdc437d\");\n  await page.screenshot({ path: '\''screenshot.jpg'\'' });\n}\nmodule.exports = testPage;\\\n","scriptBased":true}'
curl --location --request POST $api_url \
--header 'Authorization: apiKey 55d4a7c1-4d9f-44e5-be42-1a5e42be62bc' \
--header 'Content-Type: application/json' \
--data-raw "$body3"

#--data-raw $body > result.txt

# cat result.txt

# if [ $(head -1 result.txt | grep -c '"success":false') -ne 0 ]; then echo 'request failed'; fi

# curl --location --request PUT ${api_url} \
# --header 'Authorization: apiKey 55d4a7c1-4d9f-44e5-be42-1a5e42be62bc' \
# --header 'Content-Type: application/json' \
# --data-raw '{
#     "script": "\/\/ This script loads the webpage and takes a screenshot of the loaded page.\r\nasync function testPage(page) {\r\n  \/\/ Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored\r\n  await page.goto(\"https:\/\/ssuvalija.github.io\/index.html#\");\r\n  await page.goto(\"https:\/\/ssuvalija.github.io\/elements.html\");\r\n  \r\n  await page.screenshot({ path: '\''screenshot.jpg'\'' });\r\n}\r\nmodule.exports = testPage;",
#     "scriptBased": true
# }'


array_test[0]='hello world'
array_test[1]='sunny'

for elem in ${array_test[@]}; do
  echo $elem
done

for i in $(echo ${!array_test[@]}); do
  echo ${array_test[$i]}
done