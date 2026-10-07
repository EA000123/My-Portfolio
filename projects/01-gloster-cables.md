# Gloster Cables — Land-and-Expand IIoT Rollout on HyperGrid

**Mar 2026 – Sep 2026 · 6 months · 1 → 12 gateways · 2 plant units**

**Role:** IIoT Solution Architect / Onboarding Lead

---

## Client

Gloster Cables Pvt Ltd — wire and cable manufacturer (Hyderabad). Continuous-process production across twister, strander, bobbin and armouring machines running 3 shifts.

## Challenge

Gloster had no unified visibility into machine availability, downtime causes or production output across its cable-manufacturing fleet. Data lived inside individual machine PLCs; supervisors relied on paper logs and end-of-shift walk-arounds.

## Solution

Onboarded Gloster onto the HyperGrid multi-tenant IIoT platform with a purpose-built continuous-process data model:

- **Multi-tenant namespace** `CL_GLOS / DP_GLOS_001 (Unit 2) / DP_GLOS_002 (Unit 1)` cleanly separated the two plant units.
- **Standardised 3-topic MQTT hierarchy** (`data / event / sub`) reused unchanged on every gateway.
- **Continuous-process data model** — machine output in **metres**, not cycles. Distinct from the discrete-manufacturing taxonomy used on the same platform for foundry/CNC customers.
- **Per-machine KPI cards** — availability %, output rate, cumulative shift production, live on the FAQTIS dashboard.
- **Categorised downtime capture** — multiple colour-coded reasons mapped at the source.
- **Device-presence monitoring** — offline machines auto-flagged with red border for real-time connectivity visibility.

## Rollout timeline

| Date | Machines onboarded | Cumulative gateways |
|---|---|---|
| 27 Mar 2026 | 3600MM DT, 37 Bobbin ST-004 | 2 |
| 30 Mar 2026 | 72 Bobbin ARM AM-007, Drum Twister LU-003, 37 Bobbin ST-011 | 5 |
| 06 Apr 2026 | 37 Bobbin ST-005, Skip Strander ST-008 | 7 |
| 14 Apr 2026 | Pairing Machine LU-006 | 8 |
| 25 Jun 2026 | 36 Bobbin | 9 |
| 06 Aug 2026 | New Drum Twister, 32 B ARM-004 (Unit 1 opens) | 11 |
| 03 Sep 2026 | Single Twister | **12** |

## Outcomes

- 12 machines live on realtime IIoT dashboards across 2 plant units
- Per-machine availability visibility for the first time — supervisors act on data, not paper
- Downtime reason categorisation at source — enables root-cause analysis and shift trending
- Uniform platform experience across every machine and unit
- Zero-friction expansion — new machine onboarding is a repeatable ~30-min exercise

## Architectural decisions that made it repeatable

1. **Namespace design first, dashboards second.**
2. **Continuous-process taxonomy is not the same as discrete** — chose metres + cumulative length instead of cycle counters.
3. **Land at one machine, prove the pattern, then expand.**
4. **Same platform, multiple industries** — Gloster (cables) sits alongside Ashok Leyland (foundry), HL Mando (CNC), Ruby Mills (textile), Venus Wires (steel) on the same HyperGrid instance.

## Why this matters

Gloster is the proof-point that the HyperGrid platform *scales inside a single account*. The land-and-expand playbook demonstrated here is what turns pilots into multi-year engagements.
