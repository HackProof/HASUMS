Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Storage))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Storage))==(Machine(Storage));
  Level(Machine(Storage))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Storage)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Storage))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Storage))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Storage))==(?);
  List_Includes(Machine(Storage))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Storage))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Storage))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Storage))==(?);
  Context_List_Variables(Machine(Storage))==(?);
  Abstract_List_Variables(Machine(Storage))==(?);
  Local_List_Variables(Machine(Storage))==(?);
  List_Variables(Machine(Storage))==(?);
  External_List_Variables(Machine(Storage))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Storage))==(?);
  Abstract_List_VisibleVariables(Machine(Storage))==(?);
  External_List_VisibleVariables(Machine(Storage))==(?);
  Expanded_List_VisibleVariables(Machine(Storage))==(?);
  List_VisibleVariables(Machine(Storage))==(Subject_Entity,Update_Request_Result,Send_Target,Data_Operation,Data_Status,Stored_Capacity,Tag,Save_Result,File_Type,Version,Storage_Capacity_Criteria,Storage_Capacity);
  Internal_List_VisibleVariables(Machine(Storage))==(Subject_Entity,Update_Request_Result,Send_Target,Data_Operation,Data_Status,Stored_Capacity,Tag,Save_Result,File_Type,Version,Storage_Capacity_Criteria,Storage_Capacity)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Storage))==(btrue);
  Gluing_List_Invariant(Machine(Storage))==(btrue);
  Expanded_List_Invariant(Machine(Storage))==(btrue);
  Abstract_List_Invariant(Machine(Storage))==(btrue);
  Context_List_Invariant(Machine(Storage))==(btrue);
  List_Invariant(Machine(Storage))==(Storage_Capacity: INT & Storage_Capacity_Criteria: INT & Version: INT & File_Type: Data_Format & Save_Result: Store_Result & Tag: Storage_Response_Tag & Stored_Capacity: INT & Data_Status: File_Status & Data_Operation: Operation & Send_Target: Target & Update_Request_Result: Update_Response & Subject_Entity: Subject)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Storage))==(btrue);
  Abstract_List_Assertions(Machine(Storage))==(btrue);
  Context_List_Assertions(Machine(Storage))==(btrue);
  List_Assertions(Machine(Storage))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Storage))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Storage))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Storage))==(@(Storage_Capacity$0).(Storage_Capacity$0: INT ==> Storage_Capacity:=Storage_Capacity$0) || @(Storage_Capacity_Criteria$0).(Storage_Capacity_Criteria$0: INT ==> Storage_Capacity_Criteria:=Storage_Capacity_Criteria$0) || @(Version$0).(Version$0: INT ==> Version:=Version$0) || @(File_Type$0).(File_Type$0: {} ==> File_Type:=File_Type$0) || @(Save_Result$0).(Save_Result$0: {} ==> Save_Result:=Save_Result$0) || @(Tag$0).(Tag$0: {} ==> Tag:=Tag$0) || @(Stored_Capacity$0).(Stored_Capacity$0: INT ==> Stored_Capacity:=Stored_Capacity$0) || @(Data_Status$0).(Data_Status$0: {} ==> Data_Status:=Data_Status$0) || @(Data_Operation$0).(Data_Operation$0: {} ==> Data_Operation:=Data_Operation$0) || @(Send_Target$0).(Send_Target$0: {} ==> Send_Target:=Send_Target$0) || @(Update_Request_Result$0).(Update_Request_Result$0: {} ==> Update_Request_Result:=Update_Request_Result$0) || @(Subject_Entity$0).(Subject_Entity$0: {} ==> Subject_Entity:=Subject_Entity$0));
  Context_List_Initialisation(Machine(Storage))==(skip);
  List_Initialisation(Machine(Storage))==(Storage_Capacity:: INT || Storage_Capacity_Criteria:: INT || Version:: INT || File_Type:: {} || Save_Result:: {} || Tag:: {} || Stored_Capacity:: INT || Data_Status:: {} || Data_Operation:: {} || Send_Target:: {} || Update_Request_Result:: {} || Subject_Entity:: {})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Storage))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Storage))==(btrue);
  List_Constraints(Machine(Storage))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Storage))==(capacity_check,version_check,patchfile_installation,patchfile_backup,patchfile_recovery,configuration_management);
  List_Operations(Machine(Storage))==(capacity_check,version_check,patchfile_installation,patchfile_backup,patchfile_recovery,configuration_management)
END
&
THEORY ListInputX IS
  List_Input(Machine(Storage),capacity_check)==(File_Size);
  List_Input(Machine(Storage),version_check)==(Vehicle_Patchfile_Version,Patchfile_Version);
  List_Input(Machine(Storage),patchfile_installation)==(?);
  List_Input(Machine(Storage),patchfile_backup)==(?);
  List_Input(Machine(Storage),patchfile_recovery)==(?);
  List_Input(Machine(Storage),configuration_management)==(Current_Item_Version,Latest_Item_Version)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Storage),capacity_check)==(?);
  List_Output(Machine(Storage),version_check)==(?);
  List_Output(Machine(Storage),patchfile_installation)==(?);
  List_Output(Machine(Storage),patchfile_backup)==(?);
  List_Output(Machine(Storage),patchfile_recovery)==(?);
  List_Output(Machine(Storage),configuration_management)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Storage),capacity_check)==(capacity_check(File_Size));
  List_Header(Machine(Storage),version_check)==(version_check(Vehicle_Patchfile_Version,Patchfile_Version));
  List_Header(Machine(Storage),patchfile_installation)==(patchfile_installation);
  List_Header(Machine(Storage),patchfile_backup)==(patchfile_backup);
  List_Header(Machine(Storage),patchfile_recovery)==(patchfile_recovery);
  List_Header(Machine(Storage),configuration_management)==(configuration_management(Current_Item_Version,Latest_Item_Version))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Storage),capacity_check)==(File_Size: NAT);
  List_Precondition(Machine(Storage),version_check)==(Vehicle_Patchfile_Version: NAT & Patchfile_Version: NAT & Vehicle_Patchfile_Version>Patchfile_Version);
  List_Precondition(Machine(Storage),patchfile_installation)==(btrue);
  List_Precondition(Machine(Storage),patchfile_backup)==(btrue);
  List_Precondition(Machine(Storage),patchfile_recovery)==(btrue);
  List_Precondition(Machine(Storage),configuration_management)==(Current_Item_Version: NAT & Latest_Item_Version: NAT & Current_Item_Version<Latest_Item_Version)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Storage),configuration_management)==(Current_Item_Version: NAT & Latest_Item_Version: NAT & Current_Item_Version<Latest_Item_Version | Data_Operation:=Transfer);
  Expanded_List_Substitution(Machine(Storage),patchfile_recovery)==(btrue | skip);
  Expanded_List_Substitution(Machine(Storage),patchfile_backup)==(btrue | skip);
  Expanded_List_Substitution(Machine(Storage),patchfile_installation)==(btrue | skip);
  Expanded_List_Substitution(Machine(Storage),version_check)==(Vehicle_Patchfile_Version: NAT & Patchfile_Version: NAT & Vehicle_Patchfile_Version>Patchfile_Version | Send_Target:=Empty_Target);
  Expanded_List_Substitution(Machine(Storage),capacity_check)==(File_Size: NAT | Save_Result:=Not_Save);
  List_Substitution(Machine(Storage),capacity_check)==(Save_Result:=Not_Save);
  List_Substitution(Machine(Storage),version_check)==(Send_Target:=Empty_Target);
  List_Substitution(Machine(Storage),patchfile_installation)==(skip);
  List_Substitution(Machine(Storage),patchfile_backup)==(skip);
  List_Substitution(Machine(Storage),patchfile_recovery)==(skip);
  List_Substitution(Machine(Storage),configuration_management)==(Data_Operation:=Transfer)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Storage))==(?);
  Inherited_List_Constants(Machine(Storage))==(?);
  List_Constants(Machine(Storage))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Storage),Update_Response)==({Update_Required,Update_Unrequired});
  Context_List_Enumerated(Machine(Storage))==(?);
  Context_List_Defered(Machine(Storage))==(?);
  Context_List_Sets(Machine(Storage))==(?);
  List_Valuable_Sets(Machine(Storage))==(?);
  Inherited_List_Enumerated(Machine(Storage))==(?);
  Inherited_List_Defered(Machine(Storage))==(?);
  Inherited_List_Sets(Machine(Storage))==(?);
  List_Enumerated(Machine(Storage))==(Update_Response,Store_Result,File_Tag,Data_Format,File_Status,Storage_Response_Tag,Operation,Target,Subject);
  List_Defered(Machine(Storage))==(?);
  List_Sets(Machine(Storage))==(Update_Response,Store_Result,File_Tag,Data_Format,File_Status,Storage_Response_Tag,Operation,Target,Subject);
  Set_Definition(Machine(Storage),Store_Result)==({Save,Not_Save});
  Set_Definition(Machine(Storage),File_Tag)==({Latest_File,Current_File});
  Set_Definition(Machine(Storage),Data_Format)==({Empty_Data,Encrypted_Binary,Binary});
  Set_Definition(Machine(Storage),File_Status)==({Empty_File,Encrypted_Patchfile,Patchfile,Sourcecode});
  Set_Definition(Machine(Storage),Storage_Response_Tag)==({Normal_State,Alarm,Overwrite});
  Set_Definition(Machine(Storage),Operation)==({None,Send,Install,Backup,Recovery,Transfer});
  Set_Definition(Machine(Storage),Target)==({Empty_Target,ECU,Secondary_ECU});
  Set_Definition(Machine(Storage),Subject)==({Noone,OEM_TeamLeader})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Storage))==(?);
  Expanded_List_HiddenConstants(Machine(Storage))==(?);
  List_HiddenConstants(Machine(Storage))==(?);
  External_List_HiddenConstants(Machine(Storage))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Storage))==(btrue);
  Context_List_Properties(Machine(Storage))==(btrue);
  Inherited_List_Properties(Machine(Storage))==(btrue);
  List_Properties(Machine(Storage))==(Update_Response: FIN(INTEGER) & not(Update_Response = {}) & Store_Result: FIN(INTEGER) & not(Store_Result = {}) & File_Tag: FIN(INTEGER) & not(File_Tag = {}) & Data_Format: FIN(INTEGER) & not(Data_Format = {}) & File_Status: FIN(INTEGER) & not(File_Status = {}) & Storage_Response_Tag: FIN(INTEGER) & not(Storage_Response_Tag = {}) & Operation: FIN(INTEGER) & not(Operation = {}) & Target: FIN(INTEGER) & not(Target = {}) & Subject: FIN(INTEGER) & not(Subject = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Storage),capacity_check)==(?);
  List_ANY_Var(Machine(Storage),version_check)==(?);
  List_ANY_Var(Machine(Storage),patchfile_installation)==(?);
  List_ANY_Var(Machine(Storage),patchfile_backup)==(?);
  List_ANY_Var(Machine(Storage),patchfile_recovery)==(?);
  List_ANY_Var(Machine(Storage),configuration_management)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Storage)) == (Update_Response,Store_Result,File_Tag,Data_Format,File_Status,Storage_Response_Tag,Operation,Target,Subject,Update_Required,Update_Unrequired,Save,Not_Save,Latest_File,Current_File,Empty_Data,Encrypted_Binary,Binary,Empty_File,Encrypted_Patchfile,Patchfile,Sourcecode,Normal_State,Alarm,Overwrite,None,Send,Install,Backup,Recovery,Transfer,Empty_Target,ECU,Secondary_ECU,Noone,OEM_TeamLeader | ? | ? | ? | capacity_check,version_check,patchfile_installation,patchfile_backup,patchfile_recovery,configuration_management | ? | ? | ? | Storage);
  List_Of_HiddenCst_Ids(Machine(Storage)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Storage)) == (?);
  List_Of_VisibleVar_Ids(Machine(Storage)) == (Subject_Entity,Update_Request_Result,Send_Target,Data_Operation,Data_Status,Stored_Capacity,Tag,Save_Result,File_Type,Version,Storage_Capacity_Criteria,Storage_Capacity | ?);
  List_Of_Ids_SeenBNU(Machine(Storage)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Storage)) == (Type(Update_Response) == Cst(SetOf(etype(Update_Response,0,1)));Type(Store_Result) == Cst(SetOf(etype(Store_Result,0,1)));Type(File_Tag) == Cst(SetOf(etype(File_Tag,0,1)));Type(Data_Format) == Cst(SetOf(etype(Data_Format,0,2)));Type(File_Status) == Cst(SetOf(etype(File_Status,0,3)));Type(Storage_Response_Tag) == Cst(SetOf(etype(Storage_Response_Tag,0,2)));Type(Operation) == Cst(SetOf(etype(Operation,0,5)));Type(Target) == Cst(SetOf(etype(Target,0,2)));Type(Subject) == Cst(SetOf(etype(Subject,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Storage)) == (Type(Update_Required) == Cst(etype(Update_Response,0,1));Type(Update_Unrequired) == Cst(etype(Update_Response,0,1));Type(Save) == Cst(etype(Store_Result,0,1));Type(Not_Save) == Cst(etype(Store_Result,0,1));Type(Latest_File) == Cst(etype(File_Tag,0,1));Type(Current_File) == Cst(etype(File_Tag,0,1));Type(Empty_Data) == Cst(etype(Data_Format,0,2));Type(Encrypted_Binary) == Cst(etype(Data_Format,0,2));Type(Binary) == Cst(etype(Data_Format,0,2));Type(Empty_File) == Cst(etype(File_Status,0,3));Type(Encrypted_Patchfile) == Cst(etype(File_Status,0,3));Type(Patchfile) == Cst(etype(File_Status,0,3));Type(Sourcecode) == Cst(etype(File_Status,0,3));Type(Normal_State) == Cst(etype(Storage_Response_Tag,0,2));Type(Alarm) == Cst(etype(Storage_Response_Tag,0,2));Type(Overwrite) == Cst(etype(Storage_Response_Tag,0,2));Type(None) == Cst(etype(Operation,0,5));Type(Send) == Cst(etype(Operation,0,5));Type(Install) == Cst(etype(Operation,0,5));Type(Backup) == Cst(etype(Operation,0,5));Type(Recovery) == Cst(etype(Operation,0,5));Type(Transfer) == Cst(etype(Operation,0,5));Type(Empty_Target) == Cst(etype(Target,0,2));Type(ECU) == Cst(etype(Target,0,2));Type(Secondary_ECU) == Cst(etype(Target,0,2));Type(Noone) == Cst(etype(Subject,0,1));Type(OEM_TeamLeader) == Cst(etype(Subject,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(Storage)) == (Type(Subject_Entity) == Mvv(etype(Subject,?,?));Type(Update_Request_Result) == Mvv(etype(Update_Response,?,?));Type(Send_Target) == Mvv(etype(Target,?,?));Type(Data_Operation) == Mvv(etype(Operation,?,?));Type(Data_Status) == Mvv(etype(File_Status,?,?));Type(Stored_Capacity) == Mvv(btype(INTEGER,?,?));Type(Tag) == Mvv(etype(Storage_Response_Tag,?,?));Type(Save_Result) == Mvv(etype(Store_Result,?,?));Type(File_Type) == Mvv(etype(Data_Format,?,?));Type(Version) == Mvv(btype(INTEGER,?,?));Type(Storage_Capacity_Criteria) == Mvv(btype(INTEGER,?,?));Type(Storage_Capacity) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Storage)) == (Type(configuration_management) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(patchfile_recovery) == Cst(No_type,No_type);Type(patchfile_backup) == Cst(No_type,No_type);Type(patchfile_installation) == Cst(No_type,No_type);Type(version_check) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(capacity_check) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Storage)) == (Type(patchfile_recovery) == Cst(No_type,No_type);Type(patchfile_backup) == Cst(No_type,No_type);Type(patchfile_installation) == Cst(No_type,No_type))
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
