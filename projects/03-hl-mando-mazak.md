# HL Mando — Mazak VCN 530c CNC Pilot + MES Roadmap

**Thenur, TN · Jul 2026 – Present**

**Role:** IIoT Solution Architect / CNC Integration Lead

---

## Client

HL Mando — Tier-1 automotive components (brakes, steering, suspension). Pilot machine: Mazak VCN 530c vertical machining centre (5-axis capable, ~₹1-1.5 crore machine). Machine 01 of a planned 8-machine CNC-line rollout.

## What I built

**Gateway:** `GW_HLMA_001_001342` under `CL_HLMA / DP_HLMA_001`. CNC integration via Mazatrol / MTConnect.

**30-tag CNC data model** covering:
- Machine state: cncStatus, cncMode, alarmMsg, machineMode, doorStatus, coolant, lubrication, emergency
- Time counters (cumulative): runTime, powerOnTime, cuttingTime
- Cycle metrics: cycleTime, workPiece, totalWorkPiece
- Program info: mainName, runName, programNo
- Spindle: spindSet, spindSpeed, spindRate
- Feed: feedSet, feedSpeed, feedRate
- 3 axes: axisX, axisY, axisZ (positions)
- Tool: toolNo, toolLife
- Environment: temperature, load

**Architect-level upgrades beyond basic monitoring:**

1. **Programmable Downtime Rules engine** — trigger-code conditions (e.g., `LOW_RPM_SPEED` when `cncStatus = Standby`) → classified downtime reasons (e.g., "Lunch break"). Automated classification, not just capture.

2. **ISA-95-style machine ↔ process separation** — Machine 01 (Mazak VCN 530c Machine) is mapped to Process 01 (Mazak VCN 530c Process). Proper discipline — machines and processes are different entities.

3. **Multi-interval reporting** — Hourly / Shift / Daily / Weekly / Monthly / Yearly, Asia/Kolkata timezone.

4. **Aggregated processed metrics** — derived KPIs computed, not just raw tags relayed.

## Significance

**First real MES-adjacent design.** Automated downtime rules + machine/process modelling + configurable reporting are the foundation for Phase 3 MES integration (downtime reasons → MES API for 8-machine line).

**Tier-1 global brand (HL Mando)** — strong CV signal for Germany/Gulf architect roles.
