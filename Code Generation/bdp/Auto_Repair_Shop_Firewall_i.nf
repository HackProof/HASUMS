Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Auto_Repair_Shop_Firewall_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Auto_Repair_Shop_Firewall_i))==(Machine(Network));
  Level(Implementation(Auto_Repair_Shop_Firewall_i))==(1);
  Upper_Level(Implementation(Auto_Repair_Shop_Firewall_i))==(Machine(Network))
END
&
THEORY LoadedStructureX IS
  Implementation(Auto_Repair_Shop_Firewall_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Inherited_List_Includes(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Context_List_Variables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Abstract_List_Variables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Local_List_Variables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  List_Variables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  External_List_Variables(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i))==(Agent,Input_Port,Available_Port,Input_IP_List,Input_IP,Input_Agent);
  Abstract_List_VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i))==(Agent,Input_Port,Available_Port,Input_IP_List,Input_IP,Input_Agent);
  External_List_VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  List_VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Internal_List_VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  Expanded_List_Invariant(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  Abstract_List_Invariant(Implementation(Auto_Repair_Shop_Firewall_i))==(Input_Agent: Access_Agent & Input_IP: Access_IP & Input_IP_List: Access_IP_List & Input_Port: INT & Available_Port: INT & Agent: Access_grant);
  Context_List_Invariant(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  List_Invariant(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  Abstract_List_Assertions(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  Context_List_Assertions(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  List_Assertions(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Auto_Repair_Shop_Firewall_i))==(Input_Agent:=Empty_Agent;Input_IP:=Empty_IP;Input_IP_List:=IP_Unknown;(443: INT | Available_Port:=443);(0: INT | Input_Port:=0);Agent:=Access_Fail);
  Context_List_Initialisation(Implementation(Auto_Repair_Shop_Firewall_i))==(skip);
  List_Initialisation(Implementation(Auto_Repair_Shop_Firewall_i))==(Input_Agent:=Empty_Agent;Input_IP:=Empty_IP;Input_IP_List:=IP_Unknown;Available_Port:=443;Input_Port:=0;Agent:=Access_Fail)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  List_Context_Constraints(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Auto_Repair_Shop_Firewall_i))==(access_control);
  List_Operations(Implementation(Auto_Repair_Shop_Firewall_i))==(access_control)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Auto_Repair_Shop_Firewall_i),access_control)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Auto_Repair_Shop_Firewall_i),access_control)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Auto_Repair_Shop_Firewall_i),access_control)==(access_control)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Auto_Repair_Shop_Firewall_i),access_control)==(btrue);
  List_Precondition(Implementation(Auto_Repair_Shop_Firewall_i),access_control)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Auto_Repair_Shop_Firewall_i),access_control)==(btrue | Input_Agent = Engineer_PC or Input_Agent = Update_Server & Input_IP = Engineer_PC_IP or Input_IP = Update_Server_IP & Input_Port = Available_Port & Input_IP_List/=IP_Blacklist ==> Agent:=Access_Success [] not(Input_Agent = Engineer_PC or Input_Agent = Update_Server & Input_IP = Engineer_PC_IP or Input_IP = Update_Server_IP & Input_Port = Available_Port & Input_IP_List/=IP_Blacklist) ==> Agent:=Access_Fail);
  List_Substitution(Implementation(Auto_Repair_Shop_Firewall_i),access_control)==(IF Input_Agent = Engineer_PC or Input_Agent = Update_Server & Input_IP = Engineer_PC_IP or Input_IP = Update_Server_IP & Input_Port = Available_Port & Input_IP_List/=IP_Blacklist THEN Agent:=Access_Success ELSE Agent:=Access_Fail END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Inherited_List_Constants(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  List_Constants(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Auto_Repair_Shop_Firewall_i),Access_grant)==({Access_Success,Access_Fail});
  Context_List_Enumerated(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Context_List_Defered(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Context_List_Sets(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  List_Own_Enumerated(Implementation(Auto_Repair_Shop_Firewall_i))==(Access_Agent,Access_IP,Access_IP_List,Access_grant);
  List_Valuable_Sets(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Inherited_List_Enumerated(Implementation(Auto_Repair_Shop_Firewall_i))==(Access_Agent,Access_IP,Access_IP_List,Access_grant);
  Inherited_List_Defered(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Inherited_List_Sets(Implementation(Auto_Repair_Shop_Firewall_i))==(Access_Agent,Access_IP,Access_IP_List,Access_grant);
  List_Enumerated(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  List_Defered(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  List_Sets(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Set_Definition(Implementation(Auto_Repair_Shop_Firewall_i),Access_IP_List)==({IP_Unknown,IP_Whitelist,IP_Blacklist});
  Set_Definition(Implementation(Auto_Repair_Shop_Firewall_i),Access_IP)==({Empty_IP,Development_Server_IP,Diagnostic_Server_IP,Update_Server_IP,CRM_Server_IP,Vehicle_IP,Engineer_PC_IP,Developer_PC_IP,DiagnosticTester_PC_IP});
  Set_Definition(Implementation(Auto_Repair_Shop_Firewall_i),Access_Agent)==({Empty_Agent,Secondary_ECU,Auto_Repair_Shop,Vehicle,Development_Server,Diagnostic_Server,Update_Server,CRM_Server,Developer_PC,DiagnosticTester_PC,Engineer_PC})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  List_HiddenConstants(Implementation(Auto_Repair_Shop_Firewall_i))==(?);
  External_List_HiddenConstants(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Auto_Repair_Shop_Firewall_i))==(Access_Agent: FIN(INTEGER) & not(Access_Agent = {}) & Access_IP: FIN(INTEGER) & not(Access_IP = {}) & Access_IP_List: FIN(INTEGER) & not(Access_IP_List = {}) & Access_grant: FIN(INTEGER) & not(Access_grant = {}));
  Context_List_Properties(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  Inherited_List_Properties(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue);
  List_Properties(Implementation(Auto_Repair_Shop_Firewall_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Auto_Repair_Shop_Firewall_i))==(aa: aa);
  List_Values(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Auto_Repair_Shop_Firewall_i))==(Type(access_control) == Cst(No_type,No_type));
  VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i))==(Type(Agent) == Mvv(etype(Access_grant,?,?));Type(Input_Port) == Mvv(btype(INTEGER,?,?));Type(Available_Port) == Mvv(btype(INTEGER,?,?));Type(Input_IP_List) == Mvv(etype(Access_IP_List,?,?));Type(Input_IP) == Mvv(etype(Access_IP,?,?));Type(Input_Agent) == Mvv(etype(Access_Agent,?,?)));
  Constants(Implementation(Auto_Repair_Shop_Firewall_i))==(Type(Empty_Agent) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(Empty_IP) == Cst(etype(Access_IP,0,8));Type(Development_Server_IP) == Cst(etype(Access_IP,0,8));Type(Diagnostic_Server_IP) == Cst(etype(Access_IP,0,8));Type(Update_Server_IP) == Cst(etype(Access_IP,0,8));Type(CRM_Server_IP) == Cst(etype(Access_IP,0,8));Type(Vehicle_IP) == Cst(etype(Access_IP,0,8));Type(Engineer_PC_IP) == Cst(etype(Access_IP,0,8));Type(Developer_PC_IP) == Cst(etype(Access_IP,0,8));Type(DiagnosticTester_PC_IP) == Cst(etype(Access_IP,0,8));Type(IP_Unknown) == Cst(etype(Access_IP_List,0,2));Type(IP_Whitelist) == Cst(etype(Access_IP_List,0,2));Type(IP_Blacklist) == Cst(etype(Access_IP_List,0,2));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(Access_Fail) == Cst(etype(Access_grant,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Auto_Repair_Shop_Firewall_i)) == (? | ? | ? | ? | access_control | ? | ? | ? | Auto_Repair_Shop_Firewall_i);
  List_Of_HiddenCst_Ids(Implementation(Auto_Repair_Shop_Firewall_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Auto_Repair_Shop_Firewall_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Auto_Repair_Shop_Firewall_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Auto_Repair_Shop_Firewall_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Auto_Repair_Shop_Firewall_i)) == (Type(Access_grant) == Cst(SetOf(etype(Access_grant,0,1)));Type(Access_IP_List) == Cst(SetOf(etype(Access_IP_List,0,2)));Type(Access_IP) == Cst(SetOf(etype(Access_IP,0,8)));Type(Access_Agent) == Cst(SetOf(etype(Access_Agent,0,10))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Auto_Repair_Shop_Firewall_i)) == (Type(Access_Fail) == Cst(etype(Access_grant,0,1));Type(Access_Success) == Cst(etype(Access_grant,0,1));Type(IP_Blacklist) == Cst(etype(Access_IP_List,0,2));Type(IP_Whitelist) == Cst(etype(Access_IP_List,0,2));Type(IP_Unknown) == Cst(etype(Access_IP_List,0,2));Type(DiagnosticTester_PC_IP) == Cst(etype(Access_IP,0,8));Type(Developer_PC_IP) == Cst(etype(Access_IP,0,8));Type(Engineer_PC_IP) == Cst(etype(Access_IP,0,8));Type(Vehicle_IP) == Cst(etype(Access_IP,0,8));Type(CRM_Server_IP) == Cst(etype(Access_IP,0,8));Type(Update_Server_IP) == Cst(etype(Access_IP,0,8));Type(Diagnostic_Server_IP) == Cst(etype(Access_IP,0,8));Type(Development_Server_IP) == Cst(etype(Access_IP,0,8));Type(Empty_IP) == Cst(etype(Access_IP,0,8));Type(Engineer_PC) == Cst(etype(Access_Agent,0,10));Type(DiagnosticTester_PC) == Cst(etype(Access_Agent,0,10));Type(Developer_PC) == Cst(etype(Access_Agent,0,10));Type(CRM_Server) == Cst(etype(Access_Agent,0,10));Type(Update_Server) == Cst(etype(Access_Agent,0,10));Type(Diagnostic_Server) == Cst(etype(Access_Agent,0,10));Type(Development_Server) == Cst(etype(Access_Agent,0,10));Type(Vehicle) == Cst(etype(Access_Agent,0,10));Type(Auto_Repair_Shop) == Cst(etype(Access_Agent,0,10));Type(Secondary_ECU) == Cst(etype(Access_Agent,0,10));Type(Empty_Agent) == Cst(etype(Access_Agent,0,10)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Auto_Repair_Shop_Firewall_i)) == (Type(Input_Agent) == Mvv(etype(Access_Agent,?,?));Type(Input_IP) == Mvv(etype(Access_IP,?,?));Type(Input_IP_List) == Mvv(etype(Access_IP_List,?,?));Type(Available_Port) == Mvv(btype(INTEGER,?,?));Type(Input_Port) == Mvv(btype(INTEGER,?,?));Type(Agent) == Mvv(etype(Access_grant,?,?)))
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
  List_Local_Operations(Implementation(Auto_Repair_Shop_Firewall_i))==(?)
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
  TypingPredicate(Implementation(Auto_Repair_Shop_Firewall_i))==(Agent: Access_grant & Input_Port: INTEGER & Available_Port: INTEGER & Input_IP_List: Access_IP_List & Input_IP: Access_IP & Input_Agent: Access_Agent)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
