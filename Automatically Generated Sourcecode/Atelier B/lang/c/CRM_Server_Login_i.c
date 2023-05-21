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
int32_t AccessControl__Same_Account_Connection;
AccessControl__Access_Result AccessControl__Account_Connection_Result;
bool AccessControl__Special_Char;
/* Clause INITIALISATION */
void AccessControl__INITIALISATION(void)
{
    
    AccessControl__Input_ID = AccessControl__Empty_ID;
    AccessControl__Input_Password = AccessControl__Empty_Password;
    AccessControl__Input_Agent = AccessControl__Empty_Agent;
    AccessControl__Login_Try = 0;
    AccessControl__Permission = AccessControl__None;
    AccessControl__Agent = AccessControl__Access_Fail;
    AccessControl__Same_Account_Connection = 1;
    AccessControl__Account_Connection_Result = AccessControl__Failure;
    AccessControl__Special_Char = false;
}

/* Clause OPERATIONS */

void AccessControl__access_grant(int32_t Input_String_Length, int32_t Buffer_Length)
{
    if(((AccessControl__Input_ID == AccessControl__Vehicle_ID) &&
        (AccessControl__Input_Agent == AccessControl__Vehicle)) &&
    ((AccessControl__Login_Try) <= (5)))
    {
        AccessControl__Agent = AccessControl__Access_Success;
        AccessControl__Permission = AccessControl__Download;
        AccessControl__Login_Try = 0;
        BASIC_IO__printf("Login Success!\n");
        BASIC_IO__printf("Login Entity: Vehicle\n");
        BASIC_IO__printf("============================\n");
    }
    else
    {
        AccessControl__Agent = AccessControl__Access_Fail;
        AccessControl__Permission = AccessControl__None;
        AccessControl__Login_Try = AccessControl__Login_Try+1;
        BASIC_IO__printf("Login Fail!\n");
        BASIC_IO__printf("============================\n");
    }
}

void AccessControl__connection_refuse(void)
{
    if(AccessControl__Same_Account_Connection == 1)
    {
        AccessControl__Account_Connection_Result = AccessControl__Success;
    }
    else
    {
        AccessControl__Account_Connection_Result = AccessControl__Failure;
    }
}

