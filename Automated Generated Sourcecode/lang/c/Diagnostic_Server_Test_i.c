/* WARNING if type checker is not performed, translation could contain errors ! */

#include "PatchFile_Test.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

PatchFile_Test__Deveop_Language PatchFile_Test__Language;
PatchFile_Test__Coding_Standard PatchFile_Test__Standard;
PatchFile_Test__Result PatchFile_Test__Sourcecode_Test_Result;
PatchFile_Test__Patchfile_Format PatchFile_Test__Patchfile_Status;
PatchFile_Test__Quality_Test PatchFile_Test__Patchfile_Execution_Result;
PatchFile_Test__Result PatchFile_Test__Qulity_Test_Result;
PatchFile_Test__Hardware_Test PatchFile_Test__Hardware_Compatibility_Test;
PatchFile_Test__Software_Test PatchFile_Test__Software_Compatibility_Test;
PatchFile_Test__Network_Test PatchFile_Test__Network_Compatibility_Test;
PatchFile_Test__Result PatchFile_Test__Hardware_Test_Result;
PatchFile_Test__Result PatchFile_Test__Software_Test_Result;
PatchFile_Test__Result PatchFile_Test__Network_Test_Result;
PatchFile_Test__Result PatchFile_Test__Compatibility_Test_Result;
/* Clause INITIALISATION */
void PatchFile_Test__INITIALISATION(void)
{
    
    PatchFile_Test__Language = PatchFile_Test__C_Language;
    PatchFile_Test__Standard = PatchFile_Test__Misra_C;
    PatchFile_Test__Sourcecode_Test_Result = PatchFile_Test__Invalid;
    PatchFile_Test__Patchfile_Status = PatchFile_Test__None;
    PatchFile_Test__Patchfile_Execution_Result = PatchFile_Test__Patchfile_error;
    PatchFile_Test__Qulity_Test_Result = PatchFile_Test__Invalid;
    PatchFile_Test__Hardware_Compatibility_Test = PatchFile_Test__Empty_Hardware;
    PatchFile_Test__Software_Compatibility_Test = PatchFile_Test__Empty_Software;
    PatchFile_Test__Network_Compatibility_Test = PatchFile_Test__Empty_Network;
    PatchFile_Test__Hardware_Test_Result = PatchFile_Test__Invalid;
    PatchFile_Test__Software_Test_Result = PatchFile_Test__Invalid;
    PatchFile_Test__Network_Test_Result = PatchFile_Test__Invalid;
    PatchFile_Test__Compatibility_Test_Result = PatchFile_Test__Invalid;
}

/* Clause OPERATIONS */

void PatchFile_Test__sourcecode_test(void)
{
    if((PatchFile_Test__Language == PatchFile_Test__C_Language) &&
    (PatchFile_Test__Standard == PatchFile_Test__Misra_C))
    {
        PatchFile_Test__Sourcecode_Test_Result = PatchFile_Test__Valid;
    }
    else
    {
        if(((PatchFile_Test__Language == PatchFile_Test__C_Plus_Language) &&
            (PatchFile_Test__Standard == PatchFile_Test__Misra_C_Plus)) ||
        (PatchFile_Test__Standard == PatchFile_Test__AUTOSAR_C_Plus))
        {
            PatchFile_Test__Sourcecode_Test_Result = PatchFile_Test__Valid;
        }
        else
        {
            PatchFile_Test__Sourcecode_Test_Result = PatchFile_Test__Invalid;
        }
    }
}

void PatchFile_Test__sourcecode_compile(void)
{
    if(PatchFile_Test__Sourcecode_Test_Result == PatchFile_Test__Valid)
    {
        PatchFile_Test__Patchfile_Status = PatchFile_Test__Binary;
    }
}

void PatchFile_Test__patchfile_quality_test(void)
{
    if((PatchFile_Test__Patchfile_Status == PatchFile_Test__Binary) &&
    ((PatchFile_Test__Patchfile_Execution_Result) != (PatchFile_Test__Patchfile_error)))
    {
        PatchFile_Test__Qulity_Test_Result = PatchFile_Test__Valid;
    }
    else
    {
        PatchFile_Test__Qulity_Test_Result = PatchFile_Test__Invalid;
    }
}

void PatchFile_Test__patchfile_compatibility_test(void)
{
    if(((((((((((((((((PatchFile_Test__Qulity_Test_Result == PatchFile_Test__Valid) &&
                                                                (PatchFile_Test__Hardware_Compatibility_Test == PatchFile_Test__Memory_Type)) ||
                                                            (PatchFile_Test__Hardware_Compatibility_Test == PatchFile_Test__Memory_Size)) ||
                                                        (PatchFile_Test__Hardware_Compatibility_Test == PatchFile_Test__Memory_Speed)) ||
                                                    (PatchFile_Test__Hardware_Compatibility_Test == PatchFile_Test__Input_Device)) ||
                                                (PatchFile_Test__Hardware_Compatibility_Test == PatchFile_Test__Output_Device)) &&
                                            (PatchFile_Test__Software_Compatibility_Test == PatchFile_Test__Windows)) ||
                                        (PatchFile_Test__Software_Compatibility_Test == PatchFile_Test__Linux)) ||
                                    (PatchFile_Test__Software_Compatibility_Test == PatchFile_Test__Mac)) ||
                                (PatchFile_Test__Software_Compatibility_Test == PatchFile_Test__Current_Version_Software)) ||
                            (PatchFile_Test__Software_Compatibility_Test == PatchFile_Test__Other_Version_Software)) &&
                        (PatchFile_Test__Network_Compatibility_Test == PatchFile_Test__Wifi)) ||
                    (PatchFile_Test__Network_Compatibility_Test == PatchFile_Test__Data_Network)) ||
                (PatchFile_Test__Network_Compatibility_Test == PatchFile_Test__Bluetooth)) &&
            (PatchFile_Test__Hardware_Test_Result == PatchFile_Test__Valid)) &&
        (PatchFile_Test__Software_Test_Result == PatchFile_Test__Valid)) &&
    (PatchFile_Test__Network_Test_Result == PatchFile_Test__Valid))
    {
        PatchFile_Test__Compatibility_Test_Result = PatchFile_Test__Valid;
    }
    else
    {
        PatchFile_Test__Compatibility_Test_Result = PatchFile_Test__Invalid;
    }
}

