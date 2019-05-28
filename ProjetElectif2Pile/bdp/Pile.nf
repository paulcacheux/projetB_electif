Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Pile))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Pile))==(Machine(Pile));
  Level(Machine(Pile))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Pile)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Pile))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Pile))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Pile))==(?);
  List_Includes(Machine(Pile))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Pile))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Pile))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Pile))==(?);
  Context_List_Variables(Machine(Pile))==(?);
  Abstract_List_Variables(Machine(Pile))==(?);
  Local_List_Variables(Machine(Pile))==(?);
  List_Variables(Machine(Pile))==(?);
  External_List_Variables(Machine(Pile))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Pile))==(?);
  Abstract_List_VisibleVariables(Machine(Pile))==(?);
  External_List_VisibleVariables(Machine(Pile))==(?);
  Expanded_List_VisibleVariables(Machine(Pile))==(?);
  List_VisibleVariables(Machine(Pile))==(ptr,values);
  Internal_List_VisibleVariables(Machine(Pile))==(ptr,values)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Pile))==(btrue);
  Gluing_List_Invariant(Machine(Pile))==(btrue);
  Expanded_List_Invariant(Machine(Pile))==(btrue);
  Abstract_List_Invariant(Machine(Pile))==(btrue);
  Context_List_Invariant(Machine(Pile))==(btrue);
  List_Invariant(Machine(Pile))==(values: 0..MaxSize-1 --> NATURAL & ptr: 0..MaxSize)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Pile))==(btrue);
  Abstract_List_Assertions(Machine(Pile))==(btrue);
  Context_List_Assertions(Machine(Pile))==(btrue);
  List_Assertions(Machine(Pile))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Pile))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Pile))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Pile))==(values,ptr:=(0..MaxSize-1)*{0},0);
  Context_List_Initialisation(Machine(Pile))==(skip);
  List_Initialisation(Machine(Pile))==(values:=(0..MaxSize-1)*{0} || ptr:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Pile))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Pile))==(btrue);
  List_Constraints(Machine(Pile))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Pile))==(push,pop,peek);
  List_Operations(Machine(Pile))==(push,pop,peek)
END
&
THEORY ListInputX IS
  List_Input(Machine(Pile),push)==(value);
  List_Input(Machine(Pile),pop)==(?);
  List_Input(Machine(Pile),peek)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Pile),push)==(?);
  List_Output(Machine(Pile),pop)==(value);
  List_Output(Machine(Pile),peek)==(value)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Pile),push)==(push(value));
  List_Header(Machine(Pile),pop)==(value <-- pop);
  List_Header(Machine(Pile),peek)==(value <-- peek)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Pile),push)==(ptr: 0..MaxSize-1 & value: NATURAL);
  List_Precondition(Machine(Pile),pop)==(ptr>0);
  List_Precondition(Machine(Pile),peek)==(ptr>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Pile),peek)==(ptr>0 | value:=values(ptr-1));
  Expanded_List_Substitution(Machine(Pile),pop)==(ptr>0 | value,ptr:=values(ptr-1),ptr-1);
  Expanded_List_Substitution(Machine(Pile),push)==(ptr: 0..MaxSize-1 & value: NATURAL | values,ptr:=values<+{ptr|->value},ptr+1);
  List_Substitution(Machine(Pile),push)==(values(ptr):=value || ptr:=ptr+1);
  List_Substitution(Machine(Pile),pop)==(value:=values(ptr-1) || ptr:=ptr-1);
  List_Substitution(Machine(Pile),peek)==(value:=values(ptr-1))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Pile))==(MaxSize);
  Inherited_List_Constants(Machine(Pile))==(?);
  List_Constants(Machine(Pile))==(MaxSize)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Pile))==(?);
  Context_List_Defered(Machine(Pile))==(?);
  Context_List_Sets(Machine(Pile))==(?);
  List_Valuable_Sets(Machine(Pile))==(?);
  Inherited_List_Enumerated(Machine(Pile))==(?);
  Inherited_List_Defered(Machine(Pile))==(?);
  Inherited_List_Sets(Machine(Pile))==(?);
  List_Enumerated(Machine(Pile))==(?);
  List_Defered(Machine(Pile))==(?);
  List_Sets(Machine(Pile))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Pile))==(?);
  Expanded_List_HiddenConstants(Machine(Pile))==(?);
  List_HiddenConstants(Machine(Pile))==(?);
  External_List_HiddenConstants(Machine(Pile))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Pile))==(btrue);
  Context_List_Properties(Machine(Pile))==(btrue);
  Inherited_List_Properties(Machine(Pile))==(btrue);
  List_Properties(Machine(Pile))==(MaxSize: NATURAL & MaxSize>0)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Pile),push)==(?);
  List_ANY_Var(Machine(Pile),pop)==(?);
  List_ANY_Var(Machine(Pile),peek)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Pile)) == (MaxSize | ? | ? | ? | push,pop,peek | ? | ? | ? | Pile);
  List_Of_HiddenCst_Ids(Machine(Pile)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Pile)) == (MaxSize);
  List_Of_VisibleVar_Ids(Machine(Pile)) == (ptr,values | ?);
  List_Of_Ids_SeenBNU(Machine(Pile)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Pile)) == (Type(MaxSize) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Machine(Pile)) == (Type(ptr) == Mvv(btype(INTEGER,?,?));Type(values) == Mvv(SetOf(btype(INTEGER,0,MaxSize-1)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Pile)) == (Type(peek) == Cst(btype(INTEGER,?,?),No_type);Type(pop) == Cst(btype(INTEGER,?,?),No_type);Type(push) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Pile)) == (Type(peek) == Cst(btype(INTEGER,?,?),No_type))
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
