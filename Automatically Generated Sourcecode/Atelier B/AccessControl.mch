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
    Operation = {None, All, Upload, Fix, Transfer, Download, Approve, Backup, Recovery, Install, Test, ECU_Data_Manage, Encrypt, Configuration_Manage, Upload_Fix_Transfer, Upload_Fix_Transfer_Download_Approve, Download_ECU_Data_Manage, Encrypt_Configuration_Manage};
    Access_grant = {Access_Success, Access_Fail};
    Access_Result = {Success, Failure}
    
CONCRETE_VARIABLES
    Input_ID,
    Input_Password,
    Input_Agent,
    Login_Try,
    Permission,
    Agent,
    Same_Account_Connection,
    Account_Connection_Result,
    Special_Char
    
INVARIANT
    Input_ID : Access_ID &
    Input_Password : Access_Password &
    Input_Agent : Access_Agent &
    Login_Try : INT &
    Permission : Operation &
    Agent : Access_grant &
    Same_Account_Connection : INT &
    Account_Connection_Result : Access_Result &
    Special_Char : BOOL 

INITIALISATION
    Input_ID :: {} ||
    Input_Password :: {} ||
    Input_Agent :: {} ||
    Login_Try :: INT ||
    Permission :: {} ||
    Agent :: {} ||
    Same_Account_Connection :: INT ||
    Account_Connection_Result :: {} ||
    Special_Char :: BOOL 
    
OPERATIONS
    access_grant(Input_String_Length, Buffer_Length) = 
    PRE
        Input_String_Length : NAT &
        Buffer_Length : NAT &
        Input_String_Length < Buffer_Length
    THEN
        Agent := Access_Success
    END;
    
    connection_refuse = skip
END