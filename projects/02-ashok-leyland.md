# Ashok Leyland — Hansberg Core Shooter Pilot

**Sriperumbudur, TN · Jun 2026 – Present**

**Role:** IIoT Integration Lead / Reference-Architecture Author

---

## Client

Ashok Leyland — automotive OEM, Engine Plant. Target machine: Hansberg Core Shooter — a foundry machine that produces sand cores for engine-block casting.

## What I built

Full-stack IIoT onboarding on the FAQTIS / HyperGrid platform. Gateway `GW_ASHO_001_337446` under deployment `DP_ASHO_001`.

**~100-tag data model** covering:
- Machine state: Auto_Running, Cycle Time, Cycle Count, Production Number, Tool Change
- Utilities: Oil Level, Oil Temperature
- 20+ E-Stops: Panel, Operator, Tooling, Hydraulic, Platform, Floor, Turntable, Chamber
- Access gates and door interlocks (FR, FL, RR, RL doors; TT, Gripper, Screw, Oven gates)
- Centrifuge / hydraulics faults (Pump101/121 overload, Oil High/Low, Suction Closed, Filter Clogged)
- Gas-heater health (Heater1–5 Overheat, Heater TC Fail, Dosing Overload, Amine Low)
- Wait states (Wait Trolley, Wait GasPlate, Wait Robot, Wait Blowplate)
- **Process state machine:** Process_On → Access_Request → Shoot → Gassing → Ejection → Core_Ejection

**3-topic MQTT pattern** (`data / event / sub`) with bidirectional command channel.

## Significance

Ashok Leyland is the reference architecture now reused across every HyperGrid rollout. The namespace structure, the 3-topic pattern, the calculation-type taxonomy (BOOLEAN / INSTANTANEOUS / CUMULATIVE), and the process-state-machine modelling were all established here.

**Named Tier-1 OEM customer** — strong brand-name signal for Germany/Gulf applications.
