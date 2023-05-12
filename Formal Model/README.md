## Formal Model
### Formal Specification
In order to verify that no errors occur in the Secure SUMS architecture derived through UML and that each security function operates normally without conflict, it is formally specified using the [Rodin tool](https://sourceforge.net/projects/rodin-b-sharp/) that supports Event-B.
Event-B consists of a context and a machine. A context represents a static property of a model. Conversely, machines represent the dynamic properties of a model. Context and machine can be combined to fully represent the state of the system. The formally specified login function based on this Event-B is shown in the picture below.

![formal1](https://github.com/HackProof/HASUMS/assets/31889026/6f1ff1b8-6729-47f9-bab9-02976c90abf3)

### Formal Verification
After the formal specification, formal verification was conducted. We perform formal verification to verify that the requirements stated above are correctly reflected in the design. This means that there is no contradiction between requirements and design. As a result of formal verification, the proof obligation is discharged by the automatic verification machine provided by Rodin. The formal verification results are shown in the picture below.

![verification](https://github.com/HackProof/HASUMS/assets/31889026/f6ec8f52-f749-4500-b025-908cf05f832c)