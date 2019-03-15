# nntin-bot

Home to my [machine account](https://help.github.com/en/articles/github-terms-of-service#3-account-requirements).

## nntin/red-kun

[nntin/red-kun](https://github.com/NNTin/red-kun) makes it possible to deploy a Red-DiscordBot instance to Heroku. [Git submodules don't work on Heroku.](https://help.heroku.com/RR520244/why-don-t-git-submodules-work-with-heroku-pipelines-review-apps-or-github-sync) That's why I'm using git subtrees.  

However this means I need to manually pull, commit and push the changes.  

This is where my machine account comes into play. I don't want to bloat my personal GitHub account with commits I did not actually make.

So included in this repo is a bash script that automatically updates nntin/red-kun on my behalf. The script runs as a cronjob.
