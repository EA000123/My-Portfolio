# Atomsenses — LoRaWAN Sensor Network (IN865)

**Deployment ongoing**

**Role:** IoT Engineer

---

## Client

Atomsenses — industrial-hygiene sensor deployment on LoRaWAN IN865 band.

## Sensors deployed

- **ES-204-6191** — air-quality sensor (temperature, humidity, CO₂, PM2.5, PM10, battery)
- **AS-109-6192** — dual-probe temperature/humidity + toilet-gas sensor (NH₃/H₂S)

## What I built & solved

**Gateway:** Atomsenses / eLT Edge gateway (`GW1000-IN865-1.6.12`) on IN865 band.

**The non-obvious diagnostic win:** the gateway was sending plain `HTTP/1.0` to port 443, which webhook.site silently rejected because it requires HTTPS. Diagnosed the transport mismatch, confirmed via httpbin, then stabilised the data flow using an HTTP-accepting endpoint (ChirpStack target).

**Payload decoding:** hand-decoded proprietary sensor payloads from raw hex:
- ES-204: temperature 26.27°C, humidity 44.09%, CO₂ 808 ppm, PM2.5 = 2, PM10 = 8, battery 3.65V/99%
- AS-109: temperature 27.81°C, humidity 40.28%, toilet gas 3 ppm, battery 3.72V/100%

## Significance

Demonstrates range beyond PLC-centric work:
- LoRaWAN RF planning and deployment on IN865 band
- Payload decoding without vendor documentation
- Transport-layer debugging (HTTP/HTTPS, port 80/443)
- Integration with ChirpStack network server

Different physics, different protocol stack — same architect discipline.
