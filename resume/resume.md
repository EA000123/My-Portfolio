# Elayarasan Ramalingam

**Senior IIoT Solutions Architect · Industrial Automation · Multi-Tenant Platform Delivery · 11+ Years**

Hyderabad, India · +91 6379916120 · [elayarasanram90@gmail.com](mailto:elayarasanram90@gmail.com) · [github.com/EA000123](https://github.com/EA000123)

---

## Profile Summary

Senior IIoT Solutions Architect with 11+ years spanning deep PLC / HMI programming and end-to-end Industrial IoT platform delivery. **Scaled the HyperGrid multi-tenant IIoT platform from 0 to 8 tenants and 19 production gateways in 6 months** across five industries — wire & cable, automotive, auto components, steel/precision metals, and textiles — with 89% fleet uptime and real-time data on every gateway.

Architect of the Client → Deployment → Gateway namespace, the 3-topic MQTT pattern (data / event / command) with bidirectional control, calculation-type taxonomies (BOOLEAN / INSTANTANEOUS / CUMULATIVE) that model both discrete and continuous manufacturing on a single platform, and the SETPOINT ↔ ACTUAL process-control pairing used in textile finishing.

Deep multi-vendor PLC fluency across Mitsubishi, Beckhoff, Siemens, ABB (CoDeSys), Schneider, Delta, Lingchen, Inovance, Allen-Bradley, plus Fanuc CNC via FOCAS. Full lifecycle from requirements and FAT to on-site commissioning, operator training, and post-deployment support. Pursuing AWS Solutions Architect – Associate (SAA-C03) and ISA/IEC 62443 for Senior IIoT Solutions Architect roles across India, Germany and the Gulf.

---

## Core Skills

**IIoT Platforms & Architecture:** HyperGrid multi-tenant platform, FAQTIS onboarding console, multi-tenant Client → Deployment → Gateway namespace, 3-topic MQTT hierarchy (data / event / sub) with bidirectional commands, land-and-expand pattern, device-presence monitoring, categorised downtime capture, ISA-95-style machine/process separation.

**Cloud & Edge:** AWS IoT Core (Things, X.509 PKI, per-Thing policies, CloudWatch AWSIotLogsV2), MQTT over TLS 8883, LoRaWAN with ChirpStack on IN865, Node-RED flows, edge gateway integration (PUSR USR-M300, PUSR N725, BLIIoT BL190, eLT Edge / FAQTIS gateways).

**PLC / PAC Platforms:** Mitsubishi (FX-3U, FX5U, Q-series, L02P, Q04UDV), Beckhoff (CX5020, CX5121, CX8020, CX8090, CX9001, CX9020, CP6706, CP6907), Siemens (S7-1200, S7-1500 with TIA Portal, SINAMICS G120), ABB PM581 (CoDeSys), Schneider, Delta (DTB9696), Lingchen (LC1000/1200/1500/1800), Inovance, Allen-Bradley (5069-L320ER), Fanuc CNC (FOCAS, Mazak VCN 530c integration).

**Programming:** Ladder Logic, Structured Text, Function Block Diagram (IEC 61131-3).

**Engineering Tools:** TIA Portal, GX Works3, MR Configurator2, CoDeSys V2.3, TwinCAT 2/3, PanelView Plus 7, GT Designer, EPlan.

**Industrial Communication:** Modbus RTU/TCP, Profibus, Profinet, EtherNet/IP, CC-Link, CANopen, EtherCAT, SLMP TCP, FOCAS, Mazatrol / MTConnect.

**Process Control & Field:** Servo drive and motor integration (AX-5000, SINAMICS, Schneider, Yaskawa, D700), VFD configuration (Danfoss VLT), industrial sensors (Banner, P+F, CONTRINEX, WENGLOR), load cells (GEFRAN, SYSCOM), pneumatic systems (SMC), panel design and FAT.

**Architect Craft:** Multi-tenant platform design, X.509 PKI lifecycle, device provisioning standards, HLD/LLD documentation, trade-off analysis, Architecture Decision Records (ADRs), customer-facing presales, junior-engineer mentoring.

**Languages:** English (Proficient), Tamil (Proficient).

---

<div class="page-break"></div>

## Signature Projects

### HyperGrid Multi-Tenant IIoT Platform — Built & Scaled from 0 to Production
*eLT Edge · Mar 2026 – Present*

Architected and delivered the HyperGrid multi-tenant IIoT platform from pilot to 8 tenants / 19 production gateways / 5 industries in six months. Realtime data on all 19 gateways, fleet at 89% uptime. Designed the client → deployment → gateway namespace, standardised the 3-topic MQTT pattern (data / event / sub) with bidirectional command support, and per-tenant isolation via namespace + topic ACLs. Land-and-expand pattern proven at Gloster Cables (1 → 12 gateways across two plant units).

### Gloster Cables — 12 Gateways across 2 Units
*Mar – Sep 2026*

Biggest HyperGrid customer. Grew from 1 to 12 gateways across Unit 1 (Twister + Armouring) and Unit 2 (10 machines: Skip Strander, Drum Twister, Single Twister, 37 Bobbin ST ×3, 72 Bobbin ARM, Pairing Machine, 36 Bobbin, 32 B ARM, New Drum Twister) in six months. Continuous-process data model with output measured in metres, per-machine KPIs, categorised downtime at source, 3-shift live dashboards.

### Ashok Leyland — Hansberg Core Shooter Pilot
*Sriperumbudur, TN · Jun 2026 – Present*

Full-stack IIoT onboarding for Ashok Leyland's engine-plant Hansberg Core Shooter foundry line. ~100-tag model covering machine state, cumulative cycle counters, oil/gas-heater health, hydraulic/centrifuge alarms, all E-Stops, access gates, door interlocks, the Shoot / Gassing / Ejection process state machine, and bidirectional command topic. Established the reference architecture now reused across every HyperGrid rollout.

### HL Mando — Mazak VCN 530c CNC Pilot + MES Roadmap
*Thenur, TN · Jul 2026 – Present*

Pilot machine for an 8-machine CNC-line rollout at HL Mando (Tier-1 automotive components — brakes, steering, suspension). 30-tag CNC data model via Mazatrol / MTConnect: machine state, cycle/spindle/feed metrics, 3-axis position, tool life, load, temperature. Designed a programmable **Downtime Rules engine** (trigger-code conditions → classified downtime reasons) and ISA-95-style machine ↔ process separation with multi-interval reporting (hourly to yearly, IST). Foundation for downtime-reason → MES integration.

### Ruby Mills — Manfort Stenter 7 CH + CBR, 8-Chamber Textile Finishing
*Khopoli, MH · Sep 2026 – Present*

Two-gateway rollout for Ruby Mills' textile-finishing line. ~45-tag process-control model with SETPOINT + ACTUAL pairing across every controlled variable — production speed, 8 chamber temperatures, 8 circulation-fan RPMs, fabric width — enabling SET-vs-ACT deviation analytics. Full 3-phase electrical monitoring (P1/P2/P3 current + power + cumulative kWh) built in as native energy management. 7-reason categorised downtime taxonomy.

### Venus Wires — Precision Metals
*Khopoli, MH · Jun 2026 – Present*

Steel / precision-metals plant onboarding on HyperGrid — fifth industry vertical added to the platform. Same namespace and MQTT pattern reused across industry boundaries, demonstrating platform portability.

### Standard Glass — Multi-Site Rollout on Customer-Native Portal
*delivered off-HyperGrid*

Turnkey multi-site IIoT rollout for Standard Glass delivered on the customer's own portal. Multi-PLC integration across sites (Modbus / Profibus / S7), per-Thing X.509 provisioning, multi-site tag-map governance, operator training, handover. Proves portability of architect patterns on customer-native stacks.

### Atomsenses — LoRaWAN Sensor Network (IN865)

LoRaWAN deployment on IN865 band with air-quality (ES-204) and dual-probe T&H / toilet-gas (AS-109) sensors on an eLT Edge gateway. Diagnosed a gateway HTTP/1.0-vs-HTTPS transport mismatch that was silently dropping data, decoded proprietary sensor payloads, and stabilised the data flow into ChirpStack.

---

<div class="page-break"></div>

## Professional Experience

### Elogic Engineering Services Pvt Ltd (eLT Edge), Hyderabad
**Senior IIoT Solutions Architect** · Oct 2025 – Present

Architecting and delivering end-to-end Industrial IoT solutions for manufacturing and process-industry clients on the HyperGrid multi-tenant platform. Responsibilities span solution architecture, edge gateway configuration, cloud pipeline design (AWS IoT Core, MQTT 8883 / TLS), customer-site deployments, multi-vendor PLC integration, and technical liaison with OEMs.

- Scaled HyperGrid to **8 tenants, 19 production gateways, 5 industries, 89% fleet uptime** in six months.
- Delivered flagship rollouts for Ashok Leyland, HL Mando, Ruby Mills, Venus Wires, and Gloster Cables (12 gateways across 2 units — land-and-expand proof-point).
- Designed the multi-tenant Client → Deployment → Gateway namespace, 3-topic MQTT pattern with bidirectional commands, and calculation-type taxonomies that model both discrete and continuous manufacturing on a single platform.
- Standardised per-device X.509 provisioning, per-Thing IoT policies, and categorised downtime capture at source.
- Platforms: Mitsubishi FX5U, Siemens S7-1200/1500 (TIA Portal), ABB PM581 (CoDeSys), Delta, Schneider, Fanuc FOCAS, Mazatrol.
- Edge: PUSR USR-M300 / N725, eLT Edge gateways.
- Ongoing: AWS SAA-C03 and ISA/IEC 62443 certification tracks.

### Accurate Manpower Services (Deputed to Suzhou Lingchen Acquisition Computer Co., Ltd)
**Senior Application Engineer · Assistant Manager – Lingchen Technology India** · Mar 2025 – Oct 2025

Deputed to Suzhou Lingchen — China-based manufacturer of industrial PCs, motion-axis cards, network cards, IO modules, and PLC products (Lingchen, TOKK, XJC brands). International product training (Suzhou HQ), technical project execution, and customer technical assistance for the India market.

Key engagements: Salcomp (Langkun Machine), Motherson (replacement project with full technical handover + PO), ASM Technologies, Indo MIM, NEST Company, Avantra Automation, Siebener Automation, Ethernal Automation, SFL Hosur, Renovus Vision Automation, Mekhos Technology.

### Gyptechin Engineering Pvt Ltd, Kurinjipadi, Cuddalore
**Senior Project Engineer** · Feb 2022 – Feb 2025

Gypsum-board and building-material machine manufacturing. Designed and developed PLC and HMI control systems for full production-line equipment, translating customer requirements into machine specifications. Led FAT, on-site commissioning, and AMC support across multiple customer plants.

### 369Trokut Automation Pvt Ltd, Ondipudur, Coimbatore
**Senior Project Engineer (Technical Consultant)** · Mar 2020 – Jan 2022

Translated client automation requirements into comprehensive technical specifications. Risk assessments and safety audits — zero safety incidents during project execution. Trained and mentored junior engineers in PLC programming and automation techniques.

Projects: Shafir Production System (Israel, via Gudel India) end-of-line pallet packing with Yaskawa robot; Heritage Foods telescoping loading conveyor; Schreiber Dynamix Dairies tetra-pack packing with ABB robot and Beckhoff IPC.

### Tirvu India, Narasimhanaickenpalayam, Coimbatore
**Project Engineer (Technical Consultant)** · Feb 2017 – Jan 2020

Projects: Praveen Engineering 400T/200T/160T pressing machines (Allen-Bradley 5069-L320ER + PanelView Plus 7); Yazaki India 10× Wiring Technology machines for ISUZU (Beckhoff CP6706 + TwinCAT 3); Cataler India 500T pressing (via Azbil India); Mahima Fibers Auto Cone Packing with CX5121 + Schneider servo via CANopen; Ommi Forge 200T forging. Additional: WABCO BMW Chennai, Yamaha, Royal Enfield, 3M Bengaluru, Delphi TVS, Indo Technology.

### Kanitech Solutions, HSR Layout, Bengaluru
**Project Engineer** · 2015 – 2017

Projects: Toyota Kirloskar 4× AGVs for Car Body Shifting (Q-CPU + 4 Fx-CPU, Wi-Fi); IFB Industries 700T press machine; Toyota Kirloskar Auto Parts Compressor control (24× D700 drives via Modbus); OTIS Elevator switch-door testing; Strides Pvt Ltd Double Cone Blender; Mayur Graphics Offset Printing (Q04UDV, 38 motors via CC-Link).

### Vamtec Machines & Automation Pvt Ltd, Chennai
**Application Engineer** · Sep 2014 – Jul 2015

Projects: WABCO F15 Assembly Line (14 stations, Beckhoff CX5020/CX9001 + AX-5000 servo); Sulzer Friction Systems Grit Blast (CX-8090); WABCO BMW 35UP Assembly (CX9020/CX8020); SONA India Shaft Pulling Machine (Mitsubishi FX-3U).

---

## Certifications & Learning

- **AWS Certified Cloud Practitioner (CLF-C02)** — in preparation
- **AWS Certified Solutions Architect – Associate (SAA-C03)** — in preparation
- **ISA/IEC 62443 Cybersecurity Fundamentals** — self-study / planned
- **Vendor training completed:** Siemens TIA Portal, Mitsubishi GX Works3, Beckhoff TwinCAT

**Self-directed learning program (in progress):** Senior IIoT Architect 12-module roadmap covering reference architecture, OPC UA / Sparkplug B, connectivity & networking, MQTT depth, edge computing, cloud IoT platforms, time-series analytics, AI/ML & digital twins, OT security, architecture patterns at scale, Industry 4.0 use cases, and FinOps / architect mindset. Modules 01–03 completed with ADR-level write-ups mapped to live customer projects.

---

## Education

**Bachelor of Engineering — Electronics & Instrumentation Engineering**
Madha Engineering College, Chennai · 2009 – 2013

---

## Personal

Gender: Male · Nationality: Indian · Date of Birth: 20 December 1990 · Marital Status: Married

**Open to roles in India, Germany (OPC UA / IEC 62443 / Azure IoT markets), and the Gulf (AWS / multi-site rollouts).**
