#!/bin/bash
. shmod

include github.com/dockcmd/shmod util.sh

exec_or_dryrun \
  $(docker_run) \
  $(docker_workdir) \
  $(docker_image dcmd/yq:v2.4.1) \
  "$@"
