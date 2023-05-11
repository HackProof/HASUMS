## Threat Modeling
Threat modeling is structured process to identify known vulnerabilities, threats and derive security requirements systemically.
The details of the threat modeling process are shown in the picture below.

![threatmodeling](https://github.com/HackProof/HASUMS/assets/31889026/d9c12e4e-2d15-4953-9210-51651c1c47dc)

### Identifying scope
Identifying components based on 24 documents that are published in ITU-T, SAE, COVESA, UN R156, related papers, etc.  
- Standard: 2
- Technical Paper: 3
- Regulation: 1
- Paper: 18

### Drawing system model
Simplifying the structure of the target system through modeling techniques based on data flow.
System models are drawn through Microsoft's [Threat Modeling Tool](https://www.microsoft.com/en-us/download/details.aspx?id=49168).
The system model derived by the research team is shown in the picture below.

![DFD](https://github.com/HackProof/HASUMS/assets/31889026/68ff4bc8-533c-409f-b72b-868c1652ab67)

### Collecting attack library
Collects information on vulnerabilities known so far in relation to the analysis target and makes it into a database.
Vulnerabilities in the attack library can be classified into various sources such as CVE, CWE, papers, technical documents, and so on. In this research, a total of 70 pieces of vulnerability information were collected in the attack library including 35 CVE cases, 6 CWE cases, 27 papers, 1 standard case, and 1 technical report.
The contents of these entries are presented in the table below.

|No.|Category|Name|
|---|---|---|
|AL-V-19|CVE|CVE-2020-86168|
|AL-W-5|CWE|CWE-923|
|AL-P-1|Paper|Cyber physical systems security: Analysis, challenges and solutions|

### Analyzing attack surface(STRIDE)
Based on the rules in STRIDE 1007 threats are identified in our system model.
The contents of these entries are presented in the table below.

|Type|ID|Name|Threat|Attack Library|No.|
|---|---|---|---|---|---|
|Entity|E1|Software Developer|S|AL-V-19|T1|
|Entity|E1|Software Developer|S|AL-W-5|T2|
|Entity|E1|Software Developer|S|AL-P-1|T3|

### Analyzing attack scenario
Constructing attack scenarios related to 4 attack purpose by organizing threats/ vulnerabilities that identified in the previous step. 
The attack tree derived by the research team is shown in the picture below.

![attacktree](https://github.com/HackProof/HASUMS/assets/31889026/03acb0d0-8d56-423a-94b0-e5fff9dcacc7)

### Deriving security requirements
To mitigate several attacks/threats in the scenario, we proposed 38 security requirements.
The contents of these entries are presented in the table below.

|No.|Security Requirement|
|---|---|
|SR10|When authentication of the OEM server is attempted, the authentication process must be terminated if the authentication fails more than a certain number of times (e.g., 5 times) to prevent attacks such as a full investigation.|
|SR11|Before performing an action on the OEM server, the OEM server must verify that each object is authorized to perform the action based on each object's identifier (e.g., ID/PW).|
