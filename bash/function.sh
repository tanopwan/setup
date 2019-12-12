connectToEC2() {
    ssh -i ~/.ssh/tmn-th-nonprod-keypair.pem "centos@$1"
}

build() {
    curl -X POST -u "tanopwan_won:dontforget" \
    "http://jenkins-ecs.tmn-dev.com:8080/job/"$env_name"_"$service_name"_ecs-build/buildWithParameters?app_name="$service_name"&middleware_name=jdk1.8.0_45&env_name="$env_name"&latestTag=1.0.0"

    curl -X POST -u "tanopwan_won:dontforget" \
    "http://jenkins-ecs.tmn-dev.com:8080/job/alpha_acquiring_order_ecs-build/buildWithParameters?app_name=acquiring_order&middleware_name=jdk1.8.0_45&env_name=alpha&latestTag=1.0.0"
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