Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Update_Server_Capacity_Check_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Update_Server_Capacity_Check_i))==(Machine(Storage));
  Level(Implementation(Update_Server_Capacity_Check_i))==(1);
  Upper_Level(Implementation(Update_Server_Capacity_Check_i))==(Machine(Storage))
END
&
THEORY LoadedStructureX IS
  Implementation(Update_Server_Capacity_Check_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Update_Server_Capacity_Check_i))==(?);
  Inherited_List_Includes(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Update_Server_Capacity_Check_i))==(?);
  Context_List_Variables(Implementation(Update_Server_Capacity_Check_i))==(?);
  Abstract_List_Variables(Implementation(Update_Server_Capacity_Check_i))==(?);
  Local_List_Variables(Implementation(Update_Server_Capacity_Check_i))==(?);
  List_Variables(Implementation(Update_Server_Capacity_Check_i))==(?);
  External_List_Variables(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Update_Server_Capacity_Check_i))==(Subject_Entity,Update_Request_Result,Send_Target,Data_Operation,Data_Status,Stored_Capacity,Tag,Save_Result,File_Type,Version,Storage_Capacity_Criteria,Storage_Capacity);
  Abstract_List_VisibleVariables(Implementation(Update_Server_Capacity_Check_i))==(Subject_Entity,Update_Request_Result,Send_Target,Data_Operation,Data_Status,Stored_Capacity,Tag,Save_Result,File_Type,Version,Storage_Capacity_Criteria,Storage_Capacity);
  External_List_VisibleVariables(Implementation(Update_Server_Capacity_Check_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Update_Server_Capacity_Check_i))==(?);
  List_VisibleVariables(Implementation(Update_Server_Capacity_Check_i))==(?);
  Internal_List_VisibleVariables(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  Expanded_List_Invariant(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  Abstract_List_Invariant(Implementation(Update_Server_Capacity_Check_i))==(Storage_Capacity: INT & Storage_Capacity_Criteria: INT & Version: INT & File_Type: Data_Format & Save_Result: Store_Result & Tag: Storage_Response_Tag & Stored_Capacity: INT & Data_Status: File_Status & Data_Operation: Operation & Send_Target: Target & Update_Request_Result: Update_Response & Subject_Entity: Subject);
  Context_List_Invariant(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  List_Invariant(Implementation(Update_Server_Capacity_Check_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  Abstract_List_Assertions(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  Context_List_Assertions(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  List_Assertions(Implementation(Update_Server_Capacity_Check_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Update_Server_Capacity_Check_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Update_Server_Capacity_Check_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Update_Server_Capacity_Check_i))==((100: INT | Storage_Capacity:=100);(85: INT | Storage_Capacity_Criteria:=85);(0: INT | Version:=0);File_Type:=Empty_Data;Save_Result:=Not_Save;Tag:=Normal_State;(0: INT | Stored_Capacity:=0);Data_Status:=Empty_File;Data_Operation:=None;Send_Target:=Empty_Target;Update_Request_Result:=Update_Unrequired;Subject_Entity:=Noone);
  Context_List_Initialisation(Implementation(Update_Server_Capacity_Check_i))==(skip);
  List_Initialisation(Implementation(Update_Server_Capacity_Check_i))==(Storage_Capacity:=100;Storage_Capacity_Criteria:=85;Version:=0;File_Type:=Empty_Data;Save_Result:=Not_Save;Tag:=Normal_State;Stored_Capacity:=0;Data_Status:=Empty_File;Data_Operation:=None;Send_Target:=Empty_Target;Update_Request_Result:=Update_Unrequired;Subject_Entity:=Noone)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  List_Context_Constraints(Implementation(Update_Server_Capacity_Check_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Update_Server_Capacity_Check_i))==(capacity_check,version_check,patchfile_installation,patchfile_backup,patchfile_recovery,configuration_management);
  List_Operations(Implementation(Update_Server_Capacity_Check_i))==(capacity_check,version_check,patchfile_installation,patchfile_backup,patchfile_recovery,configuration_management)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Update_Server_Capacity_Check_i),capacity_check)==(File_Size);
  List_Input(Implementation(Update_Server_Capacity_Check_i),version_check)==(Vehicle_Patchfile_Version,Patchfile_Version);
  List_Input(Implementation(Update_Server_Capacity_Check_i),patchfile_installation)==(?);
  List_Input(Implementation(Update_Server_Capacity_Check_i),patchfile_backup)==(?);
  List_Input(Implementation(Update_Server_Capacity_Check_i),patchfile_recovery)==(?);
  List_Input(Implementation(Update_Server_Capacity_Check_i),configuration_management)==(Current_Item_Version,Latest_Item_Version)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Update_Server_Capacity_Check_i),capacity_check)==(?);
  List_Output(Implementation(Update_Server_Capacity_Check_i),version_check)==(?);
  List_Output(Implementation(Update_Server_Capacity_Check_i),patchfile_installation)==(?);
  List_Output(Implementation(Update_Server_Capacity_Check_i),patchfile_backup)==(?);
  List_Output(Implementation(Update_Server_Capacity_Check_i),patchfile_recovery)==(?);
  List_Output(Implementation(Update_Server_Capacity_Check_i),configuration_management)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Update_Server_Capacity_Check_i),capacity_check)==(capacity_check(File_Size));
  List_Header(Implementation(Update_Server_Capacity_Check_i),version_check)==(version_check(Vehicle_Patchfile_Version,Patchfile_Version));
  List_Header(Implementation(Update_Server_Capacity_Check_i),patchfile_installation)==(patchfile_installation);
  List_Header(Implementation(Update_Server_Capacity_Check_i),patchfile_backup)==(patchfile_backup);
  List_Header(Implementation(Update_Server_Capacity_Check_i),patchfile_recovery)==(patchfile_recovery);
  List_Header(Implementation(Update_Server_Capacity_Check_i),configuration_management)==(configuration_management(Current_Item_Version,Latest_Item_Version))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Update_Server_Capacity_Check_i),capacity_check)==(btrue);
  List_Precondition(Implementation(Update_Server_Capacity_Check_i),capacity_check)==(File_Size: NAT);
  Own_Precondition(Implementation(Update_Server_Capacity_Check_i),version_check)==(btrue);
  List_Precondition(Implementation(Update_Server_Capacity_Check_i),version_check)==(Vehicle_Patchfile_Version: NAT & Patchfile_Version: NAT & Vehicle_Patchfile_Version>Patchfile_Version);
  Own_Precondition(Implementation(Update_Server_Capacity_Check_i),patchfile_installation)==(btrue);
  List_Precondition(Implementation(Update_Server_Capacity_Check_i),patchfile_installation)==(btrue);
  Own_Precondition(Implementation(Update_Server_Capacity_Check_i),patchfile_backup)==(btrue);
  List_Precondition(Implementation(Update_Server_Capacity_Check_i),patchfile_backup)==(btrue);
  Own_Precondition(Implementation(Update_Server_Capacity_Check_i),patchfile_recovery)==(btrue);
  List_Precondition(Implementation(Update_Server_Capacity_Check_i),patchfile_recovery)==(btrue);
  Own_Precondition(Implementation(Update_Server_Capacity_Check_i),configuration_management)==(btrue);
  List_Precondition(Implementation(Update_Server_Capacity_Check_i),configuration_management)==(Current_Item_Version: NAT & Latest_Item_Version: NAT & Current_Item_Version<Latest_Item_Version)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Update_Server_Capacity_Check_i),configuration_management)==(Current_Item_Version: NAT & Latest_Item_Version: NAT & Current_Item_Version<Latest_Item_Version | Data_Status = Sourcecode & Data_Status = Patchfile & Current_Item_Version<Latest_Item_Version ==> (Subject_Entity:=OEM_TeamLeader;Data_Operation:=Transfer) [] not(Data_Status = Sourcecode & Data_Status = Patchfile & Current_Item_Version<Latest_Item_Version) ==> Data_Operation:=None);
  Expanded_List_Substitution(Implementation(Update_Server_Capacity_Check_i),patchfile_recovery)==(btrue | skip);
  Expanded_List_Substitution(Implementation(Update_Server_Capacity_Check_i),patchfile_backup)==(btrue | skip);
  Expanded_List_Substitution(Implementation(Update_Server_Capacity_Check_i),patchfile_installation)==(btrue | skip);
  Expanded_List_Substitution(Implementation(Update_Server_Capacity_Check_i),version_check)==(Vehicle_Patchfile_Version: NAT & Patchfile_Version: NAT & Vehicle_Patchfile_Version>Patchfile_Version | skip);
  Expanded_List_Substitution(Implementation(Update_Server_Capacity_Check_i),capacity_check)==(File_Size: NAT | File_Type = Binary & Storage_Capacity = File_Size & Storage_Capacity<Storage_Capacity_Criteria ==> (Save_Result:=Save;Tag:=Normal_State) [] not(File_Type = Binary & Storage_Capacity = File_Size & Storage_Capacity<Storage_Capacity_Criteria) ==> (File_Type = Binary & Stored_Capacity = File_Size & Storage_Capacity>=Storage_Capacity_Criteria & Storage_Capacity<100 ==> (Save_Result:=Not_Save;Tag:=Alarm) [] not(File_Type = Binary & Stored_Capacity = File_Size & Storage_Capacity>=Storage_Capacity_Criteria & Storage_Capacity<100) ==> (File_Type = Binary & Stored_Capacity = File_Size & Storage_Capacity>=100 ==> (Save_Result:=Not_Save;Tag:=Overwrite) [] not(File_Type = Binary & Stored_Capacity = File_Size & Storage_Capacity>=100) ==> Save_Result:=Not_Save)));
  List_Substitution(Implementation(Update_Server_Capacity_Check_i),capacity_check)==(IF File_Type = Binary & Storage_Capacity = File_Size & Storage_Capacity<Storage_Capacity_Criteria THEN Save_Result:=Save;Tag:=Normal_State ELSE IF File_Type = Binary & Stored_Capacity = File_Size & Storage_Capacity>=Storage_Capacity_Criteria & Storage_Capacity<100 THEN Save_Result:=Not_Save;Tag:=Alarm ELSE IF File_Type = Binary & Stored_Capacity = File_Size & Storage_Capacity>=100 THEN Save_Result:=Not_Save;Tag:=Overwrite ELSE Save_Result:=Not_Save END END END);
  List_Substitution(Implementation(Update_Server_Capacity_Check_i),version_check)==(skip);
  List_Substitution(Implementation(Update_Server_Capacity_Check_i),patchfile_installation)==(skip);
  List_Substitution(Implementation(Update_Server_Capacity_Check_i),patchfile_backup)==(skip);
  List_Substitution(Implementation(Update_Server_Capacity_Check_i),patchfile_recovery)==(skip);
  List_Substitution(Implementation(Update_Server_Capacity_Check_i),configuration_management)==(IF Data_Status = Sourcecode & Data_Status = Patchfile & Current_Item_Version<Latest_Item_Version THEN Subject_Entity:=OEM_TeamLeader;Data_Operation:=Transfer ELSE Data_Operation:=None END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Update_Server_Capacity_Check_i))==(?);
  Inherited_List_Constants(Implementation(Update_Server_Capacity_Check_i))==(?);
  List_Constants(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),Subject)==({Noone,OEM_TeamLeader});
  Context_List_Enumerated(Implementation(Update_Server_Capacity_Check_i))==(?);
  Context_List_Defered(Implementation(Update_Server_Capacity_Check_i))==(?);
  Context_List_Sets(Implementation(Update_Server_Capacity_Check_i))==(?);
  List_Own_Enumerated(Implementation(Update_Server_Capacity_Check_i))==(Update_Response,Store_Result,File_Tag,Data_Format,File_Status,Storage_Response_Tag,Operation,Target,Subject);
  List_Valuable_Sets(Implementation(Update_Server_Capacity_Check_i))==(?);
  Inherited_List_Enumerated(Implementation(Update_Server_Capacity_Check_i))==(Update_Response,Store_Result,File_Tag,Data_Format,File_Status,Storage_Response_Tag,Operation,Target,Subject);
  Inherited_List_Defered(Implementation(Update_Server_Capacity_Check_i))==(?);
  Inherited_List_Sets(Implementation(Update_Server_Capacity_Check_i))==(Update_Response,Store_Result,File_Tag,Data_Format,File_Status,Storage_Response_Tag,Operation,Target,Subject);
  List_Enumerated(Implementation(Update_Server_Capacity_Check_i))==(?);
  List_Defered(Implementation(Update_Server_Capacity_Check_i))==(?);
  List_Sets(Implementation(Update_Server_Capacity_Check_i))==(?);
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),Target)==({Empty_Target,ECU,Secondary_ECU});
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),Operation)==({None,Send,Install,Backup,Recovery,Transfer});
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),Storage_Response_Tag)==({Normal_State,Alarm,Overwrite});
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),File_Status)==({Empty_File,Encrypted_Patchfile,Patchfile,Sourcecode});
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),Data_Format)==({Empty_Data,Encrypted_Binary,Binary});
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),File_Tag)==({Latest_File,Current_File});
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),Store_Result)==({Save,Not_Save});
  Set_Definition(Implementation(Update_Server_Capacity_Check_i),Update_Response)==({Update_Required,Update_Unrequired})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Update_Server_Capacity_Check_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Update_Server_Capacity_Check_i))==(?);
  List_HiddenConstants(Implementation(Update_Server_Capacity_Check_i))==(?);
  External_List_HiddenConstants(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Update_Server_Capacity_Check_i))==(Update_Response: FIN(INTEGER) & not(Update_Response = {}) & Store_Result: FIN(INTEGER) & not(Store_Result = {}) & File_Tag: FIN(INTEGER) & not(File_Tag = {}) & Data_Format: FIN(INTEGER) & not(Data_Format = {}) & File_Status: FIN(INTEGER) & not(File_Status = {}) & Storage_Response_Tag: FIN(INTEGER) & not(Storage_Response_Tag = {}) & Operation: FIN(INTEGER) & not(Operation = {}) & Target: FIN(INTEGER) & not(Target = {}) & Subject: FIN(INTEGER) & not(Subject = {}));
  Context_List_Properties(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  Inherited_List_Properties(Implementation(Update_Server_Capacity_Check_i))==(btrue);
  List_Properties(Implementation(Update_Server_Capacity_Check_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Update_Server_Capacity_Check_i))==(aa: aa);
  List_Values(Implementation(Update_Server_Capacity_Check_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Update_Server_Capacity_Check_i))==(Type(configuration_management) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(patchfile_recovery) == Cst(No_type,No_type);Type(patchfile_backup) == Cst(No_type,No_type);Type(patchfile_installation) == Cst(No_type,No_type);Type(version_check) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(capacity_check) == Cst(No_type,btype(INTEGER,?,?)));
  VisibleVariables(Implementation(Update_Server_Capacity_Check_i))==(Type(Subject_Entity) == Mvv(etype(Subject,?,?));Type(Update_Request_Result) == Mvv(etype(Update_Response,?,?));Type(Send_Target) == Mvv(etype(Target,?,?));Type(Data_Operation) == Mvv(etype(Operation,?,?));Type(Data_Status) == Mvv(etype(File_Status,?,?));Type(Stored_Capacity) == Mvv(btype(INTEGER,?,?));Type(Tag) == Mvv(etype(Storage_Response_Tag,?,?));Type(Save_Result) == Mvv(etype(Store_Result,?,?));Type(File_Type) == Mvv(etype(Data_Format,?,?));Type(Version) == Mvv(btype(INTEGER,?,?));Type(Storage_Capacity_Criteria) == Mvv(btype(INTEGER,?,?));Type(Storage_Capacity) == Mvv(btype(INTEGER,?,?)));
  Constants(Implementation(Update_Server_Capacity_Check_i))==(Type(Update_Required) == Cst(etype(Update_Response,0,1));Type(Update_Unrequired) == Cst(etype(Update_Response,0,1));Type(Save) == Cst(etype(Store_Result,0,1));Type(Not_Save) == Cst(etype(Store_Result,0,1));Type(Latest_File) == Cst(etype(File_Tag,0,1));Type(Current_File) == Cst(etype(File_Tag,0,1));Type(Empty_Data) == Cst(etype(Data_Format,0,2));Type(Encrypted_Binary) == Cst(etype(Data_Format,0,2));Type(Binary) == Cst(etype(Data_Format,0,2));Type(Empty_File) == Cst(etype(File_Status,0,3));Type(Encrypted_Patchfile) == Cst(etype(File_Status,0,3));Type(Patchfile) == Cst(etype(File_Status,0,3));Type(Sourcecode) == Cst(etype(File_Status,0,3));Type(Normal_State) == Cst(etype(Storage_Response_Tag,0,2));Type(Alarm) == Cst(etype(Storage_Response_Tag,0,2));Type(Overwrite) == Cst(etype(Storage_Response_Tag,0,2));Type(None) == Cst(etype(Operation,0,5));Type(Send) == Cst(etype(Operation,0,5));Type(Install) == Cst(etype(Operation,0,5));Type(Backup) == Cst(etype(Operation,0,5));Type(Recovery) == Cst(etype(Operation,0,5));Type(Transfer) == Cst(etype(Operation,0,5));Type(Empty_Target) == Cst(etype(Target,0,2));Type(ECU) == Cst(etype(Target,0,2));Type(Secondary_ECU) == Cst(etype(Target,0,2));Type(Noone) == Cst(etype(Subject,0,1));Type(OEM_TeamLeader) == Cst(etype(Subject,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Update_Server_Capacity_Check_i)) == (? | ? | ? | ? | capacity_check,version_check,patchfile_installation,patchfile_backup,patchfile_recovery,configuration_management | ? | ? | ? | Update_Server_Capacity_Check_i);
  List_Of_HiddenCst_Ids(Implementation(Update_Server_Capacity_Check_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Update_Server_Capacity_Check_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Update_Server_Capacity_Check_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Update_Server_Capacity_Check_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Update_Server_Capacity_Check_i)) == (Type(Subject) == Cst(SetOf(etype(Subject,0,1)));Type(Target) == Cst(SetOf(etype(Target,0,2)));Type(Operation) == Cst(SetOf(etype(Operation,0,5)));Type(Storage_Response_Tag) == Cst(SetOf(etype(Storage_Response_Tag,0,2)));Type(File_Status) == Cst(SetOf(etype(File_Status,0,3)));Type(Data_Format) == Cst(SetOf(etype(Data_Format,0,2)));Type(File_Tag) == Cst(SetOf(etype(File_Tag,0,1)));Type(Store_Result) == Cst(SetOf(etype(Store_Result,0,1)));Type(Update_Response) == Cst(SetOf(etype(Update_Response,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Update_Server_Capacity_Check_i)) == (Type(OEM_TeamLeader) == Cst(etype(Subject,0,1));Type(Noone) == Cst(etype(Subject,0,1));Type(Secondary_ECU) == Cst(etype(Target,0,2));Type(ECU) == Cst(etype(Target,0,2));Type(Empty_Target) == Cst(etype(Target,0,2));Type(Transfer) == Cst(etype(Operation,0,5));Type(Recovery) == Cst(etype(Operation,0,5));Type(Backup) == Cst(etype(Operation,0,5));Type(Install) == Cst(etype(Operation,0,5));Type(Send) == Cst(etype(Operation,0,5));Type(None) == Cst(etype(Operation,0,5));Type(Overwrite) == Cst(etype(Storage_Response_Tag,0,2));Type(Alarm) == Cst(etype(Storage_Response_Tag,0,2));Type(Normal_State) == Cst(etype(Storage_Response_Tag,0,2));Type(Sourcecode) == Cst(etype(File_Status,0,3));Type(Patchfile) == Cst(etype(File_Status,0,3));Type(Encrypted_Patchfile) == Cst(etype(File_Status,0,3));Type(Empty_File) == Cst(etype(File_Status,0,3));Type(Binary) == Cst(etype(Data_Format,0,2));Type(Encrypted_Binary) == Cst(etype(Data_Format,0,2));Type(Empty_Data) == Cst(etype(Data_Format,0,2));Type(Current_File) == Cst(etype(File_Tag,0,1));Type(Latest_File) == Cst(etype(File_Tag,0,1));Type(Not_Save) == Cst(etype(Store_Result,0,1));Type(Save) == Cst(etype(Store_Result,0,1));Type(Update_Unrequired) == Cst(etype(Update_Response,0,1));Type(Update_Required) == Cst(etype(Update_Response,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Update_Server_Capacity_Check_i)) == (Type(Storage_Capacity) == Mvv(btype(INTEGER,?,?));Type(Storage_Capacity_Criteria) == Mvv(btype(INTEGER,?,?));Type(Version) == Mvv(btype(INTEGER,?,?));Type(File_Type) == Mvv(etype(Data_Format,?,?));Type(Save_Result) == Mvv(etype(Store_Result,?,?));Type(Tag) == Mvv(etype(Storage_Response_Tag,?,?));Type(Stored_Capacity) == Mvv(btype(INTEGER,?,?));Type(Data_Status) == Mvv(etype(File_Status,?,?));Type(Data_Operation) == Mvv(etype(Operation,?,?));Type(Send_Target) == Mvv(etype(Target,?,?));Type(Update_Request_Result) == Mvv(etype(Update_Response,?,?));Type(Subject_Entity) == Mvv(etype(Subject,?,?)))
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
  List_Local_Operations(Implementation(Update_Server_Capacity_Check_i))==(?)
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
  TypingPredicate(Implementation(Update_Server_Capacity_Check_i))==(Subject_Entity: Subject & Update_Request_Result: Update_Response & Send_Target: Target & Data_Operation: Operation & Data_Status: File_Status & Stored_Capacity: INTEGER & Tag: Storage_Response_Tag & Save_Result: Store_Result & File_Type: Data_Format & Version: INTEGER & Storage_Capacity_Criteria: INTEGER & Storage_Capacity: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
