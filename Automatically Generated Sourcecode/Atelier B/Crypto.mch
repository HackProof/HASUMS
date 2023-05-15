/* Crypto
 * Author: SANE
 * Creation date: 2023-04-25
 */
MACHINE
    Crypto

SETS
    Subject_Agent = {Empty_Agent, Secondary_ECU, Auto_Repair_Shop, Vehicle, Development_Server, Diagnostic_Server, Update_Server, CRM_Server, Developer_PC, DiagnosticTester_PC, Engineer_PC, OEM_TeamLeader};
    Encrypt_Method = {Empty_Encrypt_Method, AES, Camelia};
    Encrypt_Mode = {Empty_Mode, ECB, OFB, CFB, CTR, CBC, GCM, CCM, Poly1303};
    Crypto_Test_Result = {Crypto_Test_Pass, Crypto_Test_Fail, Signature_Verify_Pass, Signature_Verify_Fail};
    Sign_Method = {Empty_Sign_Method, RSA, Curve25519_Ed25519, NIST_Curve_P256_P384_P521};
    Hash_Method = {Empty_Hash_Method, SHA_1, SHA_2, SHA_3};
    Operation = {None, Download, Upload, Fix, Transfer, Approve, Decrypt, Encrypt};
    Message_Status = {Empty_Message, Encrypted_Message, Signed_Message, Decrypted_Message, Binary, Encrypted_Binary, Decrypted_Binary, Signed_Binary, Decrypted_Signed_Binary, Vehicle_Data, Encrypted_Vehicle_Data, Signed_Vehicle_Data, Decrypted_Signed_Vehicle_Data, Decrypted_Vehicle_Data, Encrypted_Update_Response, Signed_Update_Response, Encrypted_Written_Sourcecode, Signed_Written_Sourcecode, Decrypted_Signed_Sourcecode, Encrypted_Sourcecode, Signed_Sourcecode, Decrypted_Sourcecode};
    Data_Processing = {All, Pseudonymization, Masking}
    
CONCRETE_VARIABLES
    Subject,
    Encryption_Algorithm,
    Encryption_Mode,
    Signature_Algorithm,
    Hash_Algorithm,
    Receive_Encrypt_Message,
    Receive_Sign_Message,
    Send_Encrypt_Message,
    Send_Sign_Message,
    Permission,
    Encryption_Key_length,
    Signature_Key_length,
    Hash_Key_length,
    Test_Result,
    Send_Target, 
    Data_Status,
    User_Data_Processing

INVARIANT
    Subject : Subject_Agent &
    Encryption_Algorithm : Encrypt_Method &
    Encryption_Mode : Encrypt_Mode &
    Signature_Algorithm : Sign_Method &
    Hash_Algorithm : Hash_Method &
    Receive_Encrypt_Message : Message_Status &
    Receive_Sign_Message : Message_Status &
    Send_Encrypt_Message : Message_Status &
    Send_Sign_Message : Message_Status &
    Permission : Operation &
    Encryption_Key_length : INT &
    Signature_Key_length : INT &
    Hash_Key_length : INT &
    Test_Result : Crypto_Test_Result &
    card(Encrypt_Method) = 1 &
    card(Sign_Method) = 1 &
    card(Hash_Method) = 1 &
    Send_Target : Subject_Agent &
    Data_Status : Message_Status &
    User_Data_Processing : Data_Processing

INITIALISATION
    Subject :: {} ||
    Encryption_Algorithm :: {} ||
    Encryption_Mode :: {} ||
    Signature_Algorithm :: {} ||
    Hash_Algorithm :: {} ||
    Receive_Encrypt_Message :: {} ||
    Receive_Sign_Message :: {} ||
    Send_Encrypt_Message :: {} ||
    Send_Sign_Message :: {} ||
    Permission :: {} ||
    Encryption_Key_length :: INT ||
    Signature_Key_length :: INT ||
    Hash_Key_length :: INT ||
    Test_Result :: {} ||
    Send_Target :: {} ||
    Data_Status :: {} ||
    User_Data_Processing :: {}
    
OPERATIONS
    receive_message = skip;
    signature_verify(Timestamp, Current_Timestamp, Timestamp_Subtraction) = 
    PRE
        Timestamp : NAT &
        Current_Timestamp : NAT &
        Timestamp_Subtraction : NAT
    THEN
        Test_Result := Signature_Verify_Fail
    END;
    patchfile_decryption = skip;
    patchfile_encryption = skip;
    signature = skip;
    send_message = skip
END
