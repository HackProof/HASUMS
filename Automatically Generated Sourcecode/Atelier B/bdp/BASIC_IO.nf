Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_IO))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_IO))==(Machine(BASIC_IO));
  Level(Machine(BASIC_IO))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_IO)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_IO))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_IO))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_IO))==(?);
  List_Includes(Machine(BASIC_IO))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_IO))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_IO))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_IO))==(?);
  Context_List_Variables(Machine(BASIC_IO))==(?);
  Abstract_List_Variables(Machine(BASIC_IO))==(?);
  Local_List_Variables(Machine(BASIC_IO))==(?);
  List_Variables(Machine(BASIC_IO))==(?);
  External_List_Variables(Machine(BASIC_IO))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_IO))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_IO))==(?);
  External_List_VisibleVariables(Machine(BASIC_IO))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_IO))==(?);
  List_VisibleVariables(Machine(BASIC_IO))==(?);
  Internal_List_VisibleVariables(Machine(BASIC_IO))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_IO))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_IO))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_IO))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_IO))==(btrue);
  Context_List_Invariant(Machine(BASIC_IO))==(btrue);
  List_Invariant(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_IO))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_IO))==(btrue);
  Context_List_Assertions(Machine(BASIC_IO))==(btrue);
  List_Assertions(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_IO))==(skip);
  Context_List_Initialisation(Machine(BASIC_IO))==(skip);
  List_Initialisation(Machine(BASIC_IO))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_IO))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_IO))==(btrue);
  List_Constraints(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_IO))==(printf,scanf);
  List_Operations(Machine(BASIC_IO))==(printf,scanf)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_IO),printf)==(ss);
  List_Input(Machine(BASIC_IO),scanf)==(ss)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_IO),printf)==(?);
  List_Output(Machine(BASIC_IO),scanf)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_IO),printf)==(printf(ss));
  List_Header(Machine(BASIC_IO),scanf)==(scanf(ss))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_IO),printf)==(ss: STRING);
  List_Precondition(Machine(BASIC_IO),scanf)==(ss: STRING)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_IO),scanf)==(ss: STRING | skip);
  Expanded_List_Substitution(Machine(BASIC_IO),printf)==(ss: STRING | skip);
  List_Substitution(Machine(BASIC_IO),printf)==(skip);
  List_Substitution(Machine(BASIC_IO),scanf)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_IO))==(?);
  Inherited_List_Constants(Machine(BASIC_IO))==(?);
  List_Constants(Machine(BASIC_IO))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(BASIC_IO))==(?);
  Context_List_Defered(Machine(BASIC_IO))==(?);
  Context_List_Sets(Machine(BASIC_IO))==(?);
  List_Valuable_Sets(Machine(BASIC_IO))==(?);
  Inherited_List_Enumerated(Machine(BASIC_IO))==(?);
  Inherited_List_Defered(Machine(BASIC_IO))==(?);
  Inherited_List_Sets(Machine(BASIC_IO))==(?);
  List_Enumerated(Machine(BASIC_IO))==(?);
  List_Defered(Machine(BASIC_IO))==(?);
  List_Sets(Machine(BASIC_IO))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_IO))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_IO))==(?);
  List_HiddenConstants(Machine(BASIC_IO))==(?);
  External_List_HiddenConstants(Machine(BASIC_IO))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_IO))==(btrue);
  Context_List_Properties(Machine(BASIC_IO))==(btrue);
  Inherited_List_Properties(Machine(BASIC_IO))==(btrue);
  List_Properties(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_IO),printf)==(?);
  List_ANY_Var(Machine(BASIC_IO),scanf)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | printf,scanf | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_IO)) == (Type(scanf) == Cst(No_type,btype(STRING,?,?));Type(printf) == Cst(No_type,btype(STRING,?,?)));
  Observers(Machine(BASIC_IO)) == (Type(scanf) == Cst(No_type,btype(STRING,?,?));Type(printf) == Cst(No_type,btype(STRING,?,?)))
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
