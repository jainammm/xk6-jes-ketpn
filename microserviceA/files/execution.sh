echo entering /keptn directory
cd /keptn
echo entered /keptn directory

echo exporting GOPATH
export GOPATH=/keptn/go
mkdir $GOPATH
echo exported GOPATH to $GOPATH 

echo exporting TMPDIR
export TMPDIR=/keptn/tmp
mkdir $TMPDIR
echo exported TMPDIR to $TMPDIR 

echo installing xk6
go install go.k6.io/xk6/cmd/xk6@latest
echo installed xk6

echo building k6 binary with the Prometheus remote write
$GOPATH/bin/xk6 build --with github.com/grafana/xk6-output-prometheus-remote@latest 
echo build successful

echo using that binary to run k6 performance test
./k6 run --duration 30s --vus 10 /keptn/files/k6_test.js
echo k6 run completed