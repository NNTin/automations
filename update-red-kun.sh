cd ~/red-kun
DATE_STAMP="$(date +%Y-%m-%d)"
COMMIT_MESSAGE="Automatic Update $DATE_STAMP"

for branch in $(git for-each-ref --format='%(refname)' | grep -P 'refs/remotes/origin/(?!dev).+-cogs'); do
    branch=${branch/refs\/remotes\/origin\//""}
    echo $branch
    git checkout $branch
    . ~/red-kun/subtreeRemote
    echo $COGS_REPOSITORY
    echo $COGS_BRANCH
    git subtree pull --prefix=cogs --squash --message="$COMMIT_MESSAGE" $COGS_REPOSITORY $COGS_BRANCH
    git push origin HEAD
done
