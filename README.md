## HASUMS(High-Assurance Software Update Management System)
### Reseach Overview
*HASUMS* is a Secure SUMS systematically developed following strict security engineering procedures.

#### Motivation
Connected cars and self-driving cars began to appear, and various parts began to be installed in vehicles.
Generally, vehicles are equipped with wireless communication systems and have begun to provide wireless updates through OTA (Over-The-Air).
In addition, various equipment is installed in the vehicle to provide many functions.

![SUMS](https://github.com/HackProof/HASUMS/assets/31889026/dfdc10d7-6d0b-4493-9aba-26a5fae36f5c)

However, cyberattacks are increasing as attack points on vehicles increase due to various parts.
UNECE announced the SUMS (Software Update Management System) through UN R156, which defines the process of securely providing patch files to vehicles when updating software, but it is difficult to refer to when developing SUMS in OEMs because it contains abstract requirements.

#### Content
- In this paper, we identify threats that can occur in SUMS through [threat modeling](https://github.com/HackProof/HASUMS/tree/main/Threat%20Modeling) and derive security requirements to mitigate the threats.
- Then, through UML, we design [Secure SUMS](https://github.com/HackProof/HASUMS/tree/main/Secure%20SUMS%20Architecture) by adding security functions corresponding to the security requirements.
- Through [Event-B](https://github.com/HackProof/HASUMS/tree/main/Formal%20Model), Secure SUMS is formally specified and verified that it operates normally without conflict between security functions.
- Through [Atelier B](https://github.com/HackProof/HASUMS/tree/main/Automatically%20Generated%20Sourcecode), formally specified designs are created in source code.

### Deliverable
- Jaewan Seo, Jiwon Kwak, and Seungjoo Kim, "[Formally Verified Software Update Management System in Automotive](https://www.ndss-symposium.org/wp-content/uploads/2023/02/vehiclesec2023-23087-paper.pdf)", Inaugural Symposium on Vehicle Security and Privacy(VehicleSec), February, 2023.
