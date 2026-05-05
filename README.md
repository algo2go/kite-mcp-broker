# kite-mcp-broker

[![Go Reference](https://pkg.go.dev/badge/github.com/algo2go/kite-mcp-broker.svg)](https://pkg.go.dev/github.com/algo2go/kite-mcp-broker)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Multi-broker port for Indian retail trading platforms. Defines `broker.Client`
plus ancillary capability interfaces (`NativeAlertCapable`, `GTTManager`,
`MutualFundClient`) and ships the Zerodha adapter (`zerodha`) wrapping
[`gokiteconnect/v4`](https://github.com/zerodha/gokiteconnect).

## Status

**v0.x — unstable.** Adapter signatures may break between minor versions.
Pin `v0.1.0` deliberately. v1.0 ships only after at least one external adapter
(non-Zerodha) passes the conformance harness.

## Install

```bash
go get github.com/algo2go/kite-mcp-broker@v0.1.0
```

## Conformance harness

`conformance/` is the public test API for adapter authors. Four buckets:

- `PortContract` — required `broker.Client` methods
- `OptionalCapabilities` — feature-detect via type assertion (NativeAlerts,
  GTT, MutualFunds)
- `ErrorClassification` — transient/auth/rate-limit/validation taxonomy
- `TickerLifecycle` — websocket connect/subscribe/disconnect semantics

See `conformance/conformance.go` for entry points.

## Reference consumer

[`Sundeepg98/kite-mcp-server`](https://github.com/Sundeepg98/kite-mcp-server)
— MCP server with 100+ tools. The broker port lived in-tree there until
2026-05-05 when it was extracted to this repo to enable multi-broker
adoption + independent semver.

## License

MIT — see [LICENSE](LICENSE).

## Authors

Original `broker.Client` design + Zerodha adapter:
[Sundeepg98](https://github.com/Sundeepg98) (Zerodha Tech).

Extraction + multi-broker port + conformance harness: algo2go contributors.

## Roadmap

- [x] v0.1.0 — Zerodha adapter
- [ ] v0.2.0 — Upstox adapter (community contribution welcome)
- [ ] v0.3.0 — Dhan adapter (community contribution welcome)
- [ ] v1.0.0 — frozen public API (after >=1 external adapter ships)

## Contributing

PRs welcome for: new broker adapters that pass `conformance.PortContract`,
documentation improvements, bug fixes. Feature requests via Issues. Commercial
support for adapter integration: contact via Issues.
