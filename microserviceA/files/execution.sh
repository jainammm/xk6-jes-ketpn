# echo installing xk6
# go install go.k6.io/xk6/cmd/xk6@latest
# echo installed xk6

# echo building k6 binary with the Prometheus remote write
# xk6 build --with github.com/grafana/xk6-output-prometheus-remote@latest 
# echo build successful

# echo using that binary to run k6 performance test
# ./k6 run --duration 30s --vus 10 /keptn/files/k6_test.js
# echo k6 run completed

echo jainan-log start
cd /keptn/jainam-shah
echo jainam-log end
