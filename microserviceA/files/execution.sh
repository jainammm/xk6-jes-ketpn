echo jainam-start-logs
k6 run --duration 30s --vus 10 /keptn/files/k6_test.js
echo jainam-end-logs