#ifndef _PatchFile_Test_h
#define _PatchFile_Test_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    PatchFile_Test__Valid,
    PatchFile_Test__Invalid
    
} PatchFile_Test__Result;
#define PatchFile_Test__Result__max 2
typedef enum
{
    PatchFile_Test__Patchfile_error
    
} PatchFile_Test__Quality_Test;
#define PatchFile_Test__Quality_Test__max 1
typedef enum
{
    PatchFile_Test__Hardware_Compatibility,
    PatchFile_Test__Software_Compatibility,
    PatchFile_Test__Network_Compatibility
    
} PatchFile_Test__Compatibility_Test;
#define PatchFile_Test__Compatibility_Test__max 3
typedef enum
{
    PatchFile_Test__Empty_Hardware,
    PatchFile_Test__Memory_Type,
    PatchFile_Test__Memory_Size,
    PatchFile_Test__Memory_Speed,
    PatchFile_Test__Input_Device,
    PatchFile_Test__Output_Device
    
} PatchFile_Test__Hardware_Test;
#define PatchFile_Test__Hardware_Test__max 6
typedef enum
{
    PatchFile_Test__Empty_Software,
    PatchFile_Test__Windows,
    PatchFile_Test__Linux,
    PatchFile_Test__Mac,
    PatchFile_Test__Current_Version_Software,
    PatchFile_Test__Other_Version_Software
    
} PatchFile_Test__Software_Test;
#define PatchFile_Test__Software_Test__max 6
typedef enum
{
    PatchFile_Test__Empty_Network,
    PatchFile_Test__Wifi,
    PatchFile_Test__Data_Network,
    PatchFile_Test__Bluetooth
    
} PatchFile_Test__Network_Test;
#define PatchFile_Test__Network_Test__max 4
typedef enum
{
    PatchFile_Test__C_Language,
    PatchFile_Test__C_Plus_Language
    
} PatchFile_Test__Deveop_Language;
#define PatchFile_Test__Deveop_Language__max 2
typedef enum
{
    PatchFile_Test__None,
    PatchFile_Test__Sourcecode,
    PatchFile_Test__Binary,
    PatchFile_Test__Encrypted_Binary
    
} PatchFile_Test__Patchfile_Format;
#define PatchFile_Test__Patchfile_Format__max 4
typedef enum
{
    PatchFile_Test__Misra_C,
    PatchFile_Test__Misra_C_Plus,
    PatchFile_Test__AUTOSAR_C_Plus
    
} PatchFile_Test__Coding_Standard;
#define PatchFile_Test__Coding_Standard__max 3
typedef enum
{
    PatchFile_Test__Written_Sourcecode,
    PatchFile_Test__Writing_Sourcecode
    
} PatchFile_Test__Sourcecode_Format;
#define PatchFile_Test__Sourcecode_Format__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern PatchFile_Test__Deveop_Language PatchFile_Test__Language;
extern PatchFile_Test__Coding_Standard PatchFile_Test__Standard;
extern PatchFile_Test__Result PatchFile_Test__Sourcecode_Test_Result;
extern PatchFile_Test__Patchfile_Format PatchFile_Test__Patchfile_Status;
extern PatchFile_Test__Quality_Test PatchFile_Test__Patchfile_Execution_Result;
extern PatchFile_Test__Result PatchFile_Test__Qulity_Test_Result;
extern PatchFile_Test__Hardware_Test PatchFile_Test__Hardware_Compatibility_Test;
extern PatchFile_Test__Software_Test PatchFile_Test__Software_Compatibility_Test;
extern PatchFile_Test__Network_Test PatchFile_Test__Network_Compatibility_Test;
extern PatchFile_Test__Result PatchFile_Test__Hardware_Test_Result;
extern PatchFile_Test__Result PatchFile_Test__Software_Test_Result;
extern PatchFile_Test__Result PatchFile_Test__Network_Test_Result;
extern PatchFile_Test__Result PatchFile_Test__Compatibility_Test_Result;
extern void PatchFile_Test__INITIALISATION(void);

/* Clause OPERATIONS */

extern void PatchFile_Test__sourcecode_test(void);
extern void PatchFile_Test__sourcecode_compile(void);
extern void PatchFile_Test__patchfile_quality_test(void);
extern void PatchFile_Test__patchfile_compatibility_test(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _PatchFile_Test_h */
