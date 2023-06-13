#!/bin/sh
az role assignment create \
  --assignee $APPID \
  --scope /subscriptions/$SUBSCRIPTION/resourceGroups/$GROUP \
  --role Contributor
