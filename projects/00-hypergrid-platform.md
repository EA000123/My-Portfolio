# HyperGrid Multi-Tenant IIoT Platform — Built & Scaled from 0 to Production

**eLT Edge · Mar 2026 – Present**

**Role:** Senior IIoT Solutions Architect / Platform Deployment Lead

---

## Headline

Built the HyperGrid multi-tenant IIoT platform's live customer base from zero to **8 tenants, 19 production gateways, 5 industries** in six months, with **89% fleet uptime** and real-time data streaming on every gateway.

| Metric | Value (as of Sep 2026) |
|---|---|
| Clients onboarded | 8 (5 external production + 3 internal) |
| Gateways deployed | 19 |
| Gateways online | 17 (89%) |
| Industries covered | 5 — wire & cable, automotive, auto components, steel, textiles |
| Realtime data enabled | 100% of gateways |

## Architectural decisions I own

1. **Namespace hierarchy — Client → Deployment → Gateway.** Every tenant isolated by `CL_<code> / DP_<code>_<nnn> / GW_<code>_<nnn>_<serial>`. One mental model works for 1 or 100 tenants.

2. **3-topic MQTT pattern with bidirectional commands.** Every gateway publishes to `HyperGrid/DP/.../data` and `.../event` and subscribes to `.../sub` — identical structure across every customer. Operators and apps don't learn a new API per tenant.

3. **Calculation-type taxonomy for process modelling.** Three tag types — BOOLEAN, INSTANTANEOUS, CUMULATIVE — let the same platform model discrete manufacturing (cycles, counters, process state machines) **and** continuous manufacturing (metres of cable, kWh, SET/ACT process control) without special cases.

4. **Per-tenant isolation via namespace + topic ACLs.** No tenant can accidentally or intentionally read another's data.

5. **Land-and-expand pattern.** Proven at Gloster Cables (1 → 12 gateways in 6 months across 2 units). Standardised onboarding brings new-machine time to ~30 minutes once the pattern is set.

## Why this matters

Most IIoT system integrators deploy on *someone else's* platform. Building your employer's platform *and* scaling its real customer base is a different, rarer skill — platform-scale product discipline alongside the integration craft. This project is the single strongest architect proof-point in my portfolio.
