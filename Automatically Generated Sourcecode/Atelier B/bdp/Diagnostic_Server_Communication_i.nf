Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Diagnostic_Server_Communication_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Diagnostic_Server_Communication_i))==(Machine(Crypto));
  Level(Implementation(Diagnostic_Server_Communication_i))==(1);
  Upper_Level(Implementation(Diagnostic_Server_Communication_i))==(Machine(Crypto))
END
&
THEORY LoadedStructureX IS
  Implementation(Diagnostic_Server_Communication_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Diagnostic_Server_Communication_i))==(?);
  Inherited_List_Includes(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Diagnostic_Server_Communication_i))==(?);
  Context_List_Variables(Implementation(Diagnostic_Server_Communication_i))==(?);
  Abstract_List_Variables(Implementation(Diagnostic_Server_Communication_i))==(?);
  Local_List_Variables(Implementation(Diagnostic_Server_Communication_i))==(?);
  List_Variables(Implementation(Diagnostic_Server_Communication_i))==(?);
  External_List_Variables(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Diagnostic_Server_Communication_i))==(User_Data_Processing,Data_Status,Send_Target,Test_Result,Hash_Key_length,Signature_Key_length,Encryption_Key_length,Permission,Send_Sign_Message,Send_Encrypt_Message,Receive_Sign_Message,Receive_Encrypt_Message,Hash_Algorithm,Signature_Algorithm,Encryption_Mode,Encryption_Algorithm,Subject);
  Abstract_List_VisibleVariables(Implementation(Diagnostic_Server_Communication_i))==(User_Data_Processing,Data_Status,Send_Target,Test_Result,Hash_Key_length,Signature_Key_length,Encryption_Key_length,Permission,Send_Sign_Message,Send_Encrypt_Message,Receive_Sign_Message,Receive_Encrypt_Message,Hash_Algorithm,Signature_Algorithm,Encryption_Mode,Encryption_Algorithm,Subject);
  External_List_VisibleVariables(Implementation(Diagnostic_Server_Communication_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Diagnostic_Server_Communication_i))==(?);
  List_VisibleVariables(Implementation(Diagnostic_Server_Communication_i))==(?);
  Internal_List_VisibleVariables(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  Expanded_List_Invariant(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  Abstract_List_Invariant(Implementation(Diagnostic_Server_Communication_i))==(Subject: Subject_Agent & Encryption_Algorithm: Encrypt_Method & Encryption_Mode: Encrypt_Mode & Signature_Algorithm: Sign_Method & Hash_Algorithm: Hash_Method & Receive_Encrypt_Message: Message_Status & Receive_Sign_Message: Message_Status & Send_Encrypt_Message: Message_Status & Send_Sign_Message: Message_Status & Permission: Operation & Encryption_Key_length: INT & Signature_Key_length: INT & Hash_Key_length: INT & Test_Result: Crypto_Test_Result & card(Encrypt_Method) = 1 & card(Sign_Method) = 1 & card(Hash_Method) = 1 & Send_Target: Subject_Agent & Data_Status: Message_Status & User_Data_Processing: Data_Processing);
  Context_List_Invariant(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  List_Invariant(Implementation(Diagnostic_Server_Communication_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  Abstract_List_Assertions(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  Context_List_Assertions(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  List_Assertions(Implementation(Diagnostic_Server_Communication_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Diagnostic_Server_Communication_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Diagnostic_Server_Communication_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Diagnostic_Server_Communication_i))==(Subject:=Empty_Agent;Encryption_Algorithm:=Empty_Encrypt_Method;Encryption_Mode:=Empty_Mode;Signature_Algorithm:=Empty_Sign_Method;Hash_Algorithm:=Empty_Hash_Method;Receive_Encrypt_Message:=Empty_Message;Receive_Sign_Message:=Empty_Message;Send_Encrypt_Message:=Empty_Message;Send_Sign_Message:=Empty_Message;Permission:=None;(0: INT | Encryption_Key_length:=0);(0: INT | Signature_Key_length:=0);(0: INT | Hash_Key_length:=0);Test_Result:=Crypto_Test_Fail;Send_Target:=Empty_Agent;Data_Status:=Empty_Message;User_Data_Processing:=All);
  Context_List_Initialisation(Implementation(Diagnostic_Server_Communication_i))==(skip);
  List_Initialisation(Implementation(Diagnostic_Server_Communication_i))==(Subject:=Empty_Agent;Encryption_Algorithm:=Empty_Encrypt_Method;Encryption_Mode:=Empty_Mode;Signature_Algorithm:=Empty_Sign_Method;Hash_Algorithm:=Empty_Hash_Method;Receive_Encrypt_Message:=Empty_Message;Receive_Sign_Message:=Empty_Message;Send_Encrypt_Message:=Empty_Message;Send_Sign_Message:=Empty_Message;Permission:=None;Encryption_Key_length:=0;Signature_Key_length:=0;Hash_Key_length:=0;Test_Result:=Crypto_Test_Fail;Send_Target:=Empty_Agent;Data_Status:=Empty_Message;User_Data_Processing:=All)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  List_Context_Constraints(Implementation(Diagnostic_Server_Communication_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Diagnostic_Server_Communication_i))==(receive_message,signature_verify,patchfile_decryption,patchfile_encryption,signature,send_message);
  List_Operations(Implementation(Diagnostic_Server_Communication_i))==(receive_message,signature_verify,patchfile_decryption,patchfile_encryption,signature,send_message)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Diagnostic_Server_Communication_i),receive_message)==(?);
  List_Input(Implementation(Diagnostic_Server_Communication_i),signature_verify)==(Timestamp,Current_Timestamp,Timestamp_Subtraction);
  List_Input(Implementation(Diagnostic_Server_Communication_i),patchfile_decryption)==(?);
  List_Input(Implementation(Diagnostic_Server_Communication_i),patchfile_encryption)==(?);
  List_Input(Implementation(Diagnostic_Server_Communication_i),signature)==(?);
  List_Input(Implementation(Diagnostic_Server_Communication_i),send_message)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Diagnostic_Server_Communication_i),receive_message)==(?);
  List_Output(Implementation(Diagnostic_Server_Communication_i),signature_verify)==(?);
  List_Output(Implementation(Diagnostic_Server_Communication_i),patchfile_decryption)==(?);
  List_Output(Implementation(Diagnostic_Server_Communication_i),patchfile_encryption)==(?);
  List_Output(Implementation(Diagnostic_Server_Communication_i),signature)==(?);
  List_Output(Implementation(Diagnostic_Server_Communication_i),send_message)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Diagnostic_Server_Communication_i),receive_message)==(receive_message);
  List_Header(Implementation(Diagnostic_Server_Communication_i),signature_verify)==(signature_verify(Timestamp,Current_Timestamp,Timestamp_Subtraction));
  List_Header(Implementation(Diagnostic_Server_Communication_i),patchfile_decryption)==(patchfile_decryption);
  List_Header(Implementation(Diagnostic_Server_Communication_i),patchfile_encryption)==(patchfile_encryption);
  List_Header(Implementation(Diagnostic_Server_Communication_i),signature)==(signature);
  List_Header(Implementation(Diagnostic_Server_Communication_i),send_message)==(send_message)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Diagnostic_Server_Communication_i),receive_message)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Communication_i),receive_message)==(btrue);
  Own_Precondition(Implementation(Diagnostic_Server_Communication_i),signature_verify)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Communication_i),signature_verify)==(Timestamp: NAT & Current_Timestamp: NAT & Timestamp_Subtraction: NAT);
  Own_Precondition(Implementation(Diagnostic_Server_Communication_i),patchfile_decryption)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Communication_i),patchfile_decryption)==(btrue);
  Own_Precondition(Implementation(Diagnostic_Server_Communication_i),patchfile_encryption)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Communication_i),patchfile_encryption)==(btrue);
  Own_Precondition(Implementation(Diagnostic_Server_Communication_i),signature)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Communication_i),signature)==(btrue);
  Own_Precondition(Implementation(Diagnostic_Server_Communication_i),send_message)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Communication_i),send_message)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Communication_i),send_message)==(btrue | Subject = Diagnostic_Server or Subject = Development_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Send_Encrypt_Message = Encrypted_Sourcecode & Send_Sign_Message = Signed_Sourcecode ==> Send_Target:=Developer_PC [] not(Subject = Diagnostic_Server or Subject = Development_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Send_Encrypt_Message = Encrypted_Sourcecode & Send_Sign_Message = Signed_Sourcecode) ==> (Subject = Diagnostic_Server or Subject = Update_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Send_Encrypt_Message = Encrypted_Binary & Send_Sign_Message = Signed_Binary ==> Send_Target:=Update_Server [] not(Subject = Diagnostic_Server or Subject = Update_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Send_Encrypt_Message = Encrypted_Binary & Send_Sign_Message = Signed_Binary) ==> Send_Target:=Empty_Agent));
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Communication_i),signature)==(btrue | Signature_Algorithm = RSA or Signature_Algorithm = Curve25519_Ed25519 or Signature_Algorithm = NIST_Curve_P256_P384_P521 & Signature_Key_length = 2048 or Signature_Key_length = 3072 or Signature_Key_length = 4096 & Hash_Algorithm = SHA_1 or Hash_Algorithm = SHA_2 or Hash_Algorithm = SHA_3 & Hash_Key_length = 256 or Hash_Key_length = 384 or Hash_Key_length = 512 & Data_Status = Encrypted_Binary & Data_Status = Signed_Binary & Subject = OEM_TeamLeader & Permission = Approve ==> (Subject:=OEM_TeamLeader;Permission:=Transfer) [] not(Signature_Algorithm = RSA or Signature_Algorithm = Curve25519_Ed25519 or Signature_Algorithm = NIST_Curve_P256_P384_P521 & Signature_Key_length = 2048 or Signature_Key_length = 3072 or Signature_Key_length = 4096 & Hash_Algorithm = SHA_1 or Hash_Algorithm = SHA_2 or Hash_Algorithm = SHA_3 & Hash_Key_length = 256 or Hash_Key_length = 384 or Hash_Key_length = 512 & Data_Status = Encrypted_Binary & Data_Status = Signed_Binary & Subject = OEM_TeamLeader & Permission = Approve) ==> Permission:=None);
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Communication_i),patchfile_encryption)==(btrue | skip);
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Communication_i),patchfile_decryption)==(btrue | skip);
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Communication_i),signature_verify)==(Timestamp: NAT & Current_Timestamp: NAT & Timestamp_Subtraction: NAT | Signature_Algorithm = RSA or Signature_Algorithm = Curve25519_Ed25519 or Signature_Algorithm = NIST_Curve_P256_P384_P521 & Signature_Key_length = 2048 or Signature_Key_length = 3072 or Signature_Key_length = 4096 & Hash_Algorithm = SHA_1 or Hash_Algorithm = SHA_2 or Hash_Algorithm = SHA_3 & Hash_Key_length = 256 or Hash_Key_length = 384 or Hash_Key_length = 512 & Data_Status = Decrypted_Sourcecode & Data_Status = Decrypted_Signed_Sourcecode & Decrypted_Sourcecode = Decrypted_Signed_Sourcecode & Current_Timestamp>Timestamp & Timestamp_Subtraction<100 ==> Test_Result:=Signature_Verify_Pass [] not(Signature_Algorithm = RSA or Signature_Algorithm = Curve25519_Ed25519 or Signature_Algorithm = NIST_Curve_P256_P384_P521 & Signature_Key_length = 2048 or Signature_Key_length = 3072 or Signature_Key_length = 4096 & Hash_Algorithm = SHA_1 or Hash_Algorithm = SHA_2 or Hash_Algorithm = SHA_3 & Hash_Key_length = 256 or Hash_Key_length = 384 or Hash_Key_length = 512 & Data_Status = Decrypted_Sourcecode & Data_Status = Decrypted_Signed_Sourcecode & Decrypted_Sourcecode = Decrypted_Signed_Sourcecode & Current_Timestamp>Timestamp & Timestamp_Subtraction<100) ==> Test_Result:=Signature_Verify_Fail);
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Communication_i),receive_message)==(btrue | Subject = Development_Server or Subject = Diagnostic_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Receive_Encrypt_Message = Encrypted_Written_Sourcecode & Receive_Sign_Message = Signed_Written_Sourcecode ==> (Subject:=Diagnostic_Server;Permission:=Download) [] not(Subject = Development_Server or Subject = Diagnostic_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Receive_Encrypt_Message = Encrypted_Written_Sourcecode & Receive_Sign_Message = Signed_Written_Sourcecode) ==> Permission:=None);
  List_Substitution(Implementation(Diagnostic_Server_Communication_i),receive_message)==(IF Subject = Development_Server or Subject = Diagnostic_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Receive_Encrypt_Message = Encrypted_Written_Sourcecode & Receive_Sign_Message = Signed_Written_Sourcecode THEN Subject:=Diagnostic_Server;Permission:=Download ELSE Permission:=None END);
  List_Substitution(Implementation(Diagnostic_Server_Communication_i),signature_verify)==(IF Signature_Algorithm = RSA or Signature_Algorithm = Curve25519_Ed25519 or Signature_Algorithm = NIST_Curve_P256_P384_P521 & Signature_Key_length = 2048 or Signature_Key_length = 3072 or Signature_Key_length = 4096 & Hash_Algorithm = SHA_1 or Hash_Algorithm = SHA_2 or Hash_Algorithm = SHA_3 & Hash_Key_length = 256 or Hash_Key_length = 384 or Hash_Key_length = 512 & Data_Status = Decrypted_Sourcecode & Data_Status = Decrypted_Signed_Sourcecode & Decrypted_Sourcecode = Decrypted_Signed_Sourcecode & Current_Timestamp>Timestamp & Timestamp_Subtraction<100 THEN Test_Result:=Signature_Verify_Pass ELSE Test_Result:=Signature_Verify_Fail END);
  List_Substitution(Implementation(Diagnostic_Server_Communication_i),patchfile_decryption)==(skip);
  List_Substitution(Implementation(Diagnostic_Server_Communication_i),patchfile_encryption)==(skip);
  List_Substitution(Implementation(Diagnostic_Server_Communication_i),signature)==(IF Signature_Algorithm = RSA or Signature_Algorithm = Curve25519_Ed25519 or Signature_Algorithm = NIST_Curve_P256_P384_P521 & Signature_Key_length = 2048 or Signature_Key_length = 3072 or Signature_Key_length = 4096 & Hash_Algorithm = SHA_1 or Hash_Algorithm = SHA_2 or Hash_Algorithm = SHA_3 & Hash_Key_length = 256 or Hash_Key_length = 384 or Hash_Key_length = 512 & Data_Status = Encrypted_Binary & Data_Status = Signed_Binary & Subject = OEM_TeamLeader & Permission = Approve THEN Subject:=OEM_TeamLeader;Permission:=Transfer ELSE Permission:=None END);
  List_Substitution(Implementation(Diagnostic_Server_Communication_i),send_message)==(IF Subject = Diagnostic_Server or Subject = Development_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Send_Encrypt_Message = Encrypted_Sourcecode & Send_Sign_Message = Signed_Sourcecode THEN Send_Target:=Developer_PC ELSE IF Subject = Diagnostic_Server or Subject = Update_Server & Encryption_Algorithm = AES & Encryption_Key_length = 512 or Encryption_Key_length = 1024 or Encryption_Key_length = 2048 & Encryption_Mode = ECB or Encryption_Mode = OFB or Encryption_Mode = CFB or Encryption_Mode = CTR or Encryption_Mode = CBC or Encryption_Mode = GCM or Encryption_Mode = CCM & Send_Encrypt_Message = Encrypted_Binary & Send_Sign_Message = Signed_Binary THEN Send_Target:=Update_Server ELSE Send_Target:=Empty_Agent END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Diagnostic_Server_Communication_i))==(?);
  Inherited_List_Constants(Implementation(Diagnostic_Server_Communication_i))==(?);
  List_Constants(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Data_Processing)==({All,Pseudonymization,Masking});
  Context_List_Enumerated(Implementation(Diagnostic_Server_Communication_i))==(?);
  Context_List_Defered(Implementation(Diagnostic_Server_Communication_i))==(?);
  Context_List_Sets(Implementation(Diagnostic_Server_Communication_i))==(?);
  List_Own_Enumerated(Implementation(Diagnostic_Server_Communication_i))==(Subject_Agent,Encrypt_Method,Encrypt_Mode,Crypto_Test_Result,Sign_Method,Hash_Method,Operation,Message_Status,Data_Processing);
  List_Valuable_Sets(Implementation(Diagnostic_Server_Communication_i))==(?);
  Inherited_List_Enumerated(Implementation(Diagnostic_Server_Communication_i))==(Subject_Agent,Encrypt_Method,Encrypt_Mode,Crypto_Test_Result,Sign_Method,Hash_Method,Operation,Message_Status,Data_Processing);
  Inherited_List_Defered(Implementation(Diagnostic_Server_Communication_i))==(?);
  Inherited_List_Sets(Implementation(Diagnostic_Server_Communication_i))==(Subject_Agent,Encrypt_Method,Encrypt_Mode,Crypto_Test_Result,Sign_Method,Hash_Method,Operation,Message_Status,Data_Processing);
  List_Enumerated(Implementation(Diagnostic_Server_Communication_i))==(?);
  List_Defered(Implementation(Diagnostic_Server_Communication_i))==(?);
  List_Sets(Implementation(Diagnostic_Server_Communication_i))==(?);
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Message_Status)==({Empty_Message,Encrypted_Message,Signed_Message,Decrypted_Message,Binary,Encrypted_Binary,Decrypted_Binary,Signed_Binary,Decrypted_Signed_Binary,Vehicle_Data,Encrypted_Vehicle_Data,Signed_Vehicle_Data,Decrypted_Signed_Vehicle_Data,Decrypted_Vehicle_Data,Encrypted_Update_Response,Signed_Update_Response,Encrypted_Written_Sourcecode,Signed_Written_Sourcecode,Decrypted_Signed_Sourcecode,Encrypted_Sourcecode,Signed_Sourcecode,Decrypted_Sourcecode});
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Operation)==({None,Download,Upload,Fix,Transfer,Approve,Decrypt,Encrypt});
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Hash_Method)==({Empty_Hash_Method,SHA_1,SHA_2,SHA_3});
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Sign_Method)==({Empty_Sign_Method,RSA,Curve25519_Ed25519,NIST_Curve_P256_P384_P521});
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Crypto_Test_Result)==({Crypto_Test_Pass,Crypto_Test_Fail,Signature_Verify_Pass,Signature_Verify_Fail});
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Encrypt_Mode)==({Empty_Mode,ECB,OFB,CFB,CTR,CBC,GCM,CCM,Poly1303});
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Encrypt_Method)==({Empty_Encrypt_Method,AES,Camelia});
  Set_Definition(Implementation(Diagnostic_Server_Communication_i),Subject_Agent)==({Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC,OEM_TeamLeader})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Diagnostic_Server_Communication_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Diagnostic_Server_Communication_i))==(?);
  List_HiddenConstants(Implementation(Diagnostic_Server_Communication_i))==(?);
  External_List_HiddenConstants(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Diagnostic_Server_Communication_i))==(Subject_Agent: FIN(INTEGER) & not(Subject_Agent = {}) & Encrypt_Method: FIN(INTEGER) & not(Encrypt_Method = {}) & Encrypt_Mode: FIN(INTEGER) & not(Encrypt_Mode = {}) & Crypto_Test_Result: FIN(INTEGER) & not(Crypto_Test_Result = {}) & Sign_Method: FIN(INTEGER) & not(Sign_Method = {}) & Hash_Method: FIN(INTEGER) & not(Hash_Method = {}) & Operation: FIN(INTEGER) & not(Operation = {}) & Message_Status: FIN(INTEGER) & not(Message_Status = {}) & Data_Processing: FIN(INTEGER) & not(Data_Processing = {}));
  Context_List_Properties(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  Inherited_List_Properties(Implementation(Diagnostic_Server_Communication_i))==(btrue);
  List_Properties(Implementation(Diagnostic_Server_Communication_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Diagnostic_Server_Communication_i))==(aa: aa);
  List_Values(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Diagnostic_Server_Communication_i))==(Type(send_message) == Cst(No_type,No_type);Type(signature) == Cst(No_type,No_type);Type(patchfile_encryption) == Cst(No_type,No_type);Type(patchfile_decryption) == Cst(No_type,No_type);Type(signature_verify) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(receive_message) == Cst(No_type,No_type));
  VisibleVariables(Implementation(Diagnostic_Server_Communication_i))==(Type(User_Data_Processing) == Mvv(etype(Data_Processing,?,?));Type(Data_Status) == Mvv(etype(Message_Status,?,?));Type(Send_Target) == Mvv(etype(Subject_Agent,?,?));Type(Test_Result) == Mvv(etype(Crypto_Test_Result,?,?));Type(Hash_Key_length) == Mvv(btype(INTEGER,?,?));Type(Signature_Key_length) == Mvv(btype(INTEGER,?,?));Type(Encryption_Key_length) == Mvv(btype(INTEGER,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Send_Sign_Message) == Mvv(etype(Message_Status,?,?));Type(Send_Encrypt_Message) == Mvv(etype(Message_Status,?,?));Type(Receive_Sign_Message) == Mvv(etype(Message_Status,?,?));Type(Receive_Encrypt_Message) == Mvv(etype(Message_Status,?,?));Type(Hash_Algorithm) == Mvv(etype(Hash_Method,?,?));Type(Signature_Algorithm) == Mvv(etype(Sign_Method,?,?));Type(Encryption_Mode) == Mvv(etype(Encrypt_Mode,?,?));Type(Encryption_Algorithm) == Mvv(etype(Encrypt_Method,?,?));Type(Subject) == Mvv(etype(Subject_Agent,?,?)));
  Constants(Implementation(Diagnostic_Server_Communication_i))==(Type(Empty_Agent) == Cst(etype(Subject_Agent,0,11));Type(Secondary_ECU) == Cst(etype(Subject_Agent,0,11));Type(Auto_Repair_Shop) == Cst(etype(Subject_Agent,0,11));Type(Vehicle) == Cst(etype(Subject_Agent,0,11));Type(Development_Server) == Cst(etype(Subject_Agent,0,11));Type(Diagnostic_Server) == Cst(etype(Subject_Agent,0,11));Type(Update_Server) == Cst(etype(Subject_Agent,0,11));Type(CRM_Server) == Cst(etype(Subject_Agent,0,11));Type(Developer_PC) == Cst(etype(Subject_Agent,0,11));Type(DiagnosticTester_PC) == Cst(etype(Subject_Agent,0,11));Type(Engineer_PC) == Cst(etype(Subject_Agent,0,11));Type(OEM_TeamLeader) == Cst(etype(Subject_Agent,0,11));Type(Empty_Encrypt_Method) == Cst(etype(Encrypt_Method,0,2));Type(AES) == Cst(etype(Encrypt_Method,0,2));Type(Camelia) == Cst(etype(Encrypt_Method,0,2));Type(Empty_Mode) == Cst(etype(Encrypt_Mode,0,8));Type(ECB) == Cst(etype(Encrypt_Mode,0,8));Type(OFB) == Cst(etype(Encrypt_Mode,0,8));Type(CFB) == Cst(etype(Encrypt_Mode,0,8));Type(CTR) == Cst(etype(Encrypt_Mode,0,8));Type(CBC) == Cst(etype(Encrypt_Mode,0,8));Type(GCM) == Cst(etype(Encrypt_Mode,0,8));Type(CCM) == Cst(etype(Encrypt_Mode,0,8));Type(Poly1303) == Cst(etype(Encrypt_Mode,0,8));Type(Crypto_Test_Pass) == Cst(etype(Crypto_Test_Result,0,3));Type(Crypto_Test_Fail) == Cst(etype(Crypto_Test_Result,0,3));Type(Signature_Verify_Pass) == Cst(etype(Crypto_Test_Result,0,3));Type(Signature_Verify_Fail) == Cst(etype(Crypto_Test_Result,0,3));Type(Empty_Sign_Method) == Cst(etype(Sign_Method,0,3));Type(RSA) == Cst(etype(Sign_Method,0,3));Type(Curve25519_Ed25519) == Cst(etype(Sign_Method,0,3));Type(NIST_Curve_P256_P384_P521) == Cst(etype(Sign_Method,0,3));Type(Empty_Hash_Method) == Cst(etype(Hash_Method,0,3));Type(SHA_1) == Cst(etype(Hash_Method,0,3));Type(SHA_2) == Cst(etype(Hash_Method,0,3));Type(SHA_3) == Cst(etype(Hash_Method,0,3));Type(None) == Cst(etype(Operation,0,7));Type(Download) == Cst(etype(Operation,0,7));Type(Upload) == Cst(etype(Operation,0,7));Type(Fix) == Cst(etype(Operation,0,7));Type(Transfer) == Cst(etype(Operation,0,7));Type(Approve) == Cst(etype(Operation,0,7));Type(Decrypt) == Cst(etype(Operation,0,7));Type(Encrypt) == Cst(etype(Operation,0,7));Type(Empty_Message) == Cst(etype(Message_Status,0,21));Type(Encrypted_Message) == Cst(etype(Message_Status,0,21));Type(Signed_Message) == Cst(etype(Message_Status,0,21));Type(Decrypted_Message) == Cst(etype(Message_Status,0,21));Type(Binary) == Cst(etype(Message_Status,0,21));Type(Encrypted_Binary) == Cst(etype(Message_Status,0,21));Type(Decrypted_Binary) == Cst(etype(Message_Status,0,21));Type(Signed_Binary) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Binary) == Cst(etype(Message_Status,0,21));Type(Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Encrypted_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Signed_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Decrypted_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Encrypted_Update_Response) == Cst(etype(Message_Status,0,21));Type(Signed_Update_Response) == Cst(etype(Message_Status,0,21));Type(Encrypted_Written_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Signed_Written_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Encrypted_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Signed_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Decrypted_Sourcecode) == Cst(etype(Message_Status,0,21));Type(All) == Cst(etype(Data_Processing,0,2));Type(Pseudonymization) == Cst(etype(Data_Processing,0,2));Type(Masking) == Cst(etype(Data_Processing,0,2)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Diagnostic_Server_Communication_i)) == (? | ? | ? | ? | receive_message,signature_verify,patchfile_decryption,patchfile_encryption,signature,send_message | ? | ? | ? | Diagnostic_Server_Communication_i);
  List_Of_HiddenCst_Ids(Implementation(Diagnostic_Server_Communication_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Diagnostic_Server_Communication_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Diagnostic_Server_Communication_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Diagnostic_Server_Communication_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Diagnostic_Server_Communication_i)) == (Type(Data_Processing) == Cst(SetOf(etype(Data_Processing,0,2)));Type(Message_Status) == Cst(SetOf(etype(Message_Status,0,21)));Type(Operation) == Cst(SetOf(etype(Operation,0,7)));Type(Hash_Method) == Cst(SetOf(etype(Hash_Method,0,3)));Type(Sign_Method) == Cst(SetOf(etype(Sign_Method,0,3)));Type(Crypto_Test_Result) == Cst(SetOf(etype(Crypto_Test_Result,0,3)));Type(Encrypt_Mode) == Cst(SetOf(etype(Encrypt_Mode,0,8)));Type(Encrypt_Method) == Cst(SetOf(etype(Encrypt_Method,0,2)));Type(Subject_Agent) == Cst(SetOf(etype(Subject_Agent,0,11))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Diagnostic_Server_Communication_i)) == (Type(Masking) == Cst(etype(Data_Processing,0,2));Type(Pseudonymization) == Cst(etype(Data_Processing,0,2));Type(All) == Cst(etype(Data_Processing,0,2));Type(Decrypted_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Signed_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Encrypted_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Signed_Written_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Encrypted_Written_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Signed_Update_Response) == Cst(etype(Message_Status,0,21));Type(Encrypted_Update_Response) == Cst(etype(Message_Status,0,21));Type(Decrypted_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Signed_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Encrypted_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Binary) == Cst(etype(Message_Status,0,21));Type(Signed_Binary) == Cst(etype(Message_Status,0,21));Type(Decrypted_Binary) == Cst(etype(Message_Status,0,21));Type(Encrypted_Binary) == Cst(etype(Message_Status,0,21));Type(Binary) == Cst(etype(Message_Status,0,21));Type(Decrypted_Message) == Cst(etype(Message_Status,0,21));Type(Signed_Message) == Cst(etype(Message_Status,0,21));Type(Encrypted_Message) == Cst(etype(Message_Status,0,21));Type(Empty_Message) == Cst(etype(Message_Status,0,21));Type(Encrypt) == Cst(etype(Operation,0,7));Type(Decrypt) == Cst(etype(Operation,0,7));Type(Approve) == Cst(etype(Operation,0,7));Type(Transfer) == Cst(etype(Operation,0,7));Type(Fix) == Cst(etype(Operation,0,7));Type(Upload) == Cst(etype(Operation,0,7));Type(Download) == Cst(etype(Operation,0,7));Type(None) == Cst(etype(Operation,0,7));Type(SHA_3) == Cst(etype(Hash_Method,0,3));Type(SHA_2) == Cst(etype(Hash_Method,0,3));Type(SHA_1) == Cst(etype(Hash_Method,0,3));Type(Empty_Hash_Method) == Cst(etype(Hash_Method,0,3));Type(NIST_Curve_P256_P384_P521) == Cst(etype(Sign_Method,0,3));Type(Curve25519_Ed25519) == Cst(etype(Sign_Method,0,3));Type(RSA) == Cst(etype(Sign_Method,0,3));Type(Empty_Sign_Method) == Cst(etype(Sign_Method,0,3));Type(Signature_Verify_Fail) == Cst(etype(Crypto_Test_Result,0,3));Type(Signature_Verify_Pass) == Cst(etype(Crypto_Test_Result,0,3));Type(Crypto_Test_Fail) == Cst(etype(Crypto_Test_Result,0,3));Type(Crypto_Test_Pass) == Cst(etype(Crypto_Test_Result,0,3));Type(Poly1303) == Cst(etype(Encrypt_Mode,0,8));Type(CCM) == Cst(etype(Encrypt_Mode,0,8));Type(GCM) == Cst(etype(Encrypt_Mode,0,8));Type(CBC) == Cst(etype(Encrypt_Mode,0,8));Type(CTR) == Cst(etype(Encrypt_Mode,0,8));Type(CFB) == Cst(etype(Encrypt_Mode,0,8));Type(OFB) == Cst(etype(Encrypt_Mode,0,8));Type(ECB) == Cst(etype(Encrypt_Mode,0,8));Type(Empty_Mode) == Cst(etype(Encrypt_Mode,0,8));Type(Camelia) == Cst(etype(Encrypt_Method,0,2));Type(AES) == Cst(etype(Encrypt_Method,0,2));Type(Empty_Encrypt_Method) == Cst(etype(Encrypt_Method,0,2));Type(OEM_TeamLeader) == Cst(etype(Subject_Agent,0,11));Type(Engineer_PC) == Cst(etype(Subject_Agent,0,11));Type(DiagnosticTester_PC) == Cst(etype(Subject_Agent,0,11));Type(Developer_PC) == Cst(etype(Subject_Agent,0,11));Type(CRM_Server) == Cst(etype(Subject_Agent,0,11));Type(Update_Server) == Cst(etype(Subject_Agent,0,11));Type(Diagnostic_Server) == Cst(etype(Subject_Agent,0,11));Type(Development_Server) == Cst(etype(Subject_Agent,0,11));Type(Vehicle) == Cst(etype(Subject_Agent,0,11));Type(Auto_Repair_Shop) == Cst(etype(Subject_Agent,0,11));Type(Secondary_ECU) == Cst(etype(Subject_Agent,0,11));Type(Empty_Agent) == Cst(etype(Subject_Agent,0,11)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Diagnostic_Server_Communication_i)) == (Type(Subject) == Mvv(etype(Subject_Agent,?,?));Type(Encryption_Algorithm) == Mvv(etype(Encrypt_Method,?,?));Type(Encryption_Mode) == Mvv(etype(Encrypt_Mode,?,?));Type(Signature_Algorithm) == Mvv(etype(Sign_Method,?,?));Type(Hash_Algorithm) == Mvv(etype(Hash_Method,?,?));Type(Receive_Encrypt_Message) == Mvv(etype(Message_Status,?,?));Type(Receive_Sign_Message) == Mvv(etype(Message_Status,?,?));Type(Send_Encrypt_Message) == Mvv(etype(Message_Status,?,?));Type(Send_Sign_Message) == Mvv(etype(Message_Status,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Encryption_Key_length) == Mvv(btype(INTEGER,?,?));Type(Signature_Key_length) == Mvv(btype(INTEGER,?,?));Type(Hash_Key_length) == Mvv(btype(INTEGER,?,?));Type(Test_Result) == Mvv(etype(Crypto_Test_Result,?,?));Type(Send_Target) == Mvv(etype(Subject_Agent,?,?));Type(Data_Status) == Mvv(etype(Message_Status,?,?));Type(User_Data_Processing) == Mvv(etype(Data_Processing,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Diagnostic_Server_Communication_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Diagnostic_Server_Communication_i))==(User_Data_Processing: Data_Processing & Data_Status: Message_Status & Send_Target: Subject_Agent & Test_Result: Crypto_Test_Result & Hash_Key_length: INTEGER & Signature_Key_length: INTEGER & Encryption_Key_length: INTEGER & Permission: Operation & Send_Sign_Message: Message_Status & Send_Encrypt_Message: Message_Status & Receive_Sign_Message: Message_Status & Receive_Encrypt_Message: Message_Status & Hash_Algorithm: Hash_Method & Signature_Algorithm: Sign_Method & Encryption_Mode: Encrypt_Mode & Encryption_Algorithm: Encrypt_Method & Subject: Subject_Agent)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
