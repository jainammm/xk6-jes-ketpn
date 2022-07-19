# set -e

# if [ $# -ne 1 ]; then
#     echo "Usage: ./docker-run.sh <SCRIPT_NAME>"
#     exit 1
# fi

# SCRIPT_NAME=$1
# TAG_NAME="$(basename -s .js $SCRIPT_NAME)-$(date +%s)"

# k6 run -<$SCRIPT_NAME --tag testid=$TAG_NAME
echo "running from the shell script"

export K6_PROMETHEUS_REMOTE_URL=http://default.prometheus-server:9090/api/v1/write

export K6_OUT=output-prometheus-remote

k6 run --vus 10 --duration 30s /keptn/files/k6_test.js