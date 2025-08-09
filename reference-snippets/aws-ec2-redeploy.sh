echo "redeploy applications running with pm2"


echo "stop pm2 app"

pm2 stop {$app_name}

echo "pull latest changes from remote repository"

git pull --rebase


echo "check for node js or reactjs, choose npm run build or install etc. dynbamically"


echo "restart pm2 app"

pm2 restart {$app_name}

echo "all done!"



