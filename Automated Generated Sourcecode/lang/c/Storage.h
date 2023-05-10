#ifndef _Storage_h
#define _Storage_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    Storage__Update_Required,
    Storage__Update_Unrequired
    
} Storage__Update_Response;
#define Storage__Update_Response__max 2
typedef enum
{
    Storage__Save,
    Storage__Not_Save
    
} Storage__Store_Result;
#define Storage__Store_Result__max 2
typedef enum
{
    Storage__Latest_File,
    Storage__Current_File
    
} Storage__File_Tag;
#define Storage__File_Tag__max 2
typedef enum
{
    Storage__Empty_Data,
    Storage__Encrypted_Binary,
    Storage__Binary
    
} Storage__Data_Format;
#define Storage__Data_Format__max 3
typedef enum
{
    Storage__Empty_File,
    Storage__Encrypted_Patchfile,
    Storage__Patchfile,
    Storage__Sourcecode
    
} Storage__File_Status;
#define Storage__File_Status__max 4
typedef enum
{
    Storage__Normal_State,
    Storage__Alarm,
    Storage__Overwrite
    
} Storage__Storage_Response_Tag;
#define Storage__Storage_Response_Tag__max 3
typedef enum
{
    Storage__None,
    Storage__Send,
    Storage__Install,
    Storage__Backup,
    Storage__Recovery,
    Storage__Transfer
    
} Storage__Operation;
#define Storage__Operation__max 6
typedef enum
{
    Storage__Empty_Target,
    Storage__ECU,
    Storage__Secondary_ECU
    
} Storage__Target;
#define Storage__Target__max 3
typedef enum
{
    Storage__Noone,
    Storage__OEM_TeamLeader
    
} Storage__Subject;
#define Storage__Subject__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern int32_t Storage__Storage_Capacity;
extern int32_t Storage__Storage_Capacity_Criteria;
extern int32_t Storage__Version;
extern Storage__Data_Format Storage__File_Type;
extern Storage__Store_Result Storage__Save_Result;
extern Storage__Storage_Response_Tag Storage__Tag;
extern int32_t Storage__Stored_Capacity;
extern Storage__File_Status Storage__Data_Status;
extern Storage__Operation Storage__Data_Operation;
extern Storage__Target Storage__Send_Target;
extern Storage__Update_Response Storage__Update_Request_Result;
extern Storage__Subject Storage__Subject_Entity;
extern void Storage__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Storage__capacity_check(int32_t File_Size);
extern void Storage__version_check(int32_t Vehicle_Patchfile_Version, int32_t Patchfile_Version);
extern void Storage__patchfile_installation(void);
extern void Storage__patchfile_backup(void);
extern void Storage__patchfile_recovery(void);
extern void Storage__configuration_management(int32_t Current_Item_Version, int32_t Latest_Item_Version);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Storage_h */
