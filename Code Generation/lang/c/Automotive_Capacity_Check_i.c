/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Storage.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

int32_t Storage__Storage_Capacity;
int32_t Storage__Storage_Capacity_Criteria;
int32_t Storage__Version;
Storage__Data_Format Storage__File_Type;
Storage__Store_Result Storage__Save_Result;
Storage__Storage_Response_Tag Storage__Tag;
int32_t Storage__Stored_Capacity;
Storage__File_Status Storage__Data_Status;
Storage__Operation Storage__Data_Operation;
Storage__Target Storage__Send_Target;
Storage__Update_Response Storage__Update_Request_Result;
Storage__Subject Storage__Subject_Entity;
/* Clause INITIALISATION */
void Storage__INITIALISATION(void)
{
    
    Storage__Storage_Capacity = 100;
    Storage__Storage_Capacity_Criteria = 85;
    Storage__Version = 0;
    Storage__File_Type = Storage__Empty_Data;
    Storage__Save_Result = Storage__Not_Save;
    Storage__Tag = Storage__Normal_State;
    Storage__Stored_Capacity = 0;
    Storage__Data_Status = Storage__Empty_File;
    Storage__Data_Operation = Storage__None;
    Storage__Send_Target = Storage__Empty_Target;
    Storage__Update_Request_Result = Storage__Update_Unrequired;
    Storage__Subject_Entity = Storage__Noone;
}

/* Clause OPERATIONS */

void Storage__capacity_check(int32_t File_Size)
{
    if(((Storage__File_Type == Storage__Encrypted_Binary) &&
        (Storage__Stored_Capacity == File_Size)) &&
    ((Storage__Storage_Capacity) < (Storage__Storage_Capacity_Criteria)))
    {
        Storage__Save_Result = Storage__Save;
        Storage__Tag = Storage__Normal_State;
    }
    else
    {
        if((((Storage__File_Type == Storage__Encrypted_Binary) &&
                (Storage__Stored_Capacity == File_Size)) &&
            ((Storage__Storage_Capacity) >= (Storage__Storage_Capacity_Criteria))) &&
        ((Storage__Storage_Capacity) < (100)))
        {
            Storage__Save_Result = Storage__Not_Save;
            Storage__Tag = Storage__Alarm;
        }
        else
        {
            if(((Storage__File_Type == Storage__Encrypted_Binary) &&
                (Storage__Stored_Capacity == File_Size)) &&
            ((Storage__Storage_Capacity) >= (100)))
            {
                Storage__Save_Result = Storage__Not_Save;
                Storage__Tag = Storage__Overwrite;
            }
            else
            {
                Storage__Save_Result = Storage__Not_Save;
            }
        }
    }
}

void Storage__version_check(int32_t Vehicle_Patchfile_Version, int32_t Patchfile_Version)
{
    if((Vehicle_Patchfile_Version) > (Patchfile_Version))
    {
        Storage__Data_Operation = Storage__Send;
        Storage__Send_Target = Storage__Secondary_ECU;
    }
    else
    {
        Storage__Data_Operation = Storage__None;
    }
}

void Storage__patchfile_installation(void)
{
    if(Storage__Data_Status == Storage__Patchfile)
    {
        Storage__Data_Operation = Storage__Install;
    }
    else
    {
        Storage__Data_Operation = Storage__None;
    }
}

void Storage__patchfile_backup(void)
{
    if(Storage__Data_Status == Storage__Patchfile)
    {
        Storage__Data_Operation = Storage__Backup;
    }
    else
    {
        Storage__Data_Operation = Storage__None;
    }
}

void Storage__patchfile_recovery(void)
{
    if(Storage__Data_Status == Storage__Patchfile)
    {
        Storage__Data_Operation = Storage__Recovery;
    }
    else
    {
        Storage__Data_Operation = Storage__None;
    }
}

void Storage__configuration_management(int32_t Current_Item_Version, int32_t Latest_Item_Version)
{
    ;
}

