Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Update_Server_Grant_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Update_Server_Grant_i))==(Machine(AccessControl));
  Level(Implementation(Update_Server_Grant_i))==(1);
  Upper_Level(Implementation(Update_Server_Grant_i))==(Machine(AccessControl))
END
&
THEORY LoadedStructureX IS
  Implementation(Update_Server_Grant_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Update_Server_Grant_i))==(BASIC_IO)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Update_Server_Grant_i))==(?);
  Inherited_List_Includes(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Update_Server_Grant_i))==(?);
  Context_List_Variables(Implementation(Update_Server_Grant_i))==(?);
  Abstract_List_Variables(Implementation(Update_Server_Grant_i))==(?);
  Local_List_Variables(Implementation(Update_Server_Grant_i))==(?);
  List_Variables(Implementation(Update_Server_Grant_i))==(?);
  External_List_Variables(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Update_Server_Grant_i))==(Special_Char,Account_Connection_Result,Same_Account_Connection,Agent,Permission,Login_Try,Input_Agent,Input_Password,Input_ID);
  Abstract_List_VisibleVariables(Implementation(Update_Server_Grant_i))==(Special_Char,Account_Connection_Result,Same_Account_Connection,Agent,Permission,Login_Try,Input_Agent,Input_Password,Input_ID);
  External_List_VisibleVariables(Implementation(Update_Server_Grant_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Update_Server_Grant_i))==(?);
  List_VisibleVariables(Implementation(Update_Server_Grant_i))==(?);
  Internal_List_VisibleVariables(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Update_Server_Grant_i))==(btrue);
  Expanded_List_Invariant(Implementation(Update_Server_Grant_i))==(btrue);
  Abstract_List_Invariant(Implementation(Update_Server_Grant_i))==(Input_ID: Access_ID & Input_Password: Access_Password & Input_Agent: Access_Agent & Login_Try: INT & Permission: Operation & Agent: Access_grant & Same_Account_Connection: INT & Account_Connection_Result: Access_Result & Special_Char: BOOL);
  Context_List_Invariant(Implementation(Update_Server_Grant_i))==(btrue);
  List_Invariant(Implementation(Update_Server_Grant_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Update_Server_Grant_i))==(btrue);
  Abstract_List_Assertions(Implementation(Update_Server_Grant_i))==(btrue);
  Context_List_Assertions(Implementation(Update_Server_Grant_i))==(btrue);
  List_Assertions(Implementation(Update_Server_Grant_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Update_Server_Grant_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Update_Server_Grant_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Update_Server_Grant_i))==(Input_ID:=Empty_ID;Input_Password:=Empty_Password;Input_Agent:=Empty_Agent;(0: INT | Login_Try:=0);Permission:=None;Agent:=Access_Fail;(1: INT | Same_Account_Connection:=1);Account_Connection_Result:=Failure;Special_Char:=FALSE);
  Context_List_Initialisation(Implementation(Update_Server_Grant_i))==(skip);
  List_Initialisation(Implementation(Update_Server_Grant_i))==(Input_ID:=Empty_ID;Input_Password:=Empty_Password;Input_Agent:=Empty_Agent;Login_Try:=0;Permission:=None;Agent:=Access_Fail;Same_Account_Connection:=1;Account_Connection_Result:=Failure;Special_Char:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Update_Server_Grant_i),Machine(BASIC_IO))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Update_Server_Grant_i))==(btrue);
  List_Context_Constraints(Implementation(Update_Server_Grant_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Update_Server_Grant_i))==(access_grant,connection_refuse);
  List_Operations(Implementation(Update_Server_Grant_i))==(access_grant,connection_refuse)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Update_Server_Grant_i),access_grant)==(Input_String_Length,Buffer_Length);
  List_Input(Implementation(Update_Server_Grant_i),connection_refuse)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Update_Server_Grant_i),access_grant)==(?);
  List_Output(Implementation(Update_Server_Grant_i),connection_refuse)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Update_Server_Grant_i),access_grant)==(access_grant(Input_String_Length,Buffer_Length));
  List_Header(Implementation(Update_Server_Grant_i),connection_refuse)==(connection_refuse)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Update_Server_Grant_i),access_grant)==(btrue);
  List_Precondition(Implementation(Update_Server_Grant_i),access_grant)==(Input_String_Length: NAT & Buffer_Length: NAT & Input_String_Length<Buffer_Length);
  Own_Precondition(Implementation(Update_Server_Grant_i),connection_refuse)==(btrue);
  List_Precondition(Implementation(Update_Server_Grant_i),connection_refuse)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Update_Server_Grant_i),connection_refuse)==(btrue | Same_Account_Connection = 1 ==> Account_Connection_Result:=Success [] not(Same_Account_Connection = 1) ==> Account_Connection_Result:=Failure);
  Expanded_List_Substitution(Implementation(Update_Server_Grant_i),access_grant)==(Input_String_Length: NAT & Buffer_Length: NAT & Input_String_Length<Buffer_Length | Input_ID = OEM_TeamLeader_ID ==> (Agent:=Access_Success;Permission:=Encrypt_Configuration_Manage) [] not(Input_ID = OEM_TeamLeader_ID) ==> (Agent:=Access_Fail;Permission:=None));
  List_Substitution(Implementation(Update_Server_Grant_i),access_grant)==(IF Input_ID = OEM_TeamLeader_ID THEN Agent:=Access_Success;Permission:=Encrypt_Configuration_Manage ELSE Agent:=Access_Fail;Permission:=None END);
  List_Substitution(Implementation(Update_Server_Grant_i),connection_refuse)==(IF Same_Account_Connection = 1 THEN Account_Connection_Result:=Success ELSE Account_Connection_Result:=Failure END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Update_Server_Grant_i))==(?);
  Inherited_List_Constants(Implementation(Update_Server_Grant_i))==(?);
  List_Constants(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Update_Server_Grant_i),Access_Result)==({Success,Failure});
  Context_List_Enumerated(Implementation(Update_Server_Grant_i))==(?);
  Context_List_Defered(Implementation(Update_Server_Grant_i))==(?);
  Context_List_Sets(Implementation(Update_Server_Grant_i))==(?);
  List_Own_Enumerated(Implementation(Update_Server_Grant_i))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant,Access_Result);
  List_Valuable_Sets(Implementation(Update_Server_Grant_i))==(?);
  Inherited_List_Enumerated(Implementation(Update_Server_Grant_i))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant,Access_Result);
  Inherited_List_Defered(Implementation(Update_Server_Grant_i))==(?);
  Inherited_List_Sets(Implementation(Update_Server_Grant_i))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant,Access_Result);
  List_Enumerated(Implementation(Update_Server_Grant_i))==(?);
  List_Defered(Implementation(Update_Server_Grant_i))==(?);
  List_Sets(Implementation(Update_Server_Grant_i))==(?);
  Set_Definition(Implementation(Update_Server_Grant_i),Access_grant)==({Access_Success,Access_Fail});
  Set_Definition(Implementation(Update_Server_Grant_i),Operation)==({None,All,Upload,Fix,Transfer,Download,Approve,Backup,Recovery,Install,Test,ECU_Data_Manage,Encrypt,Configuration_Manage,Upload_Fix_Transfer,Upload_Fix_Transfer_Download_Approve,Download_ECU_Data_Manage,Encrypt_Configuration_Manage});
  Set_Definition(Implementation(Update_Server_Grant_i),Access_Agent)==({Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC});
  Set_Definition(Implementation(Update_Server_Grant_i),Access_Password)==({Empty_Password,Engineer_Password,OEM_TeamLeader_Password,OEM_TeamMember_Password});
  Set_Definition(Implementation(Update_Server_Grant_i),Access_ID)==({Empty_ID,OEM_TeamLeader_ID,OEM_TeamMember_ID,Vehicle_ID,Update_Server_ID,Engineer_ID})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Update_Server_Grant_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Update_Server_Grant_i))==(?);
  List_HiddenConstants(Implementation(Update_Server_Grant_i))==(?);
  External_List_HiddenConstants(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Update_Server_Grant_i))==(Access_ID: FIN(INTEGER) & not(Access_ID = {}) & Access_Password: FIN(INTEGER) & not(Access_Password = {}) & Access_Agent: FIN(INTEGER) & not(Access_Agent = {}) & Operation: FIN(INTEGER) & not(Operation = {}) & Access_grant: FIN(INTEGER) & not(Access_grant = {}) & Access_Result: FIN(INTEGER) & not(Access_Result = {}));
  Context_List_Properties(Implementation(Update_Server_Grant_i))==(btrue);
  Inherited_List_Properties(Implementation(Update_Server_Grant_i))==(btrue);
  List_Properties(Implementation(Update_Server_Grant_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Update_Server_Grant_i))==(aa: aa);
  List_Values(Implementation(Update_Server_Grant_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Update_Server_Grant_i),Machine(BASIC_IO))==(printf,scanf);
  Seen_Context_List_Enumerated(Implementation(Update_Server_Grant_i))==(?);
  Seen_Context_List_Invariant(Implementation(Update_Server_Grant_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Update_Server_Grant_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Update_Server_Grant_i))==(btrue);
  Seen_List_Constraints(Implementation(Update_Server_Grant_i))==(btrue);
  Seen_List_Precondition(Implementation(Update_Server_Grant_i),scanf)==(ss: STRING);
  Seen_Expanded_List_Substitution(Implementation(Update_Server_Grant_i),scanf)==(skip);
  Seen_List_Precondition(Implementation(Update_Server_Grant_i),printf)==(ss: STRING);
  Seen_Expanded_List_Substitution(Implementation(Update_Server_Grant_i),printf)==(skip);
  Seen_List_Operations(Implementation(Update_Server_Grant_i),Machine(BASIC_IO))==(printf,scanf);
  Seen_Expanded_List_Invariant(Implementation(Update_Server_Grant_i),Machine(BASIC_IO))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Update_Server_Grant_i),Machine(BASIC_IO))==(printf,scanf)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Update_Server_Grant_i))==(Type(connection_refuse) == Cst(No_type,No_type);Type(access_grant) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  VisibleVariables(Implementation(Update_Server_Grant_i))==(Type(Special_Char) == Mvv(btype(BOOL,?,?));Type(Account_Connection_Result) == Mvv(etype(Access_Result,?,?));Type(Same_Account_Connection) == Mvv(btype(INTEGER,?,?));Type(Agent) == Mvv(etype(Access_grant,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Login_Try) == Mvv(btype(INTEGER,?,?));Type(Input_Agent) == Mvv(etype(Access_Agent,?,?));Type(Input_Password) == Mvv(etype(Access_Password,?,?));Type(Input_ID) == Mvv(etype(Access_ID,?,?)));
  Constants(Implementation(Update_Server_Grant_i))==(Type(Empty_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamLeader_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamMember_ID) == Cst(etype(Access_ID,0,5));Type(Vehicle_ID) == Cst(etype(Access_ID,0,5));Type(Update_Server_ID) == Cst(etype(Access_ID,0,5));Type(Engineer_ID) == Cst(etype(Access_ID,0,5));Type(Empty_Password) == Cst(etype(Access_Password,0,3));Type(Engineer_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamLeader_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamMember_Password) == Cst(etype(Access_Password,0,3));Type(Empty_Agent) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(None) == Cst(etype(Operation,0,17));Type(All) == Cst(etype(Operation,0,17));Type(Upload) == Cst(etype(Operation,0,17));Type(Fix) == Cst(etype(Operation,0,17));Type(Transfer) == Cst(etype(Operation,0,17));Type(Download) == Cst(etype(Operation,0,17));Type(Approve) == Cst(etype(Operation,0,17));Type(Backup) == Cst(etype(Operation,0,17));Type(Recovery) == Cst(etype(Operation,0,17));Type(Install) == Cst(etype(Operation,0,17));Type(Test) == Cst(etype(Operation,0,17));Type(ECU_Data_Manage) == Cst(etype(Operation,0,17));Type(Encrypt) == Cst(etype(Operation,0,17));Type(Configuration_Manage) == Cst(etype(Operation,0,17));Type(Upload_Fix_Transfer) == Cst(etype(Operation,0,17));Type(Upload_Fix_Transfer_Download_Approve) == Cst(etype(Operation,0,17));Type(Download_ECU_Data_Manage) == Cst(etype(Operation,0,17));Type(Encrypt_Configuration_Manage) == Cst(etype(Operation,0,17));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(Access_Fail) == Cst(etype(Access_grant,0,1));Type(Success) == Cst(etype(Access_Result,0,1));Type(Failure) == Cst(etype(Access_Result,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Update_Server_Grant_i)) == (? | ? | ? | ? | access_grant,connection_refuse | ? | seen(Machine(BASIC_IO)) | ? | Update_Server_Grant_i);
  List_Of_HiddenCst_Ids(Implementation(Update_Server_Grant_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Update_Server_Grant_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Update_Server_Grant_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Update_Server_Grant_i)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | printf,scanf | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Update_Server_Grant_i)) == (Type(Access_Result) == Cst(SetOf(etype(Access_Result,0,1)));Type(Access_grant) == Cst(SetOf(etype(Access_grant,0,1)));Type(Operation) == Cst(SetOf(etype(Operation,0,17)));Type(Access_Agent) == Cst(SetOf(etype(Access_Agent,0,10)));Type(Access_Password) == Cst(SetOf(etype(Access_Password,0,3)));Type(Access_ID) == Cst(SetOf(etype(Access_ID,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Update_Server_Grant_i)) == (Type(Failure) == Cst(etype(Access_Result,0,1));Type(Success) == Cst(etype(Access_Result,0,1));Type(Access_Fail) == Cst(etype(Access_grant,0,1));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(Encrypt_Configuration_Manage) == Cst(etype(Operation,0,17));Type(Download_ECU_Data_Manage) == Cst(etype(Operation,0,17));Type(Upload_Fix_Transfer_Download_Approve) == Cst(etype(Operation,0,17));Type(Upload_Fix_Transfer) == Cst(etype(Operation,0,17));Type(Configuration_Manage) == Cst(etype(Operation,0,17));Type(Encrypt) == Cst(etype(Operation,0,17));Type(ECU_Data_Manage) == Cst(etype(Operation,0,17));Type(Test) == Cst(etype(Operation,0,17));Type(Install) == Cst(etype(Operation,0,17));Type(Recovery) == Cst(etype(Operation,0,17));Type(Backup) == Cst(etype(Operation,0,17));Type(Approve) == Cst(etype(Operation,0,17));Type(Download) == Cst(etype(Operation,0,17));Type(Transfer) == Cst(etype(Operation,0,17));Type(Fix) == Cst(etype(Operation,0,17));Type(Upload) == Cst(etype(Operation,0,17));Type(All) == Cst(etype(Operation,0,17));Type(None) == Cst(etype(Operation,0,17));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Empty_Agent) == Cst(etype(Access_Agent,0,10));Type(OEM_TeamMember_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamLeader_Password) == Cst(etype(Access_Password,0,3));Type(Engineer_Password) == Cst(etype(Access_Password,0,3));Type(Empty_Password) == Cst(etype(Access_Password,0,3));Type(Engineer_ID) == Cst(etype(Access_ID,0,5));Type(Update_Server_ID) == Cst(etype(Access_ID,0,5));Type(Vehicle_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamMember_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamLeader_ID) == Cst(etype(Access_ID,0,5));Type(Empty_ID) == Cst(etype(Access_ID,0,5)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Update_Server_Grant_i)) == (Type(Input_ID) == Mvv(etype(Access_ID,?,?));Type(Input_Password) == Mvv(etype(Access_Password,?,?));Type(Input_Agent) == Mvv(etype(Access_Agent,?,?));Type(Login_Try) == Mvv(btype(INTEGER,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Agent) == Mvv(etype(Access_grant,?,?));Type(Same_Account_Connection) == Mvv(btype(INTEGER,?,?));Type(Account_Connection_Result) == Mvv(etype(Access_Result,?,?));Type(Special_Char) == Mvv(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(Update_Server_Grant_i))==(?)
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
  TypingPredicate(Implementation(Update_Server_Grant_i))==(Special_Char: BOOL & Account_Connection_Result: Access_Result & Same_Account_Connection: INTEGER & Agent: Access_grant & Permission: Operation & Login_Try: INTEGER & Input_Agent: Access_Agent & Input_Password: Access_Password & Input_ID: Access_ID)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
