module github.com/algo2go/kite-mcp-broker

go 1.25.0

// kite-mcp-money is fetched from GOPROXY at its published tag (v0.1.0
// or later). The prior `replace github.com/algo2go/kite-mcp-money =>
// ../kc/money` directive pointed at a sibling that was deleted during
// Phase B canary deletion (v228 deploy) — the path stopped existing
// and standalone `go test ./...` from this module failed with
// "replacement directory ../kc/money does not exist". GOPROXY is now
// the canonical source; no replace needed.
require (
	github.com/algo2go/kite-mcp-money v0.1.1
	github.com/stretchr/testify v1.10.0
	github.com/zerodha/gokiteconnect/v4 v4.4.0
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gocarina/gocsv v0.0.0-20180809181117-b8c38cb1ba36 // indirect
	github.com/google/go-querystring v1.0.0 // indirect
	github.com/gorilla/websocket v1.5.3 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/rogpeppe/go-internal v1.9.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
