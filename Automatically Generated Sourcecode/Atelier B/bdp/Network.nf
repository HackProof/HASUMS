Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Network))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Network))==(Machine(Network));
  Level(Machine(Network))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Network)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Network))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Network))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Network))==(?);
  List_Includes(Machine(Network))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Network))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Network))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Network))==(?);
  Context_List_Variables(Machine(Network))==(?);
  Abstract_List_Variables(Machine(Network))==(?);
  Local_List_Variables(Machine(Network))==(?);
  List_Variables(Machine(Network))==(?);
  External_List_Variables(Machine(Network))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Network))==(?);
  Abstract_List_VisibleVariables(Machine(Network))==(?);
  External_List_VisibleVariables(Machine(Network))==(?);
  Expanded_List_VisibleVariables(Machine(Network))==(?);
  List_VisibleVariables(Machine(Network))==(Communication_Timeout,Agent,Input_Port,Available_Port,Input_IP_List,Input_IP,Input_Agent);
  Internal_List_VisibleVariables(Machine(Network))==(Communication_Timeout,Agent,Input_Port,Available_Port,Input_IP_List,Input_IP,Input_Agent)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Network))==(btrue);
  Gluing_List_Invariant(Machine(Network))==(btrue);
  Expanded_List_Invariant(Machine(Network))==(btrue);
  Abstract_List_Invariant(Machine(Network))==(btrue);
  Context_List_Invariant(Machine(Network))==(btrue);
  List_Invariant(Machine(Network))==(Input_Agent: Access_Agent & Input_IP: Access_IP & Input_IP_List: Access_IP_List & Input_Port: INT & Available_Port: INT & Agent: Access_grant & Communication_Timeout: INT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Network))==(btrue);
  Abstract_List_Assertions(Machine(Network))==(btrue);
  Context_List_Assertions(Machine(Network))==(btrue);
  List_Assertions(Machine(Network))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Network))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Network))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Network))==(@(Input_Agent$0).(Input_Agent$0: {} ==> Input_Agent:=Input_Agent$0) || @(Input_IP$0).(Input_IP$0: {} ==> Input_IP:=Input_IP$0) || @(Input_IP_List$0).(Input_IP_List$0: {} ==> Input_IP_List:=Input_IP_List$0) || @(Input_Port$0).(Input_Port$0: INT ==> Input_Port:=Input_Port$0) || @(Available_Port$0).(Available_Port$0: INT ==> Available_Port:=Available_Port$0) || @(Agent$0).(Agent$0: {} ==> Agent:=Agent$0) || @(Communication_Timeout$0).(Communication_Timeout$0: INT ==> Communication_Timeout:=Communication_Timeout$0));
  Context_List_Initialisation(Machine(Network))==(skip);
  List_Initialisation(Machine(Network))==(Input_Agent:: {} || Input_IP:: {} || Input_IP_List:: {} || Input_Port:: INT || Available_Port:: INT || Agent:: {} || Communication_Timeout:: INT)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Network))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Network))==(btrue);
  List_Constraints(Machine(Network))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Network))==(access_control);
  List_Operations(Machine(Network))==(access_control)
END
&
THEORY ListInputX IS
  List_Input(Machine(Network),access_control)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Network),access_control)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Network),access_control)==(access_control)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Network),access_control)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Network),access_control)==(btrue | skip);
  List_Substitution(Machine(Network),access_control)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Network))==(?);
  Inherited_List_Constants(Machine(Network))==(?);
  List_Constants(Machine(Network))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Network),Access_Agent)==({Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC});
  Context_List_Enumerated(Machine(Network))==(?);
  Context_List_Defered(Machine(Network))==(?);
  Context_List_Sets(Machine(Network))==(?);
  List_Valuable_Sets(Machine(Network))==(?);
  Inherited_List_Enumerated(Machine(Network))==(?);
  Inherited_List_Defered(Machine(Network))==(?);
  Inherited_List_Sets(Machine(Network))==(?);
  List_Enumerated(Machine(Network))==(Access_Agent,Access_IP,Access_IP_List,Access_grant);
  List_Defered(Machine(Network))==(?);
  List_Sets(Machine(Network))==(Access_Agent,Access_IP,Access_IP_List,Access_grant);
  Set_Definition(Machine(Network),Access_IP)==({Empty_IP,Development_Server_IP,Diagnostic_Server_IP,Update_Server_IP,CRM_Server_IP,Vehicle_IP,Engineer_PC_IP,Developer_PC_IP,DiagnosticTester_PC_IP});
  Set_Definition(Machine(Network),Access_IP_List)==({IP_Unknown,IP_Whitelist,IP_Blacklist});
  Set_Definition(Machine(Network),Access_grant)==({Access_Success,Access_Fail})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Network))==(?);
  Expanded_List_HiddenConstants(Machine(Network))==(?);
  List_HiddenConstants(Machine(Network))==(?);
  External_List_HiddenConstants(Machine(Network))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Network))==(btrue);
  Context_List_Properties(Machine(Network))==(btrue);
  Inherited_List_Properties(Machine(Network))==(btrue);
  List_Properties(Machine(Network))==(Access_Agent: FIN(INTEGER) & not(Access_Agent = {}) & Access_IP: FIN(INTEGER) & not(Access_IP = {}) & Access_IP_List: FIN(INTEGER) & not(Access_IP_List = {}) & Access_grant: FIN(INTEGER) & not(Access_grant = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Network),access_control)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Network)) == (Access_Agent,Access_IP,Access_IP_List,Access_grant,Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC,Empty_IP,Development_Server_IP,Diagnostic_Server_IP,Update_Server_IP,CRM_Server_IP,Vehicle_IP,Engineer_PC_IP,Developer_PC_IP,DiagnosticTester_PC_IP,IP_Unknown,IP_Whitelist,IP_Blacklist,Access_Success,Access_Fail | ? | ? | ? | access_control | ? | ? | ? | Network);
  List_Of_HiddenCst_Ids(Machine(Network)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Network)) == (?);
  List_Of_VisibleVar_Ids(Machine(Network)) == (Communication_Timeout,Agent,Input_Port,Available_Port,Input_IP_List,Input_IP,Input_Agent | ?);
  List_Of_Ids_SeenBNU(Machine(Network)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Network)) == (Type(Access_Agent) == Cst(SetOf(etype(Access_Agent,0,10)));Type(Access_IP) == Cst(SetOf(etype(Access_IP,0,8)));Type(Access_IP_List) == Cst(SetOf(etype(Access_IP_List,0,2)));Type(Access_grant) == Cst(SetOf(etype(Access_grant,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Network)) == (Type(Empty_Agent) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(Empty_IP) == Cst(etype(Access_IP,0,8));Type(Development_Server_IP) == Cst(etype(Access_IP,0,8));Type(Diagnostic_Server_IP) == Cst(etype(Access_IP,0,8));Type(Update_Server_IP) == Cst(etype(Access_IP,0,8));Type(CRM_Server_IP) == Cst(etype(Access_IP,0,8));Type(Vehicle_IP) == Cst(etype(Access_IP,0,8));Type(Engineer_PC_IP) == Cst(etype(Access_IP,0,8));Type(Developer_PC_IP) == Cst(etype(Access_IP,0,8));Type(DiagnosticTester_PC_IP) == Cst(etype(Access_IP,0,8));Type(IP_Unknown) == Cst(etype(Access_IP_List,0,2));Type(IP_Whitelist) == Cst(etype(Access_IP_List,0,2));Type(IP_Blacklist) == Cst(etype(Access_IP_List,0,2));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(Access_Fail) == Cst(etype(Access_grant,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(Network)) == (Type(Communication_Timeout) == Mvv(btype(INTEGER,?,?));Type(Agent) == Mvv(etype(Access_grant,?,?));Type(Input_Port) == Mvv(btype(INTEGER,?,?));Type(Available_Port) == Mvv(btype(INTEGER,?,?));Type(Input_IP_List) == Mvv(etype(Access_IP_List,?,?));Type(Input_IP) == Mvv(etype(Access_IP,?,?));Type(Input_Agent) == Mvv(etype(Access_Agent,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Network)) == (Type(access_control) == Cst(No_type,No_type));
  Observers(Machine(Network)) == (Type(access_control) == Cst(No_type,No_type))
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
