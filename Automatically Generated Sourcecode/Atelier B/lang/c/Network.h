#ifndef _Network_h
#define _Network_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    Network__Empty_Agent,
    Network__Secondary_ECU,
    Network__Auto_Repair_Shop,
    Network__Vehicle,
    Network__Development_Server,
    Network__Diagnostic_Server,
    Network__Update_Server,
    Network__CRM_Server,
    Network__Developer_PC,
    Network__DiagnosticTester_PC,
    Network__Engineer_PC
    
} Network__Access_Agent;
#define Network__Access_Agent__max 11
typedef enum
{
    Network__Empty_IP,
    Network__Development_Server_IP,
    Network__Diagnostic_Server_IP,
    Network__Update_Server_IP,
    Network__CRM_Server_IP,
    Network__Vehicle_IP,
    Network__Engineer_PC_IP,
    Network__Developer_PC_IP,
    Network__DiagnosticTester_PC_IP
    
} Network__Access_IP;
#define Network__Access_IP__max 9
typedef enum
{
    Network__IP_Unknown,
    Network__IP_Whitelist,
    Network__IP_Blacklist
    
} Network__Access_IP_List;
#define Network__Access_IP_List__max 3
typedef enum
{
    Network__Access_Success,
    Network__Access_Fail
    
} Network__Access_grant;
#define Network__Access_grant__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern Network__Access_Agent Network__Input_Agent;
extern Network__Access_IP Network__Input_IP;
extern Network__Access_IP_List Network__Input_IP_List;
extern int32_t Network__Available_Port;
extern int32_t Network__Input_Port;
extern Network__Access_grant Network__Agent;
extern void Network__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Network__access_control(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Network_h */
