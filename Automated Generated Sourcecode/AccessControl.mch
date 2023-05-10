/* AccessControl
 * Author: SANE
 * Creation date: 2023-04-25
 */
MACHINE
    AccessControl

SETS
    Access_ID = {Empty_ID, OEM_TeamLeader_ID, OEM_TeamMember_ID, Vehicle_ID, Update_Server_ID, Engineer_ID};
    Access_Password = {Empty_Password, Engineer_Password, OEM_TeamLeader_Password, OEM_TeamMember_Password};
    Access_Agent = {Empty_Agent, Secondary_ECU, Auto_Repair_Shop, Vehicle, Development_Server, Diagnostic_Server, Update_Server, CRM_Server, Developer_PC, DiagnosticTester_PC, Engineer_PC};
    Operation = {None, All, Upload, Fix, Transfer, Download, Approve, Upload_Fix_Transfer, Upload_Fix_Transfer_Download_Approve};
    Access_grant = {Access_Success, Access_Fail}
    
CONCRETE_VARIABLES
    Input_ID,
    Input_Password,
    Input_Agent,
    Login_Try,
    Permission,
    Agent
    
INVARIANT
    Input_ID : Access_ID &
    Input_Password : Access_Password &
    Input_Agent : Access_Agent &
    Login_Try : INT &
    Permission : Operation &
    Agent : Access_grant 

INITIALISATION
    Input_ID :: {} ||
    Input_Password :: {} ||
    Input_Agent :: {} ||
    Login_Try :: INT ||
    Permission :: {} ||
    Agent :: {} 
    
OPERATIONS
    access_grant = skip
    
END