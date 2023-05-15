#ifndef _Crypto_h
#define _Crypto_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    Crypto__Empty_Agent,
    Crypto__Secondary_ECU,
    Crypto__Auto_Repair_Shop,
    Crypto__Vehicle,
    Crypto__Development_Server,
    Crypto__Diagnostic_Server,
    Crypto__Update_Server,
    Crypto__CRM_Server,
    Crypto__Developer_PC,
    Crypto__DiagnosticTester_PC,
    Crypto__Engineer_PC,
    Crypto__OEM_TeamLeader
    
} Crypto__Subject_Agent;
#define Crypto__Subject_Agent__max 12
typedef enum
{
    Crypto__Empty_Encrypt_Method,
    Crypto__AES,
    Crypto__Camelia
    
} Crypto__Encrypt_Method;
#define Crypto__Encrypt_Method__max 3
typedef enum
{
    Crypto__Empty_Mode,
    Crypto__ECB,
    Crypto__OFB,
    Crypto__CFB,
    Crypto__CTR,
    Crypto__CBC,
    Crypto__GCM,
    Crypto__CCM,
    Crypto__Poly1303
    
} Crypto__Encrypt_Mode;
#define Crypto__Encrypt_Mode__max 9
typedef enum
{
    Crypto__Crypto_Test_Pass,
    Crypto__Crypto_Test_Fail,
    Crypto__Signature_Verify_Pass,
    Crypto__Signature_Verify_Fail
    
} Crypto__Crypto_Test_Result;
#define Crypto__Crypto_Test_Result__max 4
typedef enum
{
    Crypto__Empty_Sign_Method,
    Crypto__RSA,
    Crypto__Curve25519_Ed25519,
    Crypto__NIST_Curve_P256_P384_P521
    
} Crypto__Sign_Method;
#define Crypto__Sign_Method__max 4
typedef enum
{
    Crypto__Empty_Hash_Method,
    Crypto__SHA_1,
    Crypto__SHA_2,
    Crypto__SHA_3
    
} Crypto__Hash_Method;
#define Crypto__Hash_Method__max 4
typedef enum
{
    Crypto__None,
    Crypto__Download,
    Crypto__Upload,
    Crypto__Fix,
    Crypto__Transfer,
    Crypto__Approve,
    Crypto__Decrypt,
    Crypto__Encrypt
    
} Crypto__Operation;
#define Crypto__Operation__max 8
typedef enum
{
    Crypto__Empty_Message,
    Crypto__Encrypted_Message,
    Crypto__Signed_Message,
    Crypto__Decrypted_Message,
    Crypto__Binary,
    Crypto__Encrypted_Binary,
    Crypto__Decrypted_Binary,
    Crypto__Signed_Binary,
    Crypto__Decrypted_Signed_Binary,
    Crypto__Vehicle_Data,
    Crypto__Encrypted_Vehicle_Data,
    Crypto__Signed_Vehicle_Data,
    Crypto__Decrypted_Signed_Vehicle_Data,
    Crypto__Decrypted_Vehicle_Data,
    Crypto__Encrypted_Update_Response,
    Crypto__Signed_Update_Response,
    Crypto__Encrypted_Written_Sourcecode,
    Crypto__Signed_Written_Sourcecode,
    Crypto__Decrypted_Signed_Sourcecode,
    Crypto__Encrypted_Sourcecode,
    Crypto__Signed_Sourcecode,
    Crypto__Decrypted_Sourcecode
    
} Crypto__Message_Status;
#define Crypto__Message_Status__max 22
typedef enum
{
    Crypto__All,
    Crypto__Pseudonymization,
    Crypto__Masking
    
} Crypto__Data_Processing;
#define Crypto__Data_Processing__max 3

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern Crypto__Subject_Agent Crypto__Subject;
extern Crypto__Encrypt_Method Crypto__Encryption_Algorithm;
extern Crypto__Encrypt_Mode Crypto__Encryption_Mode;
extern Crypto__Sign_Method Crypto__Signature_Algorithm;
extern Crypto__Hash_Method Crypto__Hash_Algorithm;
extern Crypto__Message_Status Crypto__Receive_Encrypt_Message;
extern Crypto__Message_Status Crypto__Receive_Sign_Message;
extern Crypto__Message_Status Crypto__Send_Encrypt_Message;
extern Crypto__Message_Status Crypto__Send_Sign_Message;
extern Crypto__Operation Crypto__Permission;
extern int32_t Crypto__Encryption_Key_length;
extern int32_t Crypto__Signature_Key_length;
extern int32_t Crypto__Hash_Key_length;
extern Crypto__Crypto_Test_Result Crypto__Test_Result;
extern Crypto__Subject_Agent Crypto__Send_Target;
extern Crypto__Message_Status Crypto__Data_Status;
extern Crypto__Data_Processing Crypto__User_Data_Processing;
extern void Crypto__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Crypto__receive_message(void);
extern void Crypto__signature_verify(int32_t Timestamp, int32_t Current_Timestamp, int32_t Timestamp_Subtraction);
extern void Crypto__patchfile_decryption(void);
extern void Crypto__patchfile_encryption(void);
extern void Crypto__signature(void);
extern void Crypto__send_message(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Crypto_h */
