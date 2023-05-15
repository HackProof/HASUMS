Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(AccessControl))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(AccessControl))==(Machine(AccessControl));
  Level(Machine(AccessControl))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(AccessControl)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(AccessControl))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(AccessControl))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(AccessControl))==(?);
  List_Includes(Machine(AccessControl))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(AccessControl))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(AccessControl))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(AccessControl))==(?);
  Context_List_Variables(Machine(AccessControl))==(?);
  Abstract_List_Variables(Machine(AccessControl))==(?);
  Local_List_Variables(Machine(AccessControl))==(?);
  List_Variables(Machine(AccessControl))==(?);
  External_List_Variables(Machine(AccessControl))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(AccessControl))==(?);
  Abstract_List_VisibleVariables(Machine(AccessControl))==(?);
  External_List_VisibleVariables(Machine(AccessControl))==(?);
  Expanded_List_VisibleVariables(Machine(AccessControl))==(?);
  List_VisibleVariables(Machine(AccessControl))==(Agent,Permission,Login_Try,Input_Agent,Input_Password,Input_ID);
  Internal_List_VisibleVariables(Machine(AccessControl))==(Agent,Permission,Login_Try,Input_Agent,Input_Password,Input_ID)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(AccessControl))==(btrue);
  Gluing_List_Invariant(Machine(AccessControl))==(btrue);
  Expanded_List_Invariant(Machine(AccessControl))==(btrue);
  Abstract_List_Invariant(Machine(AccessControl))==(btrue);
  Context_List_Invariant(Machine(AccessControl))==(btrue);
  List_Invariant(Machine(AccessControl))==(Input_ID: Access_ID & Input_Password: Access_Password & Input_Agent: Access_Agent & Login_Try: INT & Permission: Operation & Agent: Access_grant)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(AccessControl))==(btrue);
  Abstract_List_Assertions(Machine(AccessControl))==(btrue);
  Context_List_Assertions(Machine(AccessControl))==(btrue);
  List_Assertions(Machine(AccessControl))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(AccessControl))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(AccessControl))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(AccessControl))==(@(Input_ID$0).(Input_ID$0: {} ==> Input_ID:=Input_ID$0) || @(Input_Password$0).(Input_Password$0: {} ==> Input_Password:=Input_Password$0) || @(Input_Agent$0).(Input_Agent$0: {} ==> Input_Agent:=Input_Agent$0) || @(Login_Try$0).(Login_Try$0: INT ==> Login_Try:=Login_Try$0) || @(Permission$0).(Permission$0: {} ==> Permission:=Permission$0) || @(Agent$0).(Agent$0: {} ==> Agent:=Agent$0));
  Context_List_Initialisation(Machine(AccessControl))==(skip);
  List_Initialisation(Machine(AccessControl))==(Input_ID:: {} || Input_Password:: {} || Input_Agent:: {} || Login_Try:: INT || Permission:: {} || Agent:: {})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(AccessControl))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(AccessControl))==(btrue);
  List_Constraints(Machine(AccessControl))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(AccessControl))==(access_grant);
  List_Operations(Machine(AccessControl))==(access_grant)
END
&
THEORY ListInputX IS
  List_Input(Machine(AccessControl),access_grant)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(AccessControl),access_grant)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(AccessControl),access_grant)==(access_grant)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(AccessControl),access_grant)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(AccessControl),access_grant)==(btrue | skip);
  List_Substitution(Machine(AccessControl),access_grant)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(AccessControl))==(?);
  Inherited_List_Constants(Machine(AccessControl))==(?);
  List_Constants(Machine(AccessControl))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(AccessControl),Access_ID)==({Empty_ID,OEM_TeamLeader_ID,OEM_TeamMember_ID,Vehicle_ID,Update_Server_ID,Engineer_ID});
  Context_List_Enumerated(Machine(AccessControl))==(?);
  Context_List_Defered(Machine(AccessControl))==(?);
  Context_List_Sets(Machine(AccessControl))==(?);
  List_Valuable_Sets(Machine(AccessControl))==(?);
  Inherited_List_Enumerated(Machine(AccessControl))==(?);
  Inherited_List_Defered(Machine(AccessControl))==(?);
  Inherited_List_Sets(Machine(AccessControl))==(?);
  List_Enumerated(Machine(AccessControl))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant);
  List_Defered(Machine(AccessControl))==(?);
  List_Sets(Machine(AccessControl))==(Access_ID,Access_Password,Access_Agent,Operation,Access_grant);
  Set_Definition(Machine(AccessControl),Access_Password)==({Empty_Password,Engineer_Password,OEM_TeamLeader_Password,OEM_TeamMember_Password});
  Set_Definition(Machine(AccessControl),Access_Agent)==({Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC});
  Set_Definition(Machine(AccessControl),Operation)==({None,All,Upload,Fix,Transfer,Download,Approve,Upload_Fix_Transfer,Upload_Fix_Transfer_Download_Approve});
  Set_Definition(Machine(AccessControl),Access_grant)==({Access_Success,Access_Fail})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(AccessControl))==(?);
  Expanded_List_HiddenConstants(Machine(AccessControl))==(?);
  List_HiddenConstants(Machine(AccessControl))==(?);
  External_List_HiddenConstants(Machine(AccessControl))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(AccessControl))==(btrue);
  Context_List_Properties(Machine(AccessControl))==(btrue);
  Inherited_List_Properties(Machine(AccessControl))==(btrue);
  List_Properties(Machine(AccessControl))==(Access_ID: FIN(INTEGER) & not(Access_ID = {}) & Access_Password: FIN(INTEGER) & not(Access_Password = {}) & Access_Agent: FIN(INTEGER) & not(Access_Agent = {}) & Operation: FIN(INTEGER) & not(Operation = {}) & Access_grant: FIN(INTEGER) & not(Access_grant = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(AccessControl),access_grant)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(AccessControl)) == (Access_ID,Access_Password,Access_Agent,Operation,Access_grant,Empty_ID,OEM_TeamLeader_ID,OEM_TeamMember_ID,Vehicle_ID,Update_Server_ID,Engineer_ID,Empty_Password,Engineer_Password,OEM_TeamLeader_Password,OEM_TeamMember_Password,Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC,None,All,Upload,Fix,Transfer,Download,Approve,Upload_Fix_Transfer,Upload_Fix_Transfer_Download_Approve,Access_Success,Access_Fail | ? | ? | ? | access_grant | ? | ? | ? | AccessControl);
  List_Of_HiddenCst_Ids(Machine(AccessControl)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(AccessControl)) == (?);
  List_Of_VisibleVar_Ids(Machine(AccessControl)) == (Agent,Permission,Login_Try,Input_Agent,Input_Password,Input_ID | ?);
  List_Of_Ids_SeenBNU(Machine(AccessControl)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(AccessControl)) == (Type(Access_ID) == Cst(SetOf(etype(Access_ID,0,5)));Type(Access_Password) == Cst(SetOf(etype(Access_Password,0,3)));Type(Access_Agent) == Cst(SetOf(etype(Access_Agent,0,10)));Type(Operation) == Cst(SetOf(etype(Operation,0,8)));Type(Access_grant) == Cst(SetOf(etype(Access_grant,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(AccessControl)) == (Type(Empty_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamLeader_ID) == Cst(etype(Access_ID,0,5));Type(OEM_TeamMember_ID) == Cst(etype(Access_ID,0,5));Type(Vehicle_ID) == Cst(etype(Access_ID,0,5));Type(Update_Server_ID) == Cst(etype(Access_ID,0,5));Type(Engineer_ID) == Cst(etype(Access_ID,0,5));Type(Empty_Password) == Cst(etype(Access_Password,0,3));Type(Engineer_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamLeader_Password) == Cst(etype(Access_Password,0,3));Type(OEM_TeamMember_Password) == Cst(etype(Access_Password,0,3));Type(Empty_Agent) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(None) == Cst(etype(Operation,0,8));Type(All) == Cst(etype(Operation,0,8));Type(Upload) == Cst(etype(Operation,0,8));Type(Fix) == Cst(etype(Operation,0,8));Type(Transfer) == Cst(etype(Operation,0,8));Type(Download) == Cst(etype(Operation,0,8));Type(Approve) == Cst(etype(Operation,0,8));Type(Upload_Fix_Transfer) == Cst(etype(Operation,0,8));Type(Upload_Fix_Transfer_Download_Approve) == Cst(etype(Operation,0,8));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(Access_Fail) == Cst(etype(Access_grant,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(AccessControl)) == (Type(Agent) == Mvv(etype(Access_grant,?,?));Type(Permission) == Mvv(etype(Operation,?,?));Type(Login_Try) == Mvv(btype(INTEGER,?,?));Type(Input_Agent) == Mvv(etype(Access_Agent,?,?));Type(Input_Password) == Mvv(etype(Access_Password,?,?));Type(Input_ID) == Mvv(etype(Access_ID,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(AccessControl)) == (Type(access_grant) == Cst(No_type,No_type));
  Observers(Machine(AccessControl)) == (Type(access_grant) == Cst(No_type,No_type))
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
