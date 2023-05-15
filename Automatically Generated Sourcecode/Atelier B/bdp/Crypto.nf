Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Crypto))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Crypto))==(Machine(Crypto));
  Level(Machine(Crypto))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Crypto)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Crypto))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Crypto))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Crypto))==(?);
  List_Includes(Machine(Crypto))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Crypto))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Crypto))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Crypto))==(?);
  Context_List_Variables(Machine(Crypto))==(?);
  Abstract_List_Variables(Machine(Crypto))==(?);
  Local_List_Variables(Machine(Crypto))==(?);
  List_Variables(Machine(Crypto))==(?);
  External_List_Variables(Machine(Crypto))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Crypto))==(?);
  Abstract_List_VisibleVariables(Machine(Crypto))==(?);
  External_List_VisibleVariables(Machine(Crypto))==(?);
  Expanded_List_VisibleVariables(Machine(Crypto))==(?);
  List_VisibleVariables(Machine(Crypto))==(User_Data_Processing,Data_Status,Send_Target,Test_Result,Hash_Key_length,Signature_Key_length,Encryption_Key_length,Permission,Send_Sign_Message,Send_Encrypt_Message,Receive_Sign_Message,Receive_Encrypt_Message,Hash_Algorithm,Signature_Algorithm,Encryption_Mode,Encryption_Algorithm,Subject);
  Internal_List_VisibleVariables(Machine(Crypto))==(User_Data_Processing,Data_Status,Send_Target,Test_Result,Hash_Key_length,Signature_Key_length,Encryption_Key_length,Permission,Send_Sign_Message,Send_Encrypt_Message,Receive_Sign_Message,Receive_Encrypt_Message,Hash_Algorithm,Signature_Algorithm,Encryption_Mode,Encryption_Algorithm,Subject)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Crypto))==(btrue);
  Gluing_List_Invariant(Machine(Crypto))==(btrue);
  Expanded_List_Invariant(Machine(Crypto))==(btrue);
  Abstract_List_Invariant(Machine(Crypto))==(btrue);
  Context_List_Invariant(Machine(Crypto))==(btrue);
  List_Invariant(Machine(Crypto))==(Subject: Subject_Agent & Encryption_Algorithm: Encrypt_Method & Encryption_Mode: Encrypt_Mode & Signature_Algorithm: Sign_Method & Hash_Algorithm: Hash_Method & Receive_Encrypt_Message: Message_Status & Receive_Sign_Message: Message_Status & Send_Encrypt_Message: Message_Status & Send_Sign_Message: Message_Status & Permission: Operation & Encryption_Key_length: INT & Signature_Key_length: INT & Hash_Key_length: INT & Test_Result: Crypto_Test_Result & card(Encrypt_Method) = 1 & card(Sign_Method) = 1 & card(Hash_Method) = 1 & Send_Target: Subject_Agent & Data_Status: Message_Status & User_Data_Processing: Data_Processing)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Crypto))==(btrue);
  Abstract_List_Assertions(Machine(Crypto))==(btrue);
  Context_List_Assertions(Machine(Crypto))==(btrue);
  List_Assertions(Machine(Crypto))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Crypto))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Crypto))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Crypto))==(@(Subject$0).(Subject$0: {} ==> Subject:=Subject$0) || @(Encryption_Algorithm$0).(Encryption_Algorithm$0: {} ==> Encryption_Algorithm:=Encryption_Algorithm$0) || @(Encryption_Mode$0).(Encryption_Mode$0: {} ==> Encryption_Mode:=Encryption_Mode$0) || @(Signature_Algorithm$0).(Signature_Algorithm$0: {} ==> Signature_Algorithm:=Signature_Algorithm$0) || @(Hash_Algorithm$0).(Hash_Algorithm$0: {} ==> Hash_Algorithm:=Hash_Algorithm$0) || @(Receive_Encrypt_Message$0).(Receive_Encrypt_Message$0: {} ==> Receive_Encrypt_Message:=Receive_Encrypt_Message$0) || @(Receive_Sign_Message$0).(Receive_Sign_Message$0: {} ==> Receive_Sign_Message:=Receive_Sign_Message$0) || @(Send_Encrypt_Message$0).(Send_Encrypt_Message$0: {} ==> Send_Encrypt_Message:=Send_Encrypt_Message$0) || @(Send_Sign_Message$0).(Send_Sign_Message$0: {} ==> Send_Sign_Message:=Send_Sign_Message$0) || @(Permission$0).(Permission$0: {} ==> Permission:=Permission$0) || @(Encryption_Key_length$0).(Encryption_Key_length$0: INT ==> Encryption_Key_length:=Encryption_Key_length$0) || @(Signature_Key_length$0).(Signature_Key_length$0: INT ==> Signature_Key_length:=Signature_Key_length$0) || @(Hash_Key_length$0).(Hash_Key_length$0: INT ==> Hash_Key_length:=Hash_Key_length$0) || @(Test_Result$0).(Test_Result$0: {} ==> Test_Result:=Test_Result$0) || @(Send_Target$0).(Send_Target$0: {} ==> Send_Target:=Send_Target$0) || @(Data_Status$0).(Data_Status$0: {} ==> Data_Status:=Data_Status$0) || @(User_Data_Processing$0).(User_Data_Processing$0: {} ==> User_Data_Processing:=User_Data_Processing$0));
  Context_List_Initialisation(Machine(Crypto))==(skip);
  List_Initialisation(Machine(Crypto))==(Subject:: {} || Encryption_Algorithm:: {} || Encryption_Mode:: {} || Signature_Algorithm:: {} || Hash_Algorithm:: {} || Receive_Encrypt_Message:: {} || Receive_Sign_Message:: {} || Send_Encrypt_Message:: {} || Send_Sign_Message:: {} || Permission:: {} || Encryption_Key_length:: INT || Signature_Key_length:: INT || Hash_Key_length:: INT || Test_Result:: {} || Send_Target:: {} || Data_Status:: {} || User_Data_Processing:: {})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Crypto))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Crypto))==(btrue);
  List_Constraints(Machine(Crypto))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Crypto))==(receive_message,signature_verify,patchfile_decryption,patchfile_encryption,signature,send_message);
  List_Operations(Machine(Crypto))==(receive_message,signature_verify,patchfile_decryption,patchfile_encryption,signature,send_message)
END
&
THEORY ListInputX IS
  List_Input(Machine(Crypto),receive_message)==(?);
  List_Input(Machine(Crypto),signature_verify)==(Timestamp,Current_Timestamp,Timestamp_Subtraction);
  List_Input(Machine(Crypto),patchfile_decryption)==(?);
  List_Input(Machine(Crypto),patchfile_encryption)==(?);
  List_Input(Machine(Crypto),signature)==(?);
  List_Input(Machine(Crypto),send_message)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Crypto),receive_message)==(?);
  List_Output(Machine(Crypto),signature_verify)==(?);
  List_Output(Machine(Crypto),patchfile_decryption)==(?);
  List_Output(Machine(Crypto),patchfile_encryption)==(?);
  List_Output(Machine(Crypto),signature)==(?);
  List_Output(Machine(Crypto),send_message)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Crypto),receive_message)==(receive_message);
  List_Header(Machine(Crypto),signature_verify)==(signature_verify(Timestamp,Current_Timestamp,Timestamp_Subtraction));
  List_Header(Machine(Crypto),patchfile_decryption)==(patchfile_decryption);
  List_Header(Machine(Crypto),patchfile_encryption)==(patchfile_encryption);
  List_Header(Machine(Crypto),signature)==(signature);
  List_Header(Machine(Crypto),send_message)==(send_message)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Crypto),receive_message)==(btrue);
  List_Precondition(Machine(Crypto),signature_verify)==(Timestamp: NAT & Current_Timestamp: NAT & Timestamp_Subtraction: NAT);
  List_Precondition(Machine(Crypto),patchfile_decryption)==(btrue);
  List_Precondition(Machine(Crypto),patchfile_encryption)==(btrue);
  List_Precondition(Machine(Crypto),signature)==(btrue);
  List_Precondition(Machine(Crypto),send_message)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Crypto),send_message)==(btrue | skip);
  Expanded_List_Substitution(Machine(Crypto),signature)==(btrue | skip);
  Expanded_List_Substitution(Machine(Crypto),patchfile_encryption)==(btrue | skip);
  Expanded_List_Substitution(Machine(Crypto),patchfile_decryption)==(btrue | skip);
  Expanded_List_Substitution(Machine(Crypto),signature_verify)==(Timestamp: NAT & Current_Timestamp: NAT & Timestamp_Subtraction: NAT | Test_Result:=Signature_Verify_Fail);
  Expanded_List_Substitution(Machine(Crypto),receive_message)==(btrue | skip);
  List_Substitution(Machine(Crypto),receive_message)==(skip);
  List_Substitution(Machine(Crypto),signature_verify)==(Test_Result:=Signature_Verify_Fail);
  List_Substitution(Machine(Crypto),patchfile_decryption)==(skip);
  List_Substitution(Machine(Crypto),patchfile_encryption)==(skip);
  List_Substitution(Machine(Crypto),signature)==(skip);
  List_Substitution(Machine(Crypto),send_message)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Crypto))==(?);
  Inherited_List_Constants(Machine(Crypto))==(?);
  List_Constants(Machine(Crypto))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Crypto),Subject_Agent)==({Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC,OEM_TeamLeader});
  Context_List_Enumerated(Machine(Crypto))==(?);
  Context_List_Defered(Machine(Crypto))==(?);
  Context_List_Sets(Machine(Crypto))==(?);
  List_Valuable_Sets(Machine(Crypto))==(?);
  Inherited_List_Enumerated(Machine(Crypto))==(?);
  Inherited_List_Defered(Machine(Crypto))==(?);
  Inherited_List_Sets(Machine(Crypto))==(?);
  List_Enumerated(Machine(Crypto))==(Subject_Agent,Encrypt_Method,Encrypt_Mode,Crypto_Test_Result,Sign_Method,Hash_Method,Operation,Message_Status,Data_Processing);
  List_Defered(Machine(Crypto))==(?);
  List_Sets(Machine(Crypto))==(Subject_Agent,Encrypt_Method,Encrypt_Mode,Crypto_Test_Result,Sign_Method,Hash_Method,Operation,Message_Status,Data_Processing);
  Set_Definition(Machine(Crypto),Encrypt_Method)==({Empty_Encrypt_Method,AES,Camelia});
  Set_Definition(Machine(Crypto),Encrypt_Mode)==({Empty_Mode,ECB,OFB,CFB,CTR,CBC,GCM,CCM,Poly1303});
  Set_Definition(Machine(Crypto),Crypto_Test_Result)==({Crypto_Test_Pass,Crypto_Test_Fail,Signature_Verify_Pass,Signature_Verify_Fail});
  Set_Definition(Machine(Crypto),Sign_Method)==({Empty_Sign_Method,RSA,Curve25519_Ed25519,NIST_Curve_P256_P384_P521});
  Set_Definition(Machine(Crypto),Hash_Method)==({Empty_Hash_Method,SHA_1,SHA_2,SHA_3});
  Set_Definition(Machine(Crypto),Operation)==({None,Download,Upload,Fix,Transfer,Approve,Decrypt,Encrypt});
  Set_Definition(Machine(Crypto),Message_Status)==({Empty_Message,Encrypted_Message,Signed_Message,Decrypted_Message,Binary,Encrypted_Binary,Decrypted_Binary,Signed_Binary,Decrypted_Signed_Binary,Vehicle_Data,Encrypted_Vehicle_Data,Signed_Vehicle_Data,Decrypted_Signed_Vehicle_Data,Decrypted_Vehicle_Data,Encrypted_Update_Response,Signed_Update_Response,Encrypted_Written_Sourcecode,Signed_Written_Sourcecode,Decrypted_Signed_Sourcecode,Encrypted_Sourcecode,Signed_Sourcecode,Decrypted_Sourcecode});
  Set_Definition(Machine(Crypto),Data_Processing)==({All,Pseudonymization,Masking})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Crypto))==(?);
  Expanded_List_HiddenConstants(Machine(Crypto))==(?);
  List_HiddenConstants(Machine(Crypto))==(?);
  External_List_HiddenConstants(Machine(Crypto))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Crypto))==(btrue);
  Context_List_Properties(Machine(Crypto))==(btrue);
  Inherited_List_Properties(Machine(Crypto))==(btrue);
  List_Properties(Machine(Crypto))==(Subject_Agent: FIN(INTEGER) & not(Subject_Agent = {}) & Encrypt_Method: FIN(INTEGER) & not(Encrypt_Method = {}) & Encrypt_Mode: FIN(INTEGER) & not(Encrypt_Mode = {}) & Crypto_Test_Result: FIN(INTEGER) & not(Crypto_Test_Result = {}) & Sign_Method: FIN(INTEGER) & not(Sign_Method = {}) & Hash_Method: FIN(INTEGER) & not(Hash_Method = {}) & Operation: FIN(INTEGER) & not(Operation = {}) & Message_Status: FIN(INTEGER) & not(Message_Status = {}) & Data_Processing: FIN(INTEGER) & not(Data_Processing = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Crypto),receive_message)==(?);
  List_ANY_Var(Machine(Crypto),signature_verify)==(?);
  List_ANY_Var(Machine(Crypto),patchfile_decryption)==(?);
  List_ANY_Var(Machine(Crypto),patchfile_encryption)==(?);
  List_ANY_Var(Machine(Crypto),signature)==(?);
  List_ANY_Var(Machine(Crypto),send_message)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Crypto)) == (Subject_Agent,Encrypt_Method,Encrypt_Mode,Crypto_Test_Result,Sign_Method,Hash_Method,Operation,Message_Status,Data_Processing,Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC,OEM_TeamLeader,Empty_Encrypt_Method,AES,Camelia,Empty_Mode,ECB,OFB,CFB,CTR,CBC,GCM,CCM,Poly1303,Crypto_Test_Pass,Crypto_Test_Fail,Signature_Verify_Pass,Signature_Verify_Fail,Empty_Sign_Method,RSA,Curve25519_Ed25519,NIST_Curve_P256_P384_P521,Empty_Hash_Method,SHA_1,SHA_2,SHA_3,None,Download,Upload,Fix,Transfer,Approve,Decrypt,Encrypt,Empty_Message,Encrypted_Message,Signed_Message,Decrypted_Message,Binary,Encrypted_Binary,Decrypted_Binary,Signed_Binary,Decrypted_Signed_Binary,Vehicle_Data,Encrypted_Vehicle_Data,Signed_Vehicle_Data,Decrypted_Signed_Vehicle_Data,Decrypted_Vehicle_Data,Encrypted_Update_Response,Signed_Update_Response,Encrypted_Written_Sourcecode,Signed_Written_Sourcecode,Decrypted_Signed_Sourcecode,Encrypted_Sourcecode,Signed_Sourcecode,Decrypted_Sourcecode,All,Pseudonymization,Masking | ? | ? | ? | receive_message,signature_verify,patchfile_decryption,patchfile_encryption,signature,send_message | ? | ? | ? | Crypto);
  List_Of_HiddenCst_Ids(Machine(Crypto)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Crypto)) == (?);
  List_Of_VisibleVar_Ids(Machine(Crypto)) == (User_Data_Processing,Data_Status,Send_Target,Test_Result,Hash_Key_length,Signature_Key_length,Encryption_Key_length,Permission,Send_Sign_Message,Send_Encrypt_Message,Receive_Sign_Message,Receive_Encrypt_Message,Hash_Algorithm,Signature_Algorithm,Encryption_Mode,Encryption_Algorithm,Subject | ?);
  List_Of_Ids_SeenBNU(Machine(Crypto)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Crypto)) == (Type(Subject_Agent) == Cst(SetOf(etype(Subject_Agent,0,11)));Type(Encrypt_Method) == Cst(SetOf(etype(Encrypt_Method,0,2)));Type(Encrypt_Mode) == Cst(SetOf(etype(Encrypt_Mode,0,8)));Type(Crypto_Test_Result) == Cst(SetOf(etype(Crypto_Test_Result,0,3)));Type(Sign_Method) == Cst(SetOf(etype(Sign_Method,0,3)));Type(Hash_Method) == Cst(SetOf(etype(Hash_Method,0,3)));Type(Operation) == Cst(SetOf(etype(Operation,0,7)));Type(Message_Status) == Cst(SetOf(etype(Message_Status,0,21)));Type(Data_Processing) == Cst(SetOf(etype(Data_Processing,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Crypto)) == (Type(Empty_Agent) == Cst(etype(Subject_Agent,0,11));Type(Secondary_ECU) == Cst(etype(Subject_Agent,0,11));Type(Auto_Repair_Shop) == Cst(etype(Subject_Agent,0,11));Type(Vehicle) == Cst(etype(Subject_Agent,0,11));Type(Development_Server) == Cst(etype(Subject_Agent,0,11));Type(Diagnostic_Server) == Cst(etype(Subject_Agent,0,11));Type(Update_Server) == Cst(etype(Subject_Agent,0,11));Type(CRM_Server) == Cst(etype(Subject_Agent,0,11));Type(Developer_PC) == Cst(etype(Subject_Agent,0,11));Type(DiagnosticTester_PC) == Cst(etype(Subject_Agent,0,11));Type(Engineer_PC) == Cst(etype(Subject_Agent,0,11));Type(OEM_TeamLeader) == Cst(etype(Subject_Agent,0,11));Type(Empty_Encrypt_Method) == Cst(etype(Encrypt_Method,0,2));Type(AES) == Cst(etype(Encrypt_Method,0,2));Type(Camelia) == Cst(etype(Encrypt_Method,0,2));Type(Empty_Mode) == Cst(etype(Encrypt_Mode,0,8));Type(ECB) == Cst(etype(Encrypt_Mode,0,8));Type(OFB) == Cst(etype(Encrypt_Mode,0,8));Type(CFB) == Cst(etype(Encrypt_Mode,0,8));Type(CTR) == Cst(etype(Encrypt_Mode,0,8));Type(CBC) == Cst(etype(Encrypt_Mode,0,8));Type(GCM) == Cst(etype(Encrypt_Mode,0,8));Type(CCM) == Cst(etype(Encrypt_Mode,0,8));Type(Poly1303) == Cst(etype(Encrypt_Mode,0,8));Type(Crypto_Test_Pass) == Cst(etype(Crypto_Test_Result,0,3));Type(Crypto_Test_Fail) == Cst(etype(Crypto_Test_Result,0,3));Type(Signature_Verify_Pass) == Cst(etype(Crypto_Test_Result,0,3));Type(Signature_Verify_Fail) == Cst(etype(Crypto_Test_Result,0,3));Type(Empty_Sign_Method) == Cst(etype(Sign_Method,0,3));Type(RSA) == Cst(etype(Sign_Method,0,3));Type(Curve25519_Ed25519) == Cst(etype(Sign_Method,0,3));Type(NIST_Curve_P256_P384_P521) == Cst(etype(Sign_Method,0,3));Type(Empty_Hash_Method) == Cst(etype(Hash_Method,0,3));Type(SHA_1) == Cst(etype(Hash_Method,0,3));Type(SHA_2) == Cst(etype(Hash_Method,0,3));Type(SHA_3) == Cst(etype(Hash_Method,0,3));Type(None) == Cst(etype(Operation,0,7));Type(Download) == Cst(etype(Operation,0,7));Type(Upload) == Cst(etype(Operation,0,7));Type(Fix) == Cst(etype(Operation,0,7));Type(Transfer) == Cst(etype(Operation,0,7));Type(Approve) == Cst(etype(Operation,0,7));Type(Decrypt) == Cst(etype(Operation,0,7));Type(Encrypt) == Cst(etype(Operation,0,7));Type(Empty_Message) == Cst(etype(Message_Status,0,21));Type(Encrypted_Message) == Cst(etype(Message_Status,0,21));Type(Signed_Message) == Cst(etype(Message_Status,0,21));Type(Decrypted_Message) == Cst(etype(Message_Status,0,21));Type(Binary) == Cst(etype(Message_Status,0,21));Type(Encrypted_Binary) == Cst(etype(Message_Status,0,21));Type(Decrypted_Binary) == Cst(etype(Message_Status,0,21));Type(Signed_Binary) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Binary) == Cst(etype(Message_Status,0,21));Type(Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Encrypted_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Signed_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Decrypted_Vehicle_Data) == Cst(etype(Message_Status,0,21));Type(Encrypted_Update_Response) == Cst(etype(Message_Status,0,21));Type(Signed_Update_Response) == Cst(etype(Message_Status,0,21));Type(Encrypted_Written_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Signed_Written_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Decrypted_Signed_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Encrypted_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Signed_Sourcecode) == Cst(etype(Message_Status,0,21));Type(Decrypted_Sourcecode) == Cst(etype(Message_Status,0,21));Type(All) == Cst(etype(Data_Processing,0,2));Type(Pseudonymization) == Cst(etype(Data_Processing,0,2));Type(Masking) == Cst(etype(Data_Processing,0,2)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(Crypto)) == (Type(User_Data_Processing) == Mvv(etype(Data_Processing,?,?));Type(Data_Status) == Mvv(etype(Message_Status,?,?));Type(Send_Target) == Mvv(etype(Subject_Agent,?,?));Type(Test_Result) == Mvv(etype(Crypto_Test_Result,?,?));Type(Hash_Key_length) == Mvv(btype(INTEGER,?,?));Type(Signature_Key_length) == Mvv(btype(INTEGER,?,?));Type(Encryption_Key_length) == Mvv(btype(INTEGER,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Send_Sign_Message) == Mvv(etype(Message_Status,?,?));Type(Send_Encrypt_Message) == Mvv(etype(Message_Status,?,?));Type(Receive_Sign_Message) == Mvv(etype(Message_Status,?,?));Type(Receive_Encrypt_Message) == Mvv(etype(Message_Status,?,?));Type(Hash_Algorithm) == Mvv(etype(Hash_Method,?,?));Type(Signature_Algorithm) == Mvv(etype(Sign_Method,?,?));Type(Encryption_Mode) == Mvv(etype(Encrypt_Mode,?,?));Type(Encryption_Algorithm) == Mvv(etype(Encrypt_Method,?,?));Type(Subject) == Mvv(etype(Subject_Agent,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Crypto)) == (Type(send_message) == Cst(No_type,No_type);Type(signature) == Cst(No_type,No_type);Type(patchfile_encryption) == Cst(No_type,No_type);Type(patchfile_decryption) == Cst(No_type,No_type);Type(signature_verify) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(receive_message) == Cst(No_type,No_type));
  Observers(Machine(Crypto)) == (Type(send_message) == Cst(No_type,No_type);Type(signature) == Cst(No_type,No_type);Type(patchfile_encryption) == Cst(No_type,No_type);Type(patchfile_decryption) == Cst(No_type,No_type);Type(receive_message) == Cst(No_type,No_type))
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
)
