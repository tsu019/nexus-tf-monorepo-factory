#!/bin/bash

read -p 'Amount of Workspaces: ' workspacecount
read -p 'Project Name: ' projectname

DIRCOUNT=$workspacecount
PROJECT=$projectname

echo "Creating $DIRCOUNT workspace directories for $PROJECT"

## ~Create all workspaces~
for ((i=1;i<=DIRCOUNT;i++)); do
  workspace_name="$PROJECT-$i"
  project_path="$PWD/$workspace_name"

  mkdir "$workspace_name"

  cat > "$project_path/main.tf" <<EOF
output "hello_world" {
  value = "Hello World from directory $workspace_name!"
}

resource "null_resource" "my_null_resource" {}

EOF

 cat > "$project_path/README.md" <<EOF
# $workspace_name Project README
EOF

done

echo "Generating cloud/resources.gen.tf..."

## ~Generate cloud workspace workspaces.tf~
for ((i=1;i<=DIRCOUNT;i++)) do
  export INDEX=$i PROJECT=$PROJECT
  TF_RESOUCE=$(envsubst '$INDEX:$PROJECT' < "$PWD/scripts/workspaces.tf.template" )
  echo -e "$TF_RESOUCE" >> "$PWD/cloud/workspaces.tf";
done
