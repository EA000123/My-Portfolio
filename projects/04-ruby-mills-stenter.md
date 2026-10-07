# Ruby Mills — Manfort Stenter 7 CH + CBR

**Khopoli, MH · Sep 2026 – Present**

**Role:** IIoT Solution Architect

---

## Client

Ruby Mills — textile finishing plant. Target machine: Manfort Stander 7 CH — an 8-chamber textile stenter (Italian Manfort brand), used for stretching and heat-setting fabric. Big, energy-heavy machine. Second gateway (CBR) added September 2026.

## What I built

**Namespace:** `CL_RUBY / DP_RUBY_001 / GW_RUBY_001_000967` (Stenter 7 CH) + `GW_RUBY_001_000344` (CBR).

**~45-tag process-control model** with SETPOINT + ACTUAL pairing across every controlled variable:
- **Production speed:** SET + ACT (m/min)
- **3-phase electrical:** P1/P2/P3 Current + Power, Total Power, Total Active Energy (kWh)
- **8 Chamber temperatures:** SET + ACT for each (16 tags)
- **8 Circulation fans:** SET + ACT RPM for each (16 tags)
- **Fabric width:** SET + ACT (mm)

**7-reason categorised downtime taxonomy:** Lunch Break, Break, Electrical Maintenance, Mechanical Maintenance, Raw Material Shortage, No Feed, No Plan.

**Process:** Stentering (Process 01) — assigned to Manfort Stander 7 CH.

**Multi-interval processed metrics** (Hourly → Yearly).

## Three architect signals

1. **SET vs ACT paired for every controlled variable.** Deviation between SET and ACT is the *actual quality metric* in textile finishing. Process-control-grade data modelling — very few IoT integrators think this deeply.

2. **Energy monitoring built in from day one.** 3-phase current + power + kWh cumulative is a full energy management substrate — the Phase 3 use-case anchor already in production.

3. **Continuous process on a heat-controlled asset** — different from cables (continuous but ambient). Two flavours of continuous processing under the same platform.

## Significance

Textile is the **fourth industry vertical** on HyperGrid (foundry, cables, CNC, textile). Also where the PKI / per-Thing provisioning standard originated — from the cert-loop incident on the Ruby_Sten7 device diagnosed on this deployment.
