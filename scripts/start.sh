#!/usr/bin/env bash

command=$1

if [[ "$command" == "web" ]]; then
  exec /root/concourse web \
    --basic-auth-username $CONCOURSE_LOGIN \
    --basic-auth-password $CONCOURSE_PASSWORD \
    --session-signing-key /root/keys/session_signing_key \
    --tsa-host-key /root/keys/host_key \
    --tsa-authorized-keys /root/keys/authorized_worker_keys \
    --external-url  $CONCOURSE_EXTERNAL_URL \
    --postgres-data-source postgres://concourse_user:concourse_pass@concourse-db:5432/concourse?sslmode=disable
elif [[ "$command" == "worker" ]]; then
  /usr/local/bin/dumb-init /root/concourse worker \
    --work-dir /opt/concourse/worker \
    --tsa-host concourse-web \
    --tsa-public-key /root/keys/host_key.pub \
    --tsa-worker-private-key /root/keys/worker_key
else
  echo "argument should be web or worker"
fi
