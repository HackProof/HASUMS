Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Automotive_Login_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Automotive_Login_i))==(Machine(AccessControl));
  Level(Implementation(Automotive_Login_i))==(1);
  Upper_Level(Implementation(Automotive_Login_i))==(Machine(AccessControl))
END
&
THEORY LoadedStructureX IS
  Implementation(Automotive_Login_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Automotive_Login_i))==(BASIC_IO)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Automotive_Login_i))==(?);
  Inherited_List_Includes(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Automotive_Login_i))==(?);
  Context_List_Variables(Implementation(Automotive_Login_i))==(?);
  Abstract_List_Variables(Implementation(Automotive_Login_i))==(?);
  Local_List_Variables(Implementation(Automotive_Login_i))==(?);
  List_Variables(Implementation(Automotive_Login_i))==(?);
  External_List_Variables(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Automotive_Login_i))==(Special_Char,Account_Connection_Result,Same_Account_Connection,Agent,Permission,Login_Try,Input_Agent,Input_Password,Input_ID);
  Abstract_List_VisibleVariables(Implementation(Automotive_Login_i))==(Special_Char,Account_Connection_Result,Same_Account_Connection,Agent,Permission,Login_Try,Input_Agent,Input_Password,Input_ID);
  External_List_VisibleVariables(Implementation(Automotive_Login_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Automotive_Login_i))==(?);
  List_VisibleVariables(Implementation(Automotive_Login_i))==(?);
  Internal_List_VisibleVariables(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Automotive_Login_i))==(btrue);
  Expanded_List_Invariant(Implementation(Automotive_Login_i))==(btrue);
  Abstract_List_Invariant(Implementation(Automotive_Login_i))==(Input_ID: Access_ID & Input_Password: Access_Password & Input_Agent: Access_Agent & Login_Try: INT & Permission: Operation & Agent: Access_grant & Same_Account_Connection: INT & Account_Connection_Result: Access_Result & Special_Char: BOOL);
  Context_List_Invariant(Implementation(Automotive_Login_i))==(btrue);
  List_Invariant(Implementation(Automotive_Login_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Automotive_Login_i))==(btrue);
  Abstract_List_Assertions(Implementation(Automotive_Login_i))==(btrue);
  Context_List_Assertions(Implementation(Automotive_Login_i))==(btrue);
  List_Assertions(Implementation(Automotive_Login_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Automotive_Login_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Automotive_Login_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Automotive_Login_i))==(Input_ID:=Empty_ID;Input_Password:=Empty_Password;Input_Agent:=Empty_Agent;(0: INT | Login_Try:=0);Permission:=None;Agent:=Access_Fail;(1: INT | Same_Account_Connection:=1);Account_Connection_Result:=Failure;Special_Char:=FALSE);
  Context_List_Initialisation(Implementation(Automotive_Login_i))==(skip);
  List_Initialisation(Implementation(Automotive_Login_i))==(Input_ID:=Empty_ID;Input_Password:=Empty_Password;Input_Agent:=Empty_Agent;Login_Try:=0;Permission:=None;Agent:=Access_Fail;Same_Account_Connection:=1;Account_Connection_Result:=Failure;Special_Char:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Automotive_Login_i),Machine(BASIC_IO))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Automotive_Login_i))==(btrue);
  List_Context_Constraints(Implementation(Automotive_Login_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Automotive_Login_i))==(access_grant,connection_refuse);
  List_Operations(Implementation(Automotive_Login_i))==(access_grant,connection_refuse)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Automotive_Login_i),access_grant)==(Input_String_Length,Buffer_Length);
  List_Input(Implementation(Automotive_Login_i),connection_refuse)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Automotive_Login_i),access_grant)==(?);
  List_Output(Implementation(Automotive_Login_i),connection_refuse)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Automotive_Login_i),access_grant)==(access_grant(Input_String_Length,Buffer_Length));
  List_Header(Implementation(Automotive_Login_i),connection_refuse)==(connection_refuse)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Automotive_Login_i),access_grant)==(btrue);
  List_Precondition(Implementation(Automotive_Login_i),access_grant)==(Input_String_Length: NAT & Buffer_Length: NAT & Input_String_Length<Buffer_Length);
  Own_Precondition(Implementation(Automotive_Login_i),connection_refuse)==(btrue);
  List_Precondition(Implementation(Automotive_Login_i),connection_refuse)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Automotive_Login_i),connection_refuse)==(btrue | Same_Account_Connection = 1 ==> Account_Connection_Result:=Success [] not(Same_Account_Connection = 1) ==> Account_Connection_Result:=Failure);
  Expanded_List_Substitution(Implementation(Automotive_Login_i),access_grant)==(Input_String_Length: NAT & Buffer_Length: NAT & Input_String_Length<Buffer_Length | Input_ID = Update_Server_ID & Input_Agent = Update_Server & Login_Try<=5 ==> (Agent:=Access_Success;Permission:=Download;(0: INT | Login_Try:=0);("Login Success!\n": STRING | skip);("Login Entity: Update_Server\n": STRING | skip);("============================\n": STRING | skip)) [] not(Input_ID = Update_Server_ID & Input_Agent = Update_Server & Login_Try<=5) ==> (Agent:=Access_Fail;Permission:=None;(Login_Try+1: INT & Login_Try: INT & 1: INT | Login_Try:=Login_Try+1);("Login Fail!\n": STRING | skip);("============================\n": STRING | skip)));
  List_Substitution(Implementation(Automotive_Login_i),access_grant)==(IF Input_ID = Update_Server_ID & Input_Agent = Update_Server & Login_Try<=5 THEN Agent:=Access_Success;Permission:=Download;Login_Try:=0;STRING_WRITE("Login Success!\n");STRING_WRITE("Login Entity: Update_Server\n");STRING_WRITE("============================\n") ELSE Agent:=Access_Fail;Permission:=None;Login_Try:=Login_Try+1;STRING_WRITE("Login Fail!\n");STRING_WRITE("============================\n") END);
  List_Substitution(Implementation(Automotive_Login_i),connection_refuse)==(IF Same_Account_Connection = 1 THEN Account_Connection_Result:=Success ELSE Account_Connection_Result:=Failure END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Automotive_Login_i))==(?);
  Inherited_List_Constants(Implementation(Automotive_Login_i))==(?);
  List_Constants(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Automotive_Login_i),Access_Result)==({Success,Failure});
  Context_List_Enumerated(Implementation(Automotive_Login_i))==(?);
  Context_List_Defered(Implementation(Automotive_Login_i))==(?);
  Context_List_Sets(Implementation(Automotive_Login_i))==(?);
  List_Own_Enumerated(Implementation(Automotive_Login_i))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant,Access_Result);
  List_Valuable_Sets(Implementation(Automotive_Login_i))==(?);
  Inherited_List_Enumerated(Implementation(Automotive_Login_i))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant,Access_Result);
  Inherited_List_Defered(Implementation(Automotive_Login_i))==(?);
  Inherited_List_Sets(Implementation(Automotive_Login_i))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant,Access_Result);
  List_Enumerated(Implementation(Automotive_Login_i))==(?);
  List_Defered(Implementation(Automotive_Login_i))==(?);
  List_Sets(Implementation(Automotive_Login_i))==(?);
  Set_Definition(Implementation(Automotive_Login_i),Access_grant)==({Access_Success,Access_Fail});
  Set_Definition(Implementation(Automotive_Login_i),Operation)==({None,All,Upload,Fix,Transfer,Download,Approve,Upload_Fix_Transfer,Upload_Fix_Transfer_Download_Approve});
  Set_Definition(Implementation(Automotive_Login_i),Access_Agent)==({Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC});
  Set_Definition(Implementation(Automotive_Login_i),Access_Password)==({Empty_Password,Engineer_Password,OEM_TeamLeader_Password,OEM_TeamMember_Password});
  Set_Definition(Implementation(Automotive_Login_i),Access_ID)==({Empty_ID,OEM_TeamLeader_ID,OEM_TeamMember_ID,Vehicle_ID,Update_Server_ID,Engineer_ID})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Automotive_Login_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Automotive_Login_i))==(?);
  List_HiddenConstants(Implementation(Automotive_Login_i))==(?);
  External_List_HiddenConstants(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Automotive_Login_i))==(Access_ID: FIN(INTEGER) & not(Access_ID = {}) & Access_Password: FIN(INTEGER) & not(Access_Password = {}) & Access_Agent: FIN(INTEGER) & not(Access_Agent = {}) & Operation: FIN(INTEGER) & not(Operation = {}) & Access_grant: FIN(INTEGER) & not(Access_grant = {}) & Access_Result: FIN(INTEGER) & not(Access_Result = {}));
  Context_List_Properties(Implementation(Automotive_Login_i))==(btrue);
  Inherited_List_Properties(Implementation(Automotive_Login_i))==(btrue);
  List_Properties(Implementation(Automotive_Login_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Automotive_Login_i))==(aa: aa);
  List_Values(Implementation(Automotive_Login_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Automotive_Login_i),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,STRING_WRITE);
  Seen_Context_List_Enumerated(Implementation(Automotive_Login_i))==(?);
  Seen_Context_List_Invariant(Implementation(Automotive_Login_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Automotive_Login_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Automotive_Login_i))==(btrue);
  Seen_List_Constraints(Implementation(Automotive_Login_i))==(btrue);
  Seen_List_Precondition(Implementation(Automotive_Login_i),STRING_WRITE)==(ss: STRING);
  Seen_Expanded_List_Substitution(Implementation(Automotive_Login_i),STRING_WRITE)==(skip);
  Seen_List_Precondition(Implementation(Automotive_Login_i),INT_WRITE)==(vv: NAT);
  Seen_Expanded_List_Substitution(Implementation(Automotive_Login_i),INT_WRITE)==(skip);
  Seen_List_Precondition(Implementation(Automotive_Login_i),INTERVAL_READ)==(nn: NAT & mm: NAT & mm<=nn);
  Seen_Expanded_List_Substitution(Implementation(Automotive_Login_i),INTERVAL_READ)==(@(bb$0).(bb$0: mm..nn ==> bb:=bb$0));
  Seen_List_Operations(Implementation(Automotive_Login_i),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,STRING_WRITE);
  Seen_Expanded_List_Invariant(Implementation(Automotive_Login_i),Machine(BASIC_IO))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Automotive_Login_i),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,STRING_WRITE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Automotive_Login_i))==(Type(connection_refuse) == Cst(No_type,No_type);Type(access_grant) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  VisibleVariables(Implementation(Automotive_Login_i))==(Type(Special_Char) == Mvv(btype(BOOL,?,?));Type(Account_Connection_Result) == Mvv(etype(Access_Result,?,?));Type(Same_Account_Connection) == Mvv(btype(INTEGER,?,?));Type(Agent) == Mvv(etype(Access_grant,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Login_Try) == Mvv(btype(INTEGER,?,?));Type(Input_Agent) == Mvv(etype(Access_Agent,?,?));Type(Input_Password) == Mvv(etype(Access_Password,?,?));Type(Input_ID) == Mvv(etype(Access_ID,?,?)));
  Constants(Implementation(Automotive_Login_i))==(Type(Empty_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamLeader_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamMember_ID) == Cst(etype(Access_ID,0,5));Type(Vehicle_ID) == Cst(etype(Access_ID,0,5));Type(Update_Server_ID) == Cst(etype(Access_ID,0,5));Type(Engineer_ID) == Cst(etype(Access_ID,0,5));Type(Empty_Password) == Cst(etype(Access_Password,0,3));Type(Engineer_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamLeader_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamMember_Password) == Cst(etype(Access_Password,0,3));Type(Empty_Agent) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(None) == Cst(etype(Operation,0,8));Type(All) == Cst(etype(Operation,0,8));Type(Upload) == Cst(etype(Operation,0,8));Type(Fix) == Cst(etype(Operation,0,8));Type(Transfer) == Cst(etype(Operation,0,8));Type(Download) == Cst(etype(Operation,0,8));Type(Approve) == Cst(etype(Operation,0,8));Type(Upload_Fix_Transfer) == Cst(etype(Operation,0,8));Type(Upload_Fix_Transfer_Download_Approve) == Cst(etype(Operation,0,8));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(Access_Fail) == Cst(etype(Access_grant,0,1));Type(Success) == Cst(etype(Access_Result,0,1));Type(Failure) == Cst(etype(Access_Result,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Automotive_Login_i)) == (? | ? | ? | ? | access_grant,connection_refuse | ? | seen(Machine(BASIC_IO)) | ? | Automotive_Login_i);
  List_Of_HiddenCst_Ids(Implementation(Automotive_Login_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Automotive_Login_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Automotive_Login_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Automotive_Login_i)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Automotive_Login_i)) == (Type(Access_Result) == Cst(SetOf(etype(Access_Result,0,1)));Type(Access_grant) == Cst(SetOf(etype(Access_grant,0,1)));Type(Operation) == Cst(SetOf(etype(Operation,0,8)));Type(Access_Agent) == Cst(SetOf(etype(Access_Agent,0,10)));Type(Access_Password) == Cst(SetOf(etype(Access_Password,0,3)));Type(Access_ID) == Cst(SetOf(etype(Access_ID,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Automotive_Login_i)) == (Type(Failure) == Cst(etype(Access_Result,0,1));Type(Success) == Cst(etype(Access_Result,0,1));Type(Access_Fail) == Cst(etype(Access_grant,0,1));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(Upload_Fix_Transfer_Download_Approve) == Cst(etype(Operation,0,8));Type(Upload_Fix_Transfer) == Cst(etype(Operation,0,8));Type(Approve) == Cst(etype(Operation,0,8));Type(Download) == Cst(etype(Operation,0,8));Type(Transfer) == Cst(etype(Operation,0,8));Type(Fix) == Cst(etype(Operation,0,8));Type(Upload) == Cst(etype(Operation,0,8));Type(All) == Cst(etype(Operation,0,8));Type(None) == Cst(etype(Operation,0,8));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Empty_Agent) == Cst(etype(Access_Agent,0,10));Type(OEM_TeamMember_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamLeader_Password) == Cst(etype(Access_Password,0,3));Type(Engineer_Password) == Cst(etype(Access_Password,0,3));Type(Empty_Password) == Cst(etype(Access_Password,0,3));Type(Engineer_ID) == Cst(etype(Access_ID,0,5));Type(Update_Server_ID) == Cst(etype(Access_ID,0,5));Type(Vehicle_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamMember_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamLeader_ID) == Cst(etype(Access_ID,0,5));Type(Empty_ID) == Cst(etype(Access_ID,0,5)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Automotive_Login_i)) == (Type(Input_ID) == Mvv(etype(Access_ID,?,?));Type(Input_Password) == Mvv(etype(Access_Password,?,?));Type(Input_Agent) == Mvv(etype(Access_Agent,?,?));Type(Login_Try) == Mvv(btype(INTEGER,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Agent) == Mvv(etype(Access_grant,?,?));Type(Same_Account_Connection) == Mvv(btype(INTEGER,?,?));Type(Account_Connection_Result) == Mvv(etype(Access_Result,?,?));Type(Special_Char) == Mvv(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(Automotive_Login_i))==(?)
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
  TypingPredicate(Implementation(Automotive_Login_i))==(Special_Char: BOOL & Account_Connection_Result: Access_Result & Same_Account_Connection: INTEGER & Agent: Access_grant & Permission: Operation & Login_Try: INTEGER & Input_Agent: Access_Agent & Input_Password: Access_Password & Input_ID: Access_ID)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
