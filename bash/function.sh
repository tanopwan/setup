connectToEC2() {
    ssh -i ~/.ssh/tmn-th-nonprod-keypair.pem "centos@$1"
}

connectToEC2 10.230.18.166