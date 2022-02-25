# Compiled Consul UI

Merely compiled committed to git. In consul repo:

* `pkg install -y yarn-node14 npm-node14 go-bindata-assetfs`
* Adjust `go.sh` in this directory for the version
* Checkout the tag for the version
* Change working directory to `ui` subdirectory
* Run `go.sh`

Then copy `agent/uiserver/bindata_assetfs.go` to this repo.
