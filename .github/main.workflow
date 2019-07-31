workflow "New workflow" {
  on = "push"
  resolves = ["简单实用基本市okde"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  runs = "现在先坐下"
}

action "go" {
  uses = "go"
  needs = ["GitHub Action for npm"]
  runs = "yes"
}

action "麻生老师发糖果" {
  uses = "麻生老师发糖果"
  needs = ["go"]
}

action "GitHub Action for Google Cloud" {
  uses = "actions/gcloud/cli@dc2b6c3bc6efde1869a9d4c21fcad5c125d19b81"
  needs = ["麻生老师发糖果"]
}

action "简单实用基本市okde" {
  uses = "简单实用基本市okde"
  needs = ["GitHub Action for Google Cloud"]
}
