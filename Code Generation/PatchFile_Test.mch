/* PatchFile_Test
 * Author: SANE
 * Creation date: 2023-04-25
 */
MACHINE
    PatchFile_Test

SETS
    Result = {Valid, Invalid};
    Quality_Test = {Patchfile_error};
    Compatibility_Test = {Hardware_Compatibility, Software_Compatibility, Network_Compatibility};
    Hardware_Test = {Empty_Hardware, Memory_Type, Memory_Size, Memory_Speed, Input_Device, Output_Device};
    Software_Test = {Empty_Software, Windows, Linux, Mac, Current_Version_Software, Other_Version_Software};
    Network_Test = {Empty_Network, Wifi, Data_Network, Bluetooth};
    Deveop_Language = {C_Language, C_Plus_Language};
    Patchfile_Format = {None, Sourcecode, Binary, Encrypted_Binary};
    Coding_Standard = {Misra_C, Misra_C_Plus, AUTOSAR_C_Plus};
    Sourcecode_Format = {Written_Sourcecode, Writing_Sourcecode}
    
CONCRETE_VARIABLES
    Language,
    Standard,
    Sourcecode_Test_Result,
    Patchfile_Status,
    Patchfile_Execution_Result,
    Qulity_Test_Result,
    Hardware_Compatibility_Test,
    Software_Compatibility_Test,
    Network_Compatibility_Test,
    Hardware_Test_Result,
    Software_Test_Result,
    Network_Test_Result,
    Compatibility_Test_Result

INVARIANT
    Language : Deveop_Language &
    Standard : Coding_Standard &
    Sourcecode_Test_Result : Result &
    Patchfile_Status : Patchfile_Format &
    Patchfile_Execution_Result : Quality_Test &
    Qulity_Test_Result : Result &
    Hardware_Compatibility_Test : Hardware_Test &
    Software_Compatibility_Test : Software_Test &
    Network_Compatibility_Test : Network_Test &
    Hardware_Test_Result : Result &
    Software_Test_Result : Result &
    Network_Test_Result : Result &
    Compatibility_Test_Result : Result
    

INITIALISATION
    Language :: {} ||
    Standard :: {} ||
    Sourcecode_Test_Result :: {} ||
    Patchfile_Status :: {} ||
    Patchfile_Execution_Result :: {} ||
    Qulity_Test_Result :: {} ||
    Hardware_Compatibility_Test :: {} ||
    Software_Compatibility_Test :: {} ||
    Network_Compatibility_Test :: {} ||
    Hardware_Test_Result :: {} ||
    Software_Test_Result :: {} ||
    Network_Test_Result :: {} ||
    Compatibility_Test_Result :: {} 
    
    
OPERATIONS
    sourcecode_test = skip;
    sourcecode_compile = skip;
    patchfile_quality_test = skip;
    patchfile_compatibility_test = skip
    
END
