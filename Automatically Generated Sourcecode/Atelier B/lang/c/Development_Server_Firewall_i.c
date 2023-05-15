/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Network.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

Network__Access_Agent Network__Input_Agent;
Network__Access_IP Network__Input_IP;
Network__Access_IP_List Network__Input_IP_List;
int32_t Network__Available_Port;
int32_t Network__Input_Port;
Network__Access_grant Network__Agent;
int32_t Network__Communication_Timeout;
/* Clause INITIALISATION */
void Network__INITIALISATION(void)
{
    
    Network__Input_Agent = Network__Empty_Agent;
    Network__Input_IP = Network__Empty_IP;
    Network__Input_IP_List = Network__IP_Unknown;
    Network__Available_Port = 443;
    Network__Input_Port = 0;
    Network__Agent = Network__Access_Fail;
    Network__Communication_Timeout = 600;
}

/* Clause OPERATIONS */

void Network__access_control(void)
{
    if((((((Network__Input_Agent == Network__Developer_PC) ||
                    (Network__Input_Agent == Network__Diagnostic_Server)) &&
                (Network__Input_IP == Network__Developer_PC_IP)) ||
            (Network__Input_IP == Network__Diagnostic_Server_IP)) &&
        (Network__Input_Port == Network__Available_Port)) &&
    ((Network__Input_IP_List) != (Network__IP_Blacklist)))
    {
        Network__Agent = Network__Access_Success;
    }
    else
    {
        Network__Agent = Network__Access_Fail;
    }
}

