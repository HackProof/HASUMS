#ifndef _AccessControl_h
#define _AccessControl_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "BASIC_IO.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    AccessControl__Empty_ID,
    AccessControl__OEM_TeamLeader_ID,
    AccessControl__OEM_TeamMember_ID,
    AccessControl__Vehicle_ID,
    AccessControl__Update_Server_ID,
    AccessControl__Engineer_ID
    
} AccessControl__Access_ID;
#define AccessControl__Access_ID__max 6
typedef enum
{
    AccessControl__Empty_Password,
    AccessControl__Engineer_Password,
    AccessControl__OEM_TeamLeader_Password,
    AccessControl__OEM_TeamMember_Password
    
} AccessControl__Access_Password;
#define AccessControl__Access_Password__max 4
typedef enum
{
    AccessControl__Empty_Agent,
    AccessControl__Secondary_ECU,
    AccessControl__Auto_Repair_Shop,
    AccessControl__Vehicle,
    AccessControl__Development_Server,
    AccessControl__Diagnostic_Server,
    AccessControl__Update_Server,
    AccessControl__CRM_Server,
    AccessControl__Developer_PC,
    AccessControl__DiagnosticTester_PC,
    AccessControl__Engineer_PC
    
} AccessControl__Access_Agent;
#define AccessControl__Access_Agent__max 11
typedef enum
{
    AccessControl__None,
    AccessControl__All,
    AccessControl__Upload,
    AccessControl__Fix,
    AccessControl__Transfer,
    AccessControl__Download,
    AccessControl__Approve,
    AccessControl__Backup,
    AccessControl__Recovery,
    AccessControl__Install,
    AccessControl__Test,
    AccessControl__ECU_Data_Manage,
    AccessControl__Encrypt,
    AccessControl__Configuration_Manage,
    AccessControl__Upload_Fix_Transfer,
    AccessControl__Upload_Fix_Transfer_Download_Approve,
    AccessControl__Download_ECU_Data_Manage,
    AccessControl__Encrypt_Configuration_Manage
    
} AccessControl__Operation;
#define AccessControl__Operation__max 18
typedef enum
{
    AccessControl__Access_Success,
    AccessControl__Access_Fail
    
} AccessControl__Access_grant;
#define AccessControl__Access_grant__max 2
typedef enum
{
    AccessControl__Success,
    AccessControl__Failure
    
} AccessControl__Access_Result;
#define AccessControl__Access_Result__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern AccessControl__Access_ID AccessControl__Input_ID;
extern AccessControl__Access_Password AccessControl__Input_Password;
extern AccessControl__Access_Agent AccessControl__Input_Agent;
extern int32_t AccessControl__Login_Try;
extern AccessControl__Operation AccessControl__Permission;
extern AccessControl__Access_grant AccessControl__Agent;
extern int32_t AccessControl__Same_Account_Connection;
extern AccessControl__Access_Result AccessControl__Account_Connection_Result;
extern bool AccessControl__Special_Char;
extern void AccessControl__INITIALISATION(void);

/* Clause OPERATIONS */

extern void AccessControl__access_grant(int32_t Input_String_Length, int32_t Buffer_Length);
extern void AccessControl__connection_refuse(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _AccessControl_h */
