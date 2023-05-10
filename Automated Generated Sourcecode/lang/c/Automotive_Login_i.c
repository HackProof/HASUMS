/* WARNING if type checker is not performed, translation could contain errors ! */

#include "AccessControl.h"

/* Clause SEES */
#include "BASIC_IO.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

AccessControl__Access_ID AccessControl__Input_ID;
AccessControl__Access_Password AccessControl__Input_Password;
AccessControl__Access_Agent AccessControl__Input_Agent;
int32_t AccessControl__Login_Try;
AccessControl__Operation AccessControl__Permission;
AccessControl__Access_grant AccessControl__Agent;
/* Clause INITIALISATION */
void AccessControl__INITIALISATION(void)
{
    
    AccessControl__Input_ID = AccessControl__Empty_ID;
    AccessControl__Input_Password = AccessControl__Empty_Password;
    AccessControl__Input_Agent = AccessControl__Empty_Agent;
    AccessControl__Login_Try = 0;
    AccessControl__Permission = AccessControl__None;
    AccessControl__Agent = AccessControl__Access_Fail;
}

/* Clause OPERATIONS */

void AccessControl__access_grant(void)
{
    if(((AccessControl__Input_ID == AccessControl__Update_Server_ID) &&
        (AccessControl__Input_Agent == AccessControl__Update_Server)) &&
    ((AccessControl__Login_Try) <= (5)))
    {
        AccessControl__Agent = AccessControl__Access_Success;
        AccessControl__Permission = AccessControl__Download;
        AccessControl__Login_Try = 0;
        BASIC_IO__STRING_WRITE("Login Success!\n");
        BASIC_IO__STRING_WRITE("Login Entity: Update_Server\n");
        BASIC_IO__STRING_WRITE("============================\n");
    }
    else
    {
        AccessControl__Agent = AccessControl__Access_Fail;
        AccessControl__Permission = AccessControl__None;
        AccessControl__Login_Try = AccessControl__Login_Try+1;
        BASIC_IO__STRING_WRITE("Login Fail!\n");
        BASIC_IO__STRING_WRITE("============================\n");
    }
}

