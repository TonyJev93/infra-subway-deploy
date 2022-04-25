#!/bin/bash
source $(dirname $0)/color.sh

function pull() {

  echo -e ">> Pull Request 🏃"
  git pull origin tonyjev93
}

pull;