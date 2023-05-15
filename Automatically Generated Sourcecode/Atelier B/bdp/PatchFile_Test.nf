Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PatchFile_Test))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PatchFile_Test))==(Machine(PatchFile_Test));
  Level(Machine(PatchFile_Test))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PatchFile_Test)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PatchFile_Test))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PatchFile_Test))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PatchFile_Test))==(?);
  List_Includes(Machine(PatchFile_Test))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PatchFile_Test))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PatchFile_Test))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PatchFile_Test))==(?);
  Context_List_Variables(Machine(PatchFile_Test))==(?);
  Abstract_List_Variables(Machine(PatchFile_Test))==(?);
  Local_List_Variables(Machine(PatchFile_Test))==(?);
  List_Variables(Machine(PatchFile_Test))==(?);
  External_List_Variables(Machine(PatchFile_Test))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PatchFile_Test))==(?);
  Abstract_List_VisibleVariables(Machine(PatchFile_Test))==(?);
  External_List_VisibleVariables(Machine(PatchFile_Test))==(?);
  Expanded_List_VisibleVariables(Machine(PatchFile_Test))==(?);
  List_VisibleVariables(Machine(PatchFile_Test))==(Compatibility_Test_Result,Network_Test_Result,Software_Test_Result,Hardware_Test_Result,Network_Compatibility_Test,Software_Compatibility_Test,Hardware_Compatibility_Test,Qulity_Test_Result,Patchfile_Execution_Result,Patchfile_Status,Sourcecode_Test_Result,Standard,Language);
  Internal_List_VisibleVariables(Machine(PatchFile_Test))==(Compatibility_Test_Result,Network_Test_Result,Software_Test_Result,Hardware_Test_Result,Network_Compatibility_Test,Software_Compatibility_Test,Hardware_Compatibility_Test,Qulity_Test_Result,Patchfile_Execution_Result,Patchfile_Status,Sourcecode_Test_Result,Standard,Language)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PatchFile_Test))==(btrue);
  Gluing_List_Invariant(Machine(PatchFile_Test))==(btrue);
  Expanded_List_Invariant(Machine(PatchFile_Test))==(btrue);
  Abstract_List_Invariant(Machine(PatchFile_Test))==(btrue);
  Context_List_Invariant(Machine(PatchFile_Test))==(btrue);
  List_Invariant(Machine(PatchFile_Test))==(Language: Deveop_Language & Standard: Coding_Standard & Sourcecode_Test_Result: Result & Patchfile_Status: Patchfile_Format & Patchfile_Execution_Result: Quality_Test & Qulity_Test_Result: Result & Hardware_Compatibility_Test: Hardware_Test & Software_Compatibility_Test: Software_Test & Network_Compatibility_Test: Network_Test & Hardware_Test_Result: Result & Software_Test_Result: Result & Network_Test_Result: Result & Compatibility_Test_Result: Result)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PatchFile_Test))==(btrue);
  Abstract_List_Assertions(Machine(PatchFile_Test))==(btrue);
  Context_List_Assertions(Machine(PatchFile_Test))==(btrue);
  List_Assertions(Machine(PatchFile_Test))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PatchFile_Test))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PatchFile_Test))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PatchFile_Test))==(@(Language$0).(Language$0: {} ==> Language:=Language$0) || @(Standard$0).(Standard$0: {} ==> Standard:=Standard$0) || @(Sourcecode_Test_Result$0).(Sourcecode_Test_Result$0: {} ==> Sourcecode_Test_Result:=Sourcecode_Test_Result$0) || @(Patchfile_Status$0).(Patchfile_Status$0: {} ==> Patchfile_Status:=Patchfile_Status$0) || @(Patchfile_Execution_Result$0).(Patchfile_Execution_Result$0: {} ==> Patchfile_Execution_Result:=Patchfile_Execution_Result$0) || @(Qulity_Test_Result$0).(Qulity_Test_Result$0: {} ==> Qulity_Test_Result:=Qulity_Test_Result$0) || @(Hardware_Compatibility_Test$0).(Hardware_Compatibility_Test$0: {} ==> Hardware_Compatibility_Test:=Hardware_Compatibility_Test$0) || @(Software_Compatibility_Test$0).(Software_Compatibility_Test$0: {} ==> Software_Compatibility_Test:=Software_Compatibility_Test$0) || @(Network_Compatibility_Test$0).(Network_Compatibility_Test$0: {} ==> Network_Compatibility_Test:=Network_Compatibility_Test$0) || @(Hardware_Test_Result$0).(Hardware_Test_Result$0: {} ==> Hardware_Test_Result:=Hardware_Test_Result$0) || @(Software_Test_Result$0).(Software_Test_Result$0: {} ==> Software_Test_Result:=Software_Test_Result$0) || @(Network_Test_Result$0).(Network_Test_Result$0: {} ==> Network_Test_Result:=Network_Test_Result$0) || @(Compatibility_Test_Result$0).(Compatibility_Test_Result$0: {} ==> Compatibility_Test_Result:=Compatibility_Test_Result$0));
  Context_List_Initialisation(Machine(PatchFile_Test))==(skip);
  List_Initialisation(Machine(PatchFile_Test))==(Language:: {} || Standard:: {} || Sourcecode_Test_Result:: {} || Patchfile_Status:: {} || Patchfile_Execution_Result:: {} || Qulity_Test_Result:: {} || Hardware_Compatibility_Test:: {} || Software_Compatibility_Test:: {} || Network_Compatibility_Test:: {} || Hardware_Test_Result:: {} || Software_Test_Result:: {} || Network_Test_Result:: {} || Compatibility_Test_Result:: {})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PatchFile_Test))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PatchFile_Test))==(btrue);
  List_Constraints(Machine(PatchFile_Test))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PatchFile_Test))==(sourcecode_test,sourcecode_compile,patchfile_quality_test,patchfile_compatibility_test);
  List_Operations(Machine(PatchFile_Test))==(sourcecode_test,sourcecode_compile,patchfile_quality_test,patchfile_compatibility_test)
END
&
THEORY ListInputX IS
  List_Input(Machine(PatchFile_Test),sourcecode_test)==(?);
  List_Input(Machine(PatchFile_Test),sourcecode_compile)==(?);
  List_Input(Machine(PatchFile_Test),patchfile_quality_test)==(?);
  List_Input(Machine(PatchFile_Test),patchfile_compatibility_test)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PatchFile_Test),sourcecode_test)==(?);
  List_Output(Machine(PatchFile_Test),sourcecode_compile)==(?);
  List_Output(Machine(PatchFile_Test),patchfile_quality_test)==(?);
  List_Output(Machine(PatchFile_Test),patchfile_compatibility_test)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PatchFile_Test),sourcecode_test)==(sourcecode_test);
  List_Header(Machine(PatchFile_Test),sourcecode_compile)==(sourcecode_compile);
  List_Header(Machine(PatchFile_Test),patchfile_quality_test)==(patchfile_quality_test);
  List_Header(Machine(PatchFile_Test),patchfile_compatibility_test)==(patchfile_compatibility_test)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PatchFile_Test),sourcecode_test)==(btrue);
  List_Precondition(Machine(PatchFile_Test),sourcecode_compile)==(btrue);
  List_Precondition(Machine(PatchFile_Test),patchfile_quality_test)==(btrue);
  List_Precondition(Machine(PatchFile_Test),patchfile_compatibility_test)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PatchFile_Test),patchfile_compatibility_test)==(btrue | skip);
  Expanded_List_Substitution(Machine(PatchFile_Test),patchfile_quality_test)==(btrue | skip);
  Expanded_List_Substitution(Machine(PatchFile_Test),sourcecode_compile)==(btrue | skip);
  Expanded_List_Substitution(Machine(PatchFile_Test),sourcecode_test)==(btrue | skip);
  List_Substitution(Machine(PatchFile_Test),sourcecode_test)==(skip);
  List_Substitution(Machine(PatchFile_Test),sourcecode_compile)==(skip);
  List_Substitution(Machine(PatchFile_Test),patchfile_quality_test)==(skip);
  List_Substitution(Machine(PatchFile_Test),patchfile_compatibility_test)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PatchFile_Test))==(?);
  Inherited_List_Constants(Machine(PatchFile_Test))==(?);
  List_Constants(Machine(PatchFile_Test))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(PatchFile_Test),Result)==({Valid,Invalid});
  Context_List_Enumerated(Machine(PatchFile_Test))==(?);
  Context_List_Defered(Machine(PatchFile_Test))==(?);
  Context_List_Sets(Machine(PatchFile_Test))==(?);
  List_Valuable_Sets(Machine(PatchFile_Test))==(?);
  Inherited_List_Enumerated(Machine(PatchFile_Test))==(?);
  Inherited_List_Defered(Machine(PatchFile_Test))==(?);
  Inherited_List_Sets(Machine(PatchFile_Test))==(?);
  List_Enumerated(Machine(PatchFile_Test))==(Result,Quality_Test,Compatibility_Test,Hardware_Test,Software_Test,Network_Test,Deveop_Language,Patchfile_Format,Coding_Standard,Sourcecode_Format);
  List_Defered(Machine(PatchFile_Test))==(?);
  List_Sets(Machine(PatchFile_Test))==(Result,Quality_Test,Compatibility_Test,Hardware_Test,Software_Test,Network_Test,Deveop_Language,Patchfile_Format,Coding_Standard,Sourcecode_Format);
  Set_Definition(Machine(PatchFile_Test),Quality_Test)==({Patchfile_error});
  Set_Definition(Machine(PatchFile_Test),Compatibility_Test)==({Hardware_Compatibility,Software_Compatibility,Network_Compatibility});
  Set_Definition(Machine(PatchFile_Test),Hardware_Test)==({Empty_Hardware,Memory_Type,Memory_Size,Memory_Speed,Input_Device,Output_Device});
  Set_Definition(Machine(PatchFile_Test),Software_Test)==({Empty_Software,Windows,Linux,Mac,Current_Version_Software,Other_Version_Software});
  Set_Definition(Machine(PatchFile_Test),Network_Test)==({Empty_Network,Wifi,Data_Network,Bluetooth});
  Set_Definition(Machine(PatchFile_Test),Deveop_Language)==({C_Language,C_Plus_Language});
  Set_Definition(Machine(PatchFile_Test),Patchfile_Format)==({None,Sourcecode,Binary,Encrypted_Binary});
  Set_Definition(Machine(PatchFile_Test),Coding_Standard)==({Misra_C,Misra_C_Plus,AUTOSAR_C_Plus});
  Set_Definition(Machine(PatchFile_Test),Sourcecode_Format)==({Written_Sourcecode,Writing_Sourcecode})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PatchFile_Test))==(?);
  Expanded_List_HiddenConstants(Machine(PatchFile_Test))==(?);
  List_HiddenConstants(Machine(PatchFile_Test))==(?);
  External_List_HiddenConstants(Machine(PatchFile_Test))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PatchFile_Test))==(btrue);
  Context_List_Properties(Machine(PatchFile_Test))==(btrue);
  Inherited_List_Properties(Machine(PatchFile_Test))==(btrue);
  List_Properties(Machine(PatchFile_Test))==(Result: FIN(INTEGER) & not(Result = {}) & Quality_Test: FIN(INTEGER) & not(Quality_Test = {}) & Compatibility_Test: FIN(INTEGER) & not(Compatibility_Test = {}) & Hardware_Test: FIN(INTEGER) & not(Hardware_Test = {}) & Software_Test: FIN(INTEGER) & not(Software_Test = {}) & Network_Test: FIN(INTEGER) & not(Network_Test = {}) & Deveop_Language: FIN(INTEGER) & not(Deveop_Language = {}) & Patchfile_Format: FIN(INTEGER) & not(Patchfile_Format = {}) & Coding_Standard: FIN(INTEGER) & not(Coding_Standard = {}) & Sourcecode_Format: FIN(INTEGER) & not(Sourcecode_Format = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PatchFile_Test),sourcecode_test)==(?);
  List_ANY_Var(Machine(PatchFile_Test),sourcecode_compile)==(?);
  List_ANY_Var(Machine(PatchFile_Test),patchfile_quality_test)==(?);
  List_ANY_Var(Machine(PatchFile_Test),patchfile_compatibility_test)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PatchFile_Test)) == (Result,Quality_Test,Compatibility_Test,Hardware_Test,Software_Test,Network_Test,Deveop_Language,Patchfile_Format,Coding_Standard,Sourcecode_Format,Valid,Invalid,Patchfile_error,Hardware_Compatibility,Software_Compatibility,Network_Compatibility,Empty_Hardware,Memory_Type,Memory_Size,Memory_Speed,Input_Device,Output_Device,Empty_Software,Windows,Linux,Mac,Current_Version_Software,Other_Version_Software,Empty_Network,Wifi,Data_Network,Bluetooth,C_Language,C_Plus_Language,None,Sourcecode,Binary,Encrypted_Binary,Misra_C,Misra_C_Plus,AUTOSAR_C_Plus,Written_Sourcecode,Writing_Sourcecode | ? | ? | ? | sourcecode_test,sourcecode_compile,patchfile_quality_test,patchfile_compatibility_test | ? | ? | ? | PatchFile_Test);
  List_Of_HiddenCst_Ids(Machine(PatchFile_Test)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PatchFile_Test)) == (?);
  List_Of_VisibleVar_Ids(Machine(PatchFile_Test)) == (Compatibility_Test_Result,Network_Test_Result,Software_Test_Result,Hardware_Test_Result,Network_Compatibility_Test,Software_Compatibility_Test,Hardware_Compatibility_Test,Qulity_Test_Result,Patchfile_Execution_Result,Patchfile_Status,Sourcecode_Test_Result,Standard,Language | ?);
  List_Of_Ids_SeenBNU(Machine(PatchFile_Test)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(PatchFile_Test)) == (Type(Result) == Cst(SetOf(etype(Result,0,1)));Type(Quality_Test) == Cst(SetOf(etype(Quality_Test,0,0)));Type(Compatibility_Test) == Cst(SetOf(etype(Compatibility_Test,0,2)));Type(Hardware_Test) == Cst(SetOf(etype(Hardware_Test,0,5)));Type(Software_Test) == Cst(SetOf(etype(Software_Test,0,5)));Type(Network_Test) == Cst(SetOf(etype(Network_Test,0,3)));Type(Deveop_Language) == Cst(SetOf(etype(Deveop_Language,0,1)));Type(Patchfile_Format) == Cst(SetOf(etype(Patchfile_Format,0,3)));Type(Coding_Standard) == Cst(SetOf(etype(Coding_Standard,0,2)));Type(Sourcecode_Format) == Cst(SetOf(etype(Sourcecode_Format,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(PatchFile_Test)) == (Type(Valid) == Cst(etype(Result,0,1));Type(Invalid) == Cst(etype(Result,0,1));Type(Patchfile_error) == Cst(etype(Quality_Test,0,0));Type(Hardware_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Software_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Network_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Empty_Hardware) == Cst(etype(Hardware_Test,0,5));Type(Memory_Type) == Cst(etype(Hardware_Test,0,5));Type(Memory_Size) == Cst(etype(Hardware_Test,0,5));Type(Memory_Speed) == Cst(etype(Hardware_Test,0,5));Type(Input_Device) == Cst(etype(Hardware_Test,0,5));Type(Output_Device) == Cst(etype(Hardware_Test,0,5));Type(Empty_Software) == Cst(etype(Software_Test,0,5));Type(Windows) == Cst(etype(Software_Test,0,5));Type(Linux) == Cst(etype(Software_Test,0,5));Type(Mac) == Cst(etype(Software_Test,0,5));Type(Current_Version_Software) == Cst(etype(Software_Test,0,5));Type(Other_Version_Software) == Cst(etype(Software_Test,0,5));Type(Empty_Network) == Cst(etype(Network_Test,0,3));Type(Wifi) == Cst(etype(Network_Test,0,3));Type(Data_Network) == Cst(etype(Network_Test,0,3));Type(Bluetooth) == Cst(etype(Network_Test,0,3));Type(C_Language) == Cst(etype(Deveop_Language,0,1));Type(C_Plus_Language) == Cst(etype(Deveop_Language,0,1));Type(None) == Cst(etype(Patchfile_Format,0,3));Type(Sourcecode) == Cst(etype(Patchfile_Format,0,3));Type(Binary) == Cst(etype(Patchfile_Format,0,3));Type(Encrypted_Binary) == Cst(etype(Patchfile_Format,0,3));Type(Misra_C) == Cst(etype(Coding_Standard,0,2));Type(Misra_C_Plus) == Cst(etype(Coding_Standard,0,2));Type(AUTOSAR_C_Plus) == Cst(etype(Coding_Standard,0,2));Type(Written_Sourcecode) == Cst(etype(Sourcecode_Format,0,1));Type(Writing_Sourcecode) == Cst(etype(Sourcecode_Format,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(PatchFile_Test)) == (Type(Compatibility_Test_Result) == Mvv(etype(Result,?,?));Type(Network_Test_Result) == Mvv(etype(Result,?,?));Type(Software_Test_Result) == Mvv(etype(Result,?,?));Type(Hardware_Test_Result) == Mvv(etype(Result,?,?));Type(Network_Compatibility_Test) == Mvv(etype(Network_Test,?,?));Type(Software_Compatibility_Test) == Mvv(etype(Software_Test,?,?));Type(Hardware_Compatibility_Test) == Mvv(etype(Hardware_Test,?,?));Type(Qulity_Test_Result) == Mvv(etype(Result,?,?));Type(Patchfile_Execution_Result) == Mvv(etype(Quality_Test,?,?));Type(Patchfile_Status) == Mvv(etype(Patchfile_Format,?,?));Type(Sourcecode_Test_Result) == Mvv(etype(Result,?,?));Type(Standard) == Mvv(etype(Coding_Standard,?,?));Type(Language) == Mvv(etype(Deveop_Language,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PatchFile_Test)) == (Type(patchfile_compatibility_test) == Cst(No_type,No_type);Type(patchfile_quality_test) == Cst(No_type,No_type);Type(sourcecode_compile) == Cst(No_type,No_type);Type(sourcecode_test) == Cst(No_type,No_type));
  Observers(Machine(PatchFile_Test)) == (Type(patchfile_compatibility_test) == Cst(No_type,No_type);Type(patchfile_quality_test) == Cst(No_type,No_type);Type(sourcecode_compile) == Cst(No_type,No_type);Type(sourcecode_test) == Cst(No_type,No_type))
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
