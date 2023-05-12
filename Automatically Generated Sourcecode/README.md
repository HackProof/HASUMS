## Automatically Generated Sourcecode
### Code Generation
After proving that there is no contradiction between requirements and design through formal verification, we create source code based on the formal specification. However, Rodin, a tool previously used for formal specification and verification, does not support Code Generation. Therefore, we use [Atelier B](https://www.atelierb.eu/en/atelier-b-support-maintenance/download-atelier-b/), a tool that supports Code Generation.
At this time, in order to generate code, implementation(*.imp) files must be additionally developed. In these files, specific values are assigned to variables and operations so that they are reflected in the source code. The implementation file for the login function is shown in the picture below.

![code](https://github.com/HackProof/HASUMS/assets/31889026/bc6718c1-99a8-4c15-9e8f-ac9f8d8e1b4b)

Finally, the source code generated based on the implementation file is shown in the picture below.

![generated_code](https://github.com/HackProof/HASUMS/assets/31889026/216e84c4-7976-4a09-82fc-481372794a84)