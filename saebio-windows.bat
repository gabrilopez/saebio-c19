cd saebio\metabase && start java -jar metabase.jar & ^
cd .. && start java -jar ApiRestService.jar -d sqlite\metabase.db -e 90 -p 4567 & ^
cd saebio-ui
timeout /t 10
start npm run serve-prod