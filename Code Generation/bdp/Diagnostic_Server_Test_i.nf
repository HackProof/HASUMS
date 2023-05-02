Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Diagnostic_Server_Test_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Diagnostic_Server_Test_i))==(Machine(PatchFile_Test));
  Level(Implementation(Diagnostic_Server_Test_i))==(1);
  Upper_Level(Implementation(Diagnostic_Server_Test_i))==(Machine(PatchFile_Test))
END
&
THEORY LoadedStructureX IS
  Implementation(Diagnostic_Server_Test_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Diagnostic_Server_Test_i))==(?);
  Inherited_List_Includes(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Diagnostic_Server_Test_i))==(?);
  Context_List_Variables(Implementation(Diagnostic_Server_Test_i))==(?);
  Abstract_List_Variables(Implementation(Diagnostic_Server_Test_i))==(?);
  Local_List_Variables(Implementation(Diagnostic_Server_Test_i))==(?);
  List_Variables(Implementation(Diagnostic_Server_Test_i))==(?);
  External_List_Variables(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Diagnostic_Server_Test_i))==(Compatibility_Test_Result,Network_Test_Result,Software_Test_Result,Hardware_Test_Result,Network_Compatibility_Test,Software_Compatibility_Test,Hardware_Compatibility_Test,Qulity_Test_Result,Patchfile_Execution_Result,Patchfile_Status,Sourcecode_Test_Result,Standard,Language);
  Abstract_List_VisibleVariables(Implementation(Diagnostic_Server_Test_i))==(Compatibility_Test_Result,Network_Test_Result,Software_Test_Result,Hardware_Test_Result,Network_Compatibility_Test,Software_Compatibility_Test,Hardware_Compatibility_Test,Qulity_Test_Result,Patchfile_Execution_Result,Patchfile_Status,Sourcecode_Test_Result,Standard,Language);
  External_List_VisibleVariables(Implementation(Diagnostic_Server_Test_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Diagnostic_Server_Test_i))==(?);
  List_VisibleVariables(Implementation(Diagnostic_Server_Test_i))==(?);
  Internal_List_VisibleVariables(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Diagnostic_Server_Test_i))==(btrue);
  Expanded_List_Invariant(Implementation(Diagnostic_Server_Test_i))==(btrue);
  Abstract_List_Invariant(Implementation(Diagnostic_Server_Test_i))==(Language: Deveop_Language & Standard: Coding_Standard & Sourcecode_Test_Result: Result & Patchfile_Status: Patchfile_Format & Patchfile_Execution_Result: Quality_Test & Qulity_Test_Result: Result & Hardware_Compatibility_Test: Hardware_Test & Software_Compatibility_Test: Software_Test & Network_Compatibility_Test: Network_Test & Hardware_Test_Result: Result & Software_Test_Result: Result & Network_Test_Result: Result & Compatibility_Test_Result: Result);
  Context_List_Invariant(Implementation(Diagnostic_Server_Test_i))==(btrue);
  List_Invariant(Implementation(Diagnostic_Server_Test_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Diagnostic_Server_Test_i))==(btrue);
  Abstract_List_Assertions(Implementation(Diagnostic_Server_Test_i))==(btrue);
  Context_List_Assertions(Implementation(Diagnostic_Server_Test_i))==(btrue);
  List_Assertions(Implementation(Diagnostic_Server_Test_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Diagnostic_Server_Test_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Diagnostic_Server_Test_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Diagnostic_Server_Test_i))==(Language:=C_Language;Standard:=Misra_C;Sourcecode_Test_Result:=Invalid;Patchfile_Status:=None;Patchfile_Execution_Result:=Patchfile_error;Qulity_Test_Result:=Invalid;Hardware_Compatibility_Test:=Empty_Hardware;Software_Compatibility_Test:=Empty_Software;Network_Compatibility_Test:=Empty_Network;Hardware_Test_Result:=Invalid;Software_Test_Result:=Invalid;Network_Test_Result:=Invalid;Compatibility_Test_Result:=Invalid);
  Context_List_Initialisation(Implementation(Diagnostic_Server_Test_i))==(skip);
  List_Initialisation(Implementation(Diagnostic_Server_Test_i))==(Language:=C_Language;Standard:=Misra_C;Sourcecode_Test_Result:=Invalid;Patchfile_Status:=None;Patchfile_Execution_Result:=Patchfile_error;Qulity_Test_Result:=Invalid;Hardware_Compatibility_Test:=Empty_Hardware;Software_Compatibility_Test:=Empty_Software;Network_Compatibility_Test:=Empty_Network;Hardware_Test_Result:=Invalid;Software_Test_Result:=Invalid;Network_Test_Result:=Invalid;Compatibility_Test_Result:=Invalid)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Diagnostic_Server_Test_i))==(btrue);
  List_Context_Constraints(Implementation(Diagnostic_Server_Test_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Diagnostic_Server_Test_i))==(sourcecode_test,sourcecode_compile,patchfile_quality_test,patchfile_compatibility_test);
  List_Operations(Implementation(Diagnostic_Server_Test_i))==(sourcecode_test,sourcecode_compile,patchfile_quality_test,patchfile_compatibility_test)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Diagnostic_Server_Test_i),sourcecode_test)==(?);
  List_Input(Implementation(Diagnostic_Server_Test_i),sourcecode_compile)==(?);
  List_Input(Implementation(Diagnostic_Server_Test_i),patchfile_quality_test)==(?);
  List_Input(Implementation(Diagnostic_Server_Test_i),patchfile_compatibility_test)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Diagnostic_Server_Test_i),sourcecode_test)==(?);
  List_Output(Implementation(Diagnostic_Server_Test_i),sourcecode_compile)==(?);
  List_Output(Implementation(Diagnostic_Server_Test_i),patchfile_quality_test)==(?);
  List_Output(Implementation(Diagnostic_Server_Test_i),patchfile_compatibility_test)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Diagnostic_Server_Test_i),sourcecode_test)==(sourcecode_test);
  List_Header(Implementation(Diagnostic_Server_Test_i),sourcecode_compile)==(sourcecode_compile);
  List_Header(Implementation(Diagnostic_Server_Test_i),patchfile_quality_test)==(patchfile_quality_test);
  List_Header(Implementation(Diagnostic_Server_Test_i),patchfile_compatibility_test)==(patchfile_compatibility_test)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Diagnostic_Server_Test_i),sourcecode_test)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Test_i),sourcecode_test)==(btrue);
  Own_Precondition(Implementation(Diagnostic_Server_Test_i),sourcecode_compile)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Test_i),sourcecode_compile)==(btrue);
  Own_Precondition(Implementation(Diagnostic_Server_Test_i),patchfile_quality_test)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Test_i),patchfile_quality_test)==(btrue);
  Own_Precondition(Implementation(Diagnostic_Server_Test_i),patchfile_compatibility_test)==(btrue);
  List_Precondition(Implementation(Diagnostic_Server_Test_i),patchfile_compatibility_test)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Test_i),patchfile_compatibility_test)==(btrue | Qulity_Test_Result = Valid & Hardware_Compatibility_Test = Memory_Type or Hardware_Compatibility_Test = Memory_Size or Hardware_Compatibility_Test = Memory_Speed or Hardware_Compatibility_Test = Input_Device or Hardware_Compatibility_Test = Output_Device & Software_Compatibility_Test = Windows or Software_Compatibility_Test = Linux or Software_Compatibility_Test = Mac or Software_Compatibility_Test = Current_Version_Software or Software_Compatibility_Test = Other_Version_Software & Network_Compatibility_Test = Wifi or Network_Compatibility_Test = Data_Network or Network_Compatibility_Test = Bluetooth & Hardware_Test_Result = Valid & Software_Test_Result = Valid & Network_Test_Result = Valid ==> Compatibility_Test_Result:=Valid [] not(Qulity_Test_Result = Valid & Hardware_Compatibility_Test = Memory_Type or Hardware_Compatibility_Test = Memory_Size or Hardware_Compatibility_Test = Memory_Speed or Hardware_Compatibility_Test = Input_Device or Hardware_Compatibility_Test = Output_Device & Software_Compatibility_Test = Windows or Software_Compatibility_Test = Linux or Software_Compatibility_Test = Mac or Software_Compatibility_Test = Current_Version_Software or Software_Compatibility_Test = Other_Version_Software & Network_Compatibility_Test = Wifi or Network_Compatibility_Test = Data_Network or Network_Compatibility_Test = Bluetooth & Hardware_Test_Result = Valid & Software_Test_Result = Valid & Network_Test_Result = Valid) ==> Compatibility_Test_Result:=Invalid);
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Test_i),patchfile_quality_test)==(btrue | Patchfile_Status = Binary & Patchfile_Execution_Result/=Patchfile_error ==> Qulity_Test_Result:=Valid [] not(Patchfile_Status = Binary & Patchfile_Execution_Result/=Patchfile_error) ==> Qulity_Test_Result:=Invalid);
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Test_i),sourcecode_compile)==(btrue | Sourcecode_Test_Result = Valid ==> Patchfile_Status:=Binary [] not(Sourcecode_Test_Result = Valid) ==> skip);
  Expanded_List_Substitution(Implementation(Diagnostic_Server_Test_i),sourcecode_test)==(btrue | Language = C_Language & Standard = Misra_C ==> Sourcecode_Test_Result:=Valid [] not(Language = C_Language & Standard = Misra_C) ==> (Language = C_Plus_Language & Standard = Misra_C_Plus or Standard = AUTOSAR_C_Plus ==> Sourcecode_Test_Result:=Valid [] not(Language = C_Plus_Language & Standard = Misra_C_Plus or Standard = AUTOSAR_C_Plus) ==> Sourcecode_Test_Result:=Invalid));
  List_Substitution(Implementation(Diagnostic_Server_Test_i),sourcecode_test)==(IF Language = C_Language & Standard = Misra_C THEN Sourcecode_Test_Result:=Valid ELSE IF Language = C_Plus_Language & Standard = Misra_C_Plus or Standard = AUTOSAR_C_Plus THEN Sourcecode_Test_Result:=Valid ELSE Sourcecode_Test_Result:=Invalid END END);
  List_Substitution(Implementation(Diagnostic_Server_Test_i),sourcecode_compile)==(IF Sourcecode_Test_Result = Valid THEN Patchfile_Status:=Binary END);
  List_Substitution(Implementation(Diagnostic_Server_Test_i),patchfile_quality_test)==(IF Patchfile_Status = Binary & Patchfile_Execution_Result/=Patchfile_error THEN Qulity_Test_Result:=Valid ELSE Qulity_Test_Result:=Invalid END);
  List_Substitution(Implementation(Diagnostic_Server_Test_i),patchfile_compatibility_test)==(IF Qulity_Test_Result = Valid & Hardware_Compatibility_Test = Memory_Type or Hardware_Compatibility_Test = Memory_Size or Hardware_Compatibility_Test = Memory_Speed or Hardware_Compatibility_Test = Input_Device or Hardware_Compatibility_Test = Output_Device & Software_Compatibility_Test = Windows or Software_Compatibility_Test = Linux or Software_Compatibility_Test = Mac or Software_Compatibility_Test = Current_Version_Software or Software_Compatibility_Test = Other_Version_Software & Network_Compatibility_Test = Wifi or Network_Compatibility_Test = Data_Network or Network_Compatibility_Test = Bluetooth & Hardware_Test_Result = Valid & Software_Test_Result = Valid & Network_Test_Result = Valid THEN Compatibility_Test_Result:=Valid ELSE Compatibility_Test_Result:=Invalid END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Diagnostic_Server_Test_i))==(?);
  Inherited_List_Constants(Implementation(Diagnostic_Server_Test_i))==(?);
  List_Constants(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Sourcecode_Format)==({Written_Sourcecode,Writing_Sourcecode});
  Context_List_Enumerated(Implementation(Diagnostic_Server_Test_i))==(?);
  Context_List_Defered(Implementation(Diagnostic_Server_Test_i))==(?);
  Context_List_Sets(Implementation(Diagnostic_Server_Test_i))==(?);
  List_Own_Enumerated(Implementation(Diagnostic_Server_Test_i))==(Result,Quality_Test,Compatibility_Test,Hardware_Test,Software_Test,Network_Test,Deveop_Language,Patchfile_Format,Coding_Standard,Sourcecode_Format);
  List_Valuable_Sets(Implementation(Diagnostic_Server_Test_i))==(?);
  Inherited_List_Enumerated(Implementation(Diagnostic_Server_Test_i))==(Result,Quality_Test,Compatibility_Test,Hardware_Test,Software_Test,Network_Test,Deveop_Language,Patchfile_Format,Coding_Standard,Sourcecode_Format);
  Inherited_List_Defered(Implementation(Diagnostic_Server_Test_i))==(?);
  Inherited_List_Sets(Implementation(Diagnostic_Server_Test_i))==(Result,Quality_Test,Compatibility_Test,Hardware_Test,Software_Test,Network_Test,Deveop_Language,Patchfile_Format,Coding_Standard,Sourcecode_Format);
  List_Enumerated(Implementation(Diagnostic_Server_Test_i))==(?);
  List_Defered(Implementation(Diagnostic_Server_Test_i))==(?);
  List_Sets(Implementation(Diagnostic_Server_Test_i))==(?);
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Coding_Standard)==({Misra_C,Misra_C_Plus,AUTOSAR_C_Plus});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Patchfile_Format)==({None,Sourcecode,Binary,Encrypted_Binary});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Deveop_Language)==({C_Language,C_Plus_Language});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Network_Test)==({Empty_Network,Wifi,Data_Network,Bluetooth});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Software_Test)==({Empty_Software,Windows,Linux,Mac,Current_Version_Software,Other_Version_Software});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Hardware_Test)==({Empty_Hardware,Memory_Type,Memory_Size,Memory_Speed,Input_Device,Output_Device});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Compatibility_Test)==({Hardware_Compatibility,Software_Compatibility,Network_Compatibility});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Quality_Test)==({Patchfile_error});
  Set_Definition(Implementation(Diagnostic_Server_Test_i),Result)==({Valid,Invalid})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Diagnostic_Server_Test_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Diagnostic_Server_Test_i))==(?);
  List_HiddenConstants(Implementation(Diagnostic_Server_Test_i))==(?);
  External_List_HiddenConstants(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Diagnostic_Server_Test_i))==(Result: FIN(INTEGER) & not(Result = {}) & Quality_Test: FIN(INTEGER) & not(Quality_Test = {}) & Compatibility_Test: FIN(INTEGER) & not(Compatibility_Test = {}) & Hardware_Test: FIN(INTEGER) & not(Hardware_Test = {}) & Software_Test: FIN(INTEGER) & not(Software_Test = {}) & Network_Test: FIN(INTEGER) & not(Network_Test = {}) & Deveop_Language: FIN(INTEGER) & not(Deveop_Language = {}) & Patchfile_Format: FIN(INTEGER) & not(Patchfile_Format = {}) & Coding_Standard: FIN(INTEGER) & not(Coding_Standard = {}) & Sourcecode_Format: FIN(INTEGER) & not(Sourcecode_Format = {}));
  Context_List_Properties(Implementation(Diagnostic_Server_Test_i))==(btrue);
  Inherited_List_Properties(Implementation(Diagnostic_Server_Test_i))==(btrue);
  List_Properties(Implementation(Diagnostic_Server_Test_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Diagnostic_Server_Test_i))==(aa: aa);
  List_Values(Implementation(Diagnostic_Server_Test_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Diagnostic_Server_Test_i))==(Type(patchfile_compatibility_test) == Cst(No_type,No_type);Type(patchfile_quality_test) == Cst(No_type,No_type);Type(sourcecode_compile) == Cst(No_type,No_type);Type(sourcecode_test) == Cst(No_type,No_type));
  VisibleVariables(Implementation(Diagnostic_Server_Test_i))==(Type(Compatibility_Test_Result) == Mvv(etype(Result,?,?));Type(Network_Test_Result) == Mvv(etype(Result,?,?));Type(Software_Test_Result) == Mvv(etype(Result,?,?));Type(Hardware_Test_Result) == Mvv(etype(Result,?,?));Type(Network_Compatibility_Test) == Mvv(etype(Network_Test,?,?));Type(Software_Compatibility_Test) == Mvv(etype(Software_Test,?,?));Type(Hardware_Compatibility_Test) == Mvv(etype(Hardware_Test,?,?));Type(Qulity_Test_Result) == Mvv(etype(Result,?,?));Type(Patchfile_Execution_Result) == Mvv(etype(Quality_Test,?,?));Type(Patchfile_Status) == Mvv(etype(Patchfile_Format,?,?));Type(Sourcecode_Test_Result) == Mvv(etype(Result,?,?));Type(Standard) == Mvv(etype(Coding_Standard,?,?));Type(Language) == Mvv(etype(Deveop_Language,?,?)));
  Constants(Implementation(Diagnostic_Server_Test_i))==(Type(Valid) == Cst(etype(Result,0,1));Type(Invalid) == Cst(etype(Result,0,1));Type(Patchfile_error) == Cst(etype(Quality_Test,0,0));Type(Hardware_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Software_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Network_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Empty_Hardware) == Cst(etype(Hardware_Test,0,5));Type(Memory_Type) == Cst(etype(Hardware_Test,0,5));Type(Memory_Size) == Cst(etype(Hardware_Test,0,5));Type(Memory_Speed) == Cst(etype(Hardware_Test,0,5));Type(Input_Device) == Cst(etype(Hardware_Test,0,5));Type(Output_Device) == Cst(etype(Hardware_Test,0,5));Type(Empty_Software) == Cst(etype(Software_Test,0,5));Type(Windows) == Cst(etype(Software_Test,0,5));Type(Linux) == Cst(etype(Software_Test,0,5));Type(Mac) == Cst(etype(Software_Test,0,5));Type(Current_Version_Software) == Cst(etype(Software_Test,0,5));Type(Other_Version_Software) == Cst(etype(Software_Test,0,5));Type(Empty_Network) == Cst(etype(Network_Test,0,3));Type(Wifi) == Cst(etype(Network_Test,0,3));Type(Data_Network) == Cst(etype(Network_Test,0,3));Type(Bluetooth) == Cst(etype(Network_Test,0,3));Type(C_Language) == Cst(etype(Deveop_Language,0,1));Type(C_Plus_Language) == Cst(etype(Deveop_Language,0,1));Type(None) == Cst(etype(Patchfile_Format,0,3));Type(Sourcecode) == Cst(etype(Patchfile_Format,0,3));Type(Binary) == Cst(etype(Patchfile_Format,0,3));Type(Encrypted_Binary) == Cst(etype(Patchfile_Format,0,3));Type(Misra_C) == Cst(etype(Coding_Standard,0,2));Type(Misra_C_Plus) == Cst(etype(Coding_Standard,0,2));Type(AUTOSAR_C_Plus) == Cst(etype(Coding_Standard,0,2));Type(Written_Sourcecode) == Cst(etype(Sourcecode_Format,0,1));Type(Writing_Sourcecode) == Cst(etype(Sourcecode_Format,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Diagnostic_Server_Test_i)) == (? | ? | ? | ? | sourcecode_test,sourcecode_compile,patchfile_quality_test,patchfile_compatibility_test | ? | ? | ? | Diagnostic_Server_Test_i);
  List_Of_HiddenCst_Ids(Implementation(Diagnostic_Server_Test_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Diagnostic_Server_Test_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Diagnostic_Server_Test_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Diagnostic_Server_Test_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Diagnostic_Server_Test_i)) == (Type(Sourcecode_Format) == Cst(SetOf(etype(Sourcecode_Format,0,1)));Type(Coding_Standard) == Cst(SetOf(etype(Coding_Standard,0,2)));Type(Patchfile_Format) == Cst(SetOf(etype(Patchfile_Format,0,3)));Type(Deveop_Language) == Cst(SetOf(etype(Deveop_Language,0,1)));Type(Network_Test) == Cst(SetOf(etype(Network_Test,0,3)));Type(Software_Test) == Cst(SetOf(etype(Software_Test,0,5)));Type(Hardware_Test) == Cst(SetOf(etype(Hardware_Test,0,5)));Type(Compatibility_Test) == Cst(SetOf(etype(Compatibility_Test,0,2)));Type(Quality_Test) == Cst(SetOf(etype(Quality_Test,0,0)));Type(Result) == Cst(SetOf(etype(Result,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Diagnostic_Server_Test_i)) == (Type(Writing_Sourcecode) == Cst(etype(Sourcecode_Format,0,1));Type(Written_Sourcecode) == Cst(etype(Sourcecode_Format,0,1));Type(AUTOSAR_C_Plus) == Cst(etype(Coding_Standard,0,2));Type(Misra_C_Plus) == Cst(etype(Coding_Standard,0,2));Type(Misra_C) == Cst(etype(Coding_Standard,0,2));Type(Encrypted_Binary) == Cst(etype(Patchfile_Format,0,3));Type(Binary) == Cst(etype(Patchfile_Format,0,3));Type(Sourcecode) == Cst(etype(Patchfile_Format,0,3));Type(None) == Cst(etype(Patchfile_Format,0,3));Type(C_Plus_Language) == Cst(etype(Deveop_Language,0,1));Type(C_Language) == Cst(etype(Deveop_Language,0,1));Type(Bluetooth) == Cst(etype(Network_Test,0,3));Type(Data_Network) == Cst(etype(Network_Test,0,3));Type(Wifi) == Cst(etype(Network_Test,0,3));Type(Empty_Network) == Cst(etype(Network_Test,0,3));Type(Other_Version_Software) == Cst(etype(Software_Test,0,5));Type(Current_Version_Software) == Cst(etype(Software_Test,0,5));Type(Mac) == Cst(etype(Software_Test,0,5));Type(Linux) == Cst(etype(Software_Test,0,5));Type(Windows) == Cst(etype(Software_Test,0,5));Type(Empty_Software) == Cst(etype(Software_Test,0,5));Type(Output_Device) == Cst(etype(Hardware_Test,0,5));Type(Input_Device) == Cst(etype(Hardware_Test,0,5));Type(Memory_Speed) == Cst(etype(Hardware_Test,0,5));Type(Memory_Size) == Cst(etype(Hardware_Test,0,5));Type(Memory_Type) == Cst(etype(Hardware_Test,0,5));Type(Empty_Hardware) == Cst(etype(Hardware_Test,0,5));Type(Network_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Software_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Hardware_Compatibility) == Cst(etype(Compatibility_Test,0,2));Type(Patchfile_error) == Cst(etype(Quality_Test,0,0));Type(Invalid) == Cst(etype(Result,0,1));Type(Valid) == Cst(etype(Result,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Diagnostic_Server_Test_i)) == (Type(Language) == Mvv(etype(Deveop_Language,?,?));Type(Standard) == Mvv(etype(Coding_Standard,?,?));Type(Sourcecode_Test_Result) == Mvv(etype(Result,?,?));Type(Patchfile_Status) == Mvv(etype(Patchfile_Format,?,?));Type(Patchfile_Execution_Result) == Mvv(etype(Quality_Test,?,?));Type(Qulity_Test_Result) == Mvv(etype(Result,?,?));Type(Hardware_Compatibility_Test) == Mvv(etype(Hardware_Test,?,?));Type(Software_Compatibility_Test) == Mvv(etype(Software_Test,?,?));Type(Network_Compatibility_Test) == Mvv(etype(Network_Test,?,?));Type(Hardware_Test_Result) == Mvv(etype(Result,?,?));Type(Software_Test_Result) == Mvv(etype(Result,?,?));Type(Network_Test_Result) == Mvv(etype(Result,?,?));Type(Compatibility_Test_Result) == Mvv(etype(Result,?,?)))
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
  List_Local_Operations(Implementation(Diagnostic_Server_Test_i))==(?)
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
  TypingPredicate(Implementation(Diagnostic_Server_Test_i))==(Compatibility_Test_Result: Result & Network_Test_Result: Result & Software_Test_Result: Result & Hardware_Test_Result: Result & Network_Compatibility_Test: Network_Test & Software_Compatibility_Test: Software_Test & Hardware_Compatibility_Test: Hardware_Test & Qulity_Test_Result: Result & Patchfile_Execution_Result: Quality_Test & Patchfile_Status: Patchfile_Format & Sourcecode_Test_Result: Result & Standard: Coding_Standard & Language: Deveop_Language)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
