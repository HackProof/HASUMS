project(Secure_SUMS)

cmake_minimum_required(VERSION 2.4)

SET(Secure_SUMS_SOURCES
    Auto_Repair_Shop_Communication_i.c
    Auto_Repair_Shop_Firewall_i.c
    Auto_Repair_Shop_Login_i.c
    Automotive_Capacity_Check_i.c
    Automotive_Communication_i.c
    Automotive_Firewall_i.c
    Automotive_Login_i.c
    CRM_Server_Communication_i.c
    CRM_Server_Firewall_i.c
    CRM_Server_Login_i.c
    CRM_Server_Patchfile_Version_Check_i.c
    Development_Server_Communication_i.c
    Development_Server_Firewall_i.c
    Development_Server_Login_i.c
    Diagnostic_Server_Communication_i.c
    Diagnostic_Server_Firewall_i.c
    Diagnostic_Server_Test_i.c
    Update_Server_Capacity_Check_i.c
    Update_Server_Communication_i.c
    Update_Server_Firewall_i.c
)
SET(Secure_SUMS_HEADERS
    AccessControl.h
    Crypto.h
    Network.h
    PatchFile_Test.h
    Storage.h
)

add_library(Secure_SUMS ${Secure_SUMS_SOURCES} ${Secure_SUMS_HEADERS})
