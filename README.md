## HASUMS(High-Assurance Software Update Management System)
### Introduction
*HASUMS* is a Secure SUMS systematically developed following strict security engineering process.

#### Motivation
As software installed in a vehicle increases, the importance of a Software Update Management System(SUMS) for automotive is increasing. In particular, as studies were announced that exploiting vulnerabilities in the software update management system could threaten the lives of passengers, UNECE announced regulations to ensure security for SUMS. However, there is a limitation that the requirements specified in the regulation are too abstract to follow.

![SUMS](https://github.com/HackProof/HASUMS/assets/31889026/2a2a3b33-35ee-40b1-9eff-2118b1030099)

#### Content
- In this paper, we identify threats that can occur in SUMS through [threat modeling](https://github.com/HackProof/HASUMS/tree/main/Threat%20Modeling) and derive security requirements to mitigate the threats.
- Then, through UML, we design [Secure SUMS](https://github.com/HackProof/HASUMS/tree/main/Secure%20SUMS%20Architecture) by adding security functions corresponding to the security requirements.
- Through [Event-B](https://github.com/HackProof/HASUMS/tree/main/Formal%20Model), Secure SUMS is formally specified and verified that it operates normally without conflict between security functions.
- Through [Atelier B](https://github.com/HackProof/HASUMS/tree/main/Automatically%20Generated%20Sourcecode), formally specified designs are created in source code.

### Deliverable
- Jaewan Seo, Jiwon Kwak, and Seungjoo Kim, "[Formally Verified Software Update Management System in Automotive](https://www.ndss-symposium.org/wp-content/uploads/2023/02/vehiclesec2023-23087-paper.pdf)", Inaugural Symposium on Vehicle Security and Privacy(VehicleSec), February, 2023.
