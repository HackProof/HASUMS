/* Storage
 * Author: SANE
 * Creation date: 2023-04-25
 */
MACHINE
    Storage

SETS
    Update_Response = { Update_Required , Update_Unrequired } ;
    Store_Result = { Save , Not_Save } ;
    File_Tag = { Latest_File , Current_File } ;
    Data_Format = { Empty_Data , Encrypted_Binary , Binary } ;
    File_Status = { Empty_File , Encrypted_Patchfile , Patchfile , Sourcecode } ;
    Storage_Response_Tag = { Normal_State , Alarm , Overwrite } ;
    Operation = { None , Send , Install , Backup , Recovery , Transfer } ;
    Target = { Empty_Target , ECU , Secondary_ECU } ;
    Subject = { Noone , OEM_TeamLeader }

CONCRETE_VARIABLES
    Storage_Capacity ,
    Storage_Capacity_Criteria ,
    Version ,
    File_Type ,
    Save_Result ,
    Tag ,
    Stored_Capacity ,
    Data_Status ,
    Data_Operation ,
    Send_Target ,
    Update_Request_Result ,
    Subject_Entity

INVARIANT
    Storage_Capacity : INT &
    Storage_Capacity_Criteria : INT &
    Version : INT &
    File_Type : Data_Format &
    Save_Result : Store_Result &
    Tag : Storage_Response_Tag &
    Stored_Capacity : INT &
    Data_Status : File_Status &
    Data_Operation : Operation &
    Send_Target : Target &
    Update_Request_Result : Update_Response &
    Subject_Entity : Subject

INITIALISATION
    Storage_Capacity :: INT ||
    Storage_Capacity_Criteria :: INT ||
    Version :: INT ||
    File_Type :: {} ||
    Save_Result :: {} ||
    Tag :: {} ||
    Stored_Capacity :: INT ||
    Data_Status :: {} ||
    Data_Operation :: {} ||
    Send_Target :: {} ||
    Update_Request_Result :: {} ||
    Subject_Entity :: {}

OPERATIONS
    capacity_check ( File_Size ) =
    PRE
        File_Size : NAT
    THEN
        Save_Result := Not_Save
    END ;

    version_check ( Vehicle_Patchfile_Version , Patchfile_Version ) =
    PRE
        Vehicle_Patchfile_Version : NAT &
        Patchfile_Version : NAT &
        Vehicle_Patchfile_Version > Patchfile_Version
    THEN
        Send_Target := Empty_Target
    END ;

    patchfile_installation = skip ;

    patchfile_backup = skip ;

    patchfile_recovery = skip ;

    configuration_management ( Current_Item_Version , Latest_Item_Version ) =
    PRE
        Current_Item_Version : NAT &
        Latest_Item_Version : NAT &
        Current_Item_Version < Latest_Item_Version
    THEN
        Data_Operation := Transfer
    END
END
