/* Network
 * Author: SANE
 * Creation date: 2023-04-25
 */
MACHINE
    Network

SETS
    Access_Agent = {Empty_Agent, Secondary_ECU, Auto_Repair_Shop, Vehicle, Development_Server, Diagnostic_Server, Update_Server, CRM_Server, Developer_PC, DiagnosticTester_PC, Engineer_PC};
    Access_IP = {Empty_IP, Development_Server_IP, Diagnostic_Server_IP, Update_Server_IP, CRM_Server_IP, Vehicle_IP, Engineer_PC_IP, Developer_PC_IP, DiagnosticTester_PC_IP};
    Access_IP_List = {IP_Unknown, IP_Whitelist, IP_Blacklist};
    Access_grant = {Access_Success, Access_Fail}
    
CONCRETE_VARIABLES
    Input_Agent,
    Input_IP,
    Input_IP_List,
    Available_Port,
    Input_Port,
    Agent,
    Communication_Timeout

INVARIANT
    Input_Agent : Access_Agent &
    Input_IP : Access_IP &
    Input_IP_List : Access_IP_List &
    Input_Port : INT &
    Available_Port : INT &
    Agent : Access_grant &
    Communication_Timeout : INT

INITIALISATION
    Input_Agent :: {} ||
    Input_IP :: {} ||
    Input_IP_List :: {} ||
    Input_Port :: INT ||
    Available_Port :: INT ||
    Agent :: {} ||
    Communication_Timeout :: INT
    
    
OPERATIONS
    access_control = skip
    
END
