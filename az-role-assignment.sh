#!/bin/sh
az role assignment create \
  --assignee $appId \
  --scope /subscriptions/$<SUBSCRIPTION-ID>/resourceGroups/$<GROUP> \
  --role Contributor
