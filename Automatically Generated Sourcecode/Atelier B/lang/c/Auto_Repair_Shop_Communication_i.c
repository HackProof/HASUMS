/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Crypto.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

Crypto__Subject_Agent Crypto__Subject;
Crypto__Encrypt_Method Crypto__Encryption_Algorithm;
Crypto__Encrypt_Mode Crypto__Encryption_Mode;
Crypto__Sign_Method Crypto__Signature_Algorithm;
Crypto__Hash_Method Crypto__Hash_Algorithm;
Crypto__Message_Status Crypto__Receive_Encrypt_Message;
Crypto__Message_Status Crypto__Receive_Sign_Message;
Crypto__Message_Status Crypto__Send_Encrypt_Message;
Crypto__Message_Status Crypto__Send_Sign_Message;
Crypto__Operation Crypto__Permission;
int32_t Crypto__Encryption_Key_length;
int32_t Crypto__Signature_Key_length;
int32_t Crypto__Hash_Key_length;
Crypto__Crypto_Test_Result Crypto__Test_Result;
Crypto__Subject_Agent Crypto__Send_Target;
Crypto__Message_Status Crypto__Data_Status;
Crypto__Data_Processing Crypto__User_Data_Processing;
/* Clause INITIALISATION */
void Crypto__INITIALISATION(void)
{
    
    Crypto__Subject = Crypto__Empty_Agent;
    Crypto__Encryption_Algorithm = Crypto__Empty_Encrypt_Method;
    Crypto__Encryption_Mode = Crypto__Empty_Mode;
    Crypto__Signature_Algorithm = Crypto__Empty_Sign_Method;
    Crypto__Hash_Algorithm = Crypto__Empty_Hash_Method;
    Crypto__Receive_Encrypt_Message = Crypto__Empty_Message;
    Crypto__Receive_Sign_Message = Crypto__Empty_Message;
    Crypto__Send_Encrypt_Message = Crypto__Empty_Message;
    Crypto__Send_Sign_Message = Crypto__Empty_Message;
    Crypto__Permission = Crypto__None;
    Crypto__Encryption_Key_length = 0;
    Crypto__Signature_Key_length = 0;
    Crypto__Hash_Key_length = 0;
    Crypto__Test_Result = Crypto__Crypto_Test_Fail;
    Crypto__Send_Target = Crypto__Empty_Agent;
    Crypto__Data_Status = Crypto__Empty_Message;
    Crypto__User_Data_Processing = Crypto__All;
}

/* Clause OPERATIONS */

void Crypto__receive_message(void)
{
    if(((((((((((((((Crypto__Subject == Crypto__Vehicle) ||
                                                        (Crypto__Subject == Crypto__CRM_Server)) &&
                                                    (Crypto__Encryption_Algorithm == Crypto__AES)) &&
                                                (Crypto__Encryption_Key_length == 512)) ||
                                            (Crypto__Encryption_Key_length == 1024)) ||
                                        (Crypto__Encryption_Key_length == 2048)) &&
                                    (Crypto__Encryption_Mode == Crypto__ECB)) ||
                                (Crypto__Encryption_Mode == Crypto__OFB)) ||
                            (Crypto__Encryption_Mode == Crypto__CFB)) ||
                        (Crypto__Encryption_Mode == Crypto__CTR)) ||
                    (Crypto__Encryption_Mode == Crypto__CBC)) ||
                (Crypto__Encryption_Mode == Crypto__GCM)) ||
            (Crypto__Encryption_Mode == Crypto__CCM)) &&
        (Crypto__Receive_Encrypt_Message == Crypto__Encrypted_Binary)) &&
    (Crypto__Receive_Sign_Message == Crypto__Signed_Binary))
    {
        Crypto__Subject = Crypto__Engineer_PC;
        Crypto__Permission = Crypto__Download;
    }
    else
    {
        Crypto__Permission = Crypto__None;
    }
}

void Crypto__signature_verify(int32_t Timestamp, int32_t Current_Timestamp, int32_t Timestamp_Subtraction)
{
    if(((((((((((((((((Crypto__Signature_Algorithm == Crypto__RSA) ||
                                                                (Crypto__Signature_Algorithm == Crypto__Curve25519_Ed25519)) ||
                                                            (Crypto__Signature_Algorithm == Crypto__NIST_Curve_P256_P384_P521)) &&
                                                        (Crypto__Signature_Key_length == 2048)) ||
                                                    (Crypto__Signature_Key_length == 3072)) ||
                                                (Crypto__Signature_Key_length == 4096)) &&
                                            (Crypto__Hash_Algorithm == Crypto__SHA_1)) ||
                                        (Crypto__Hash_Algorithm == Crypto__SHA_2)) ||
                                    (Crypto__Hash_Algorithm == Crypto__SHA_3)) &&
                                (Crypto__Hash_Key_length == 256)) ||
                            (Crypto__Hash_Key_length == 384)) ||
                        (Crypto__Hash_Key_length == 512)) &&
                    (Crypto__Data_Status == Crypto__Decrypted_Binary)) &&
                (Crypto__Data_Status == Crypto__Decrypted_Signed_Binary)) &&
            (Crypto__Decrypted_Binary == Crypto__Decrypted_Signed_Binary)) &&
        ((Current_Timestamp) > (Timestamp))) &&
    ((Timestamp_Subtraction) < (100)))
    {
        Crypto__Test_Result = Crypto__Signature_Verify_Pass;
    }
    else
    {
        Crypto__Test_Result = Crypto__Signature_Verify_Fail;
    }
}

void Crypto__patchfile_decryption(void)
{
    ;
}

void Crypto__patchfile_encryption(void)
{
    ;
}

void Crypto__signature(void)
{
    if((((((((((((((((Crypto__Signature_Algorithm == Crypto__RSA) ||
                                                            (Crypto__Signature_Algorithm == Crypto__Curve25519_Ed25519)) ||
                                                        (Crypto__Signature_Algorithm == Crypto__NIST_Curve_P256_P384_P521)) &&
                                                    (Crypto__Signature_Key_length == 2048)) ||
                                                (Crypto__Signature_Key_length == 3072)) ||
                                            (Crypto__Signature_Key_length == 4096)) &&
                                        (Crypto__Hash_Algorithm == Crypto__SHA_1)) ||
                                    (Crypto__Hash_Algorithm == Crypto__SHA_2)) ||
                                (Crypto__Hash_Algorithm == Crypto__SHA_3)) &&
                            (Crypto__Hash_Key_length == 256)) ||
                        (Crypto__Hash_Key_length == 384)) ||
                    (Crypto__Hash_Key_length == 512)) &&
                (Crypto__Data_Status == Crypto__Encrypted_Binary)) &&
            (Crypto__Data_Status == Crypto__Signed_Binary)) &&
        (Crypto__Subject == Crypto__Engineer_PC)) &&
    (Crypto__Permission == Crypto__Approve))
    {
        Crypto__Subject = Crypto__Engineer_PC;
        Crypto__Permission = Crypto__Transfer;
    }
    else
    {
        Crypto__Permission = Crypto__None;
    }
}

void Crypto__send_message(void)
{
    if((((((((((((((((Crypto__Subject == Crypto__Auto_Repair_Shop) ||
                                                            (Crypto__Subject == Crypto__Vehicle)) ||
                                                        (Crypto__Subject == Crypto__CRM_Server)) &&
                                                    (Crypto__Encryption_Algorithm == Crypto__AES)) &&
                                                (Crypto__Encryption_Key_length == 512)) ||
                                            (Crypto__Encryption_Key_length == 1024)) ||
                                        (Crypto__Encryption_Key_length == 2048)) &&
                                    (Crypto__Encryption_Mode == Crypto__ECB)) ||
                                (Crypto__Encryption_Mode == Crypto__OFB)) ||
                            (Crypto__Encryption_Mode == Crypto__CFB)) ||
                        (Crypto__Encryption_Mode == Crypto__CTR)) ||
                    (Crypto__Encryption_Mode == Crypto__CBC)) ||
                (Crypto__Encryption_Mode == Crypto__GCM)) ||
            (Crypto__Encryption_Mode == Crypto__CCM)) &&
        (Crypto__Send_Encrypt_Message == Crypto__Encrypted_Binary)) &&
    (Crypto__Send_Sign_Message == Crypto__Signed_Binary))
    {
        Crypto__Send_Target = Crypto__Vehicle;
    }
    else
    {
        Crypto__Send_Target = Crypto__Empty_Agent;
    }
}

