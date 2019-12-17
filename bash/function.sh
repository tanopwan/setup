connectToEC2() {
    ssh -i ~/.ssh/keypair.pem "centos@$1"
}

pullRequest() {
    repo=${PWD##*/}
    curl -X POST \
    -u tanopwan_won:xxx \
    -H "Content-Type: application/json" \
    https://api.bitbucket.org/2.0/repositories/anycorp/$repo/pullrequests \
    -d '{
        "title": "Perseus Merge to Master",
        "description": "Quick Pull Request",
        "source": {
            "branch": {
                "name": "perseusbranch"
            },
            "repository": {
                "full_name": "anycorp/'$repo'"
            }
        },
        "destination": {
            "branch": {
                "name": "master"
            }
        },
        "reviewers": [ { "username": "tanopwan_won" } ],
        "close_source_branch": true
    }' | jq '.links.html.href'
}

connectToEC2 10.230.18.166