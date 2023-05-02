/* WARNING if type checker is not performed, translation could contain errors ! */

#include "AccessControl.h"

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
    if((((AccessControl__Input_ID == AccessControl__Engineer_ID) &&
            (AccessControl__Input_Password == AccessControl__Engineer_Password)) &&
        (AccessControl__Input_Agent == AccessControl__Engineer_PC)) &&
    ((AccessControl__Login_Try) <= (5)))
    {
        AccessControl__Agent = AccessControl__Access_Success;
        AccessControl__Permission = AccessControl__Download;
        AccessControl__Login_Try = 0;
    }
    else
    {
        AccessControl__Agent = AccessControl__Access_Fail;
        AccessControl__Permission = AccessControl__None;
        AccessControl__Login_Try = AccessControl__Login_Try+1;
    }
}

