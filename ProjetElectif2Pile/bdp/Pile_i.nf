Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Pile_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Pile_i))==(Machine(Pile));
  Level(Implementation(Pile_i))==(1);
  Upper_Level(Implementation(Pile_i))==(Machine(Pile))
END
&
THEORY LoadedStructureX IS
  Implementation(Pile_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Pile_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Pile_i))==(?);
  Inherited_List_Includes(Implementation(Pile_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Pile_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Pile_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Pile_i))==(?);
  Context_List_Variables(Implementation(Pile_i))==(?);
  Abstract_List_Variables(Implementation(Pile_i))==(?);
  Local_List_Variables(Implementation(Pile_i))==(?);
  List_Variables(Implementation(Pile_i))==(?);
  External_List_Variables(Implementation(Pile_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Pile_i))==(ptr,values);
  Abstract_List_VisibleVariables(Implementation(Pile_i))==(ptr,values);
  External_List_VisibleVariables(Implementation(Pile_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Pile_i))==(?);
  List_VisibleVariables(Implementation(Pile_i))==(?);
  Internal_List_VisibleVariables(Implementation(Pile_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Pile_i))==(btrue);
  Expanded_List_Invariant(Implementation(Pile_i))==(btrue);
  Abstract_List_Invariant(Implementation(Pile_i))==(values: 0..MaxSize-1 --> NATURAL & ptr: 0..MaxSize);
  Context_List_Invariant(Implementation(Pile_i))==(btrue);
  List_Invariant(Implementation(Pile_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Pile_i))==(btrue);
  Abstract_List_Assertions(Implementation(Pile_i))==(btrue);
  Context_List_Assertions(Implementation(Pile_i))==(btrue);
  List_Assertions(Implementation(Pile_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Pile_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Pile_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Pile_i))==((MaxSize-1: INT & MaxSize: INT & 1: INT | values:=(0..MaxSize-1)*{0});(0: INT | ptr:=0));
  Context_List_Initialisation(Implementation(Pile_i))==(skip);
  List_Initialisation(Implementation(Pile_i))==(values:=(0..MaxSize-1)*{0};ptr:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Pile_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Pile_i))==(btrue);
  List_Context_Constraints(Implementation(Pile_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Pile_i))==(push,pop,peek);
  List_Operations(Implementation(Pile_i))==(push,pop,peek)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Pile_i),push)==(value);
  List_Input(Implementation(Pile_i),pop)==(?);
  List_Input(Implementation(Pile_i),peek)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Pile_i),push)==(?);
  List_Output(Implementation(Pile_i),pop)==(value);
  List_Output(Implementation(Pile_i),peek)==(value)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Pile_i),push)==(push(value));
  List_Header(Implementation(Pile_i),pop)==(value <-- pop);
  List_Header(Implementation(Pile_i),peek)==(value <-- peek)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Pile_i),push)==(btrue);
  List_Precondition(Implementation(Pile_i),push)==(ptr: 0..MaxSize-1 & value: NATURAL);
  Own_Precondition(Implementation(Pile_i),pop)==(btrue);
  List_Precondition(Implementation(Pile_i),pop)==(ptr>0);
  Own_Precondition(Implementation(Pile_i),peek)==(btrue);
  List_Precondition(Implementation(Pile_i),peek)==(ptr>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Pile_i),peek)==(ptr>0 & values(ptr-1): INT & ptr-1: INT & ptr: INT & 1: INT & ptr-1: dom(values) | value:=values(ptr-1));
  Expanded_List_Substitution(Implementation(Pile_i),pop)==(ptr>0 | (ptr-1: INT & ptr: INT & 1: INT | ptr:=ptr-1);(values(ptr): INT & ptr: dom(values) | value:=values(ptr)));
  Expanded_List_Substitution(Implementation(Pile_i),push)==(ptr: 0..MaxSize-1 & value: NATURAL | (ptr: dom(values) & value: INT | values:=values<+{ptr|->value});(ptr+1: INT & ptr: INT & 1: INT | ptr:=ptr+1));
  List_Substitution(Implementation(Pile_i),push)==(values(ptr):=value;ptr:=ptr+1);
  List_Substitution(Implementation(Pile_i),pop)==(ptr:=ptr-1;value:=values(ptr));
  List_Substitution(Implementation(Pile_i),peek)==(value:=values(ptr-1))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Pile_i))==(MaxSize);
  Inherited_List_Constants(Implementation(Pile_i))==(MaxSize);
  List_Constants(Implementation(Pile_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Pile_i))==(?);
  Context_List_Defered(Implementation(Pile_i))==(?);
  Context_List_Sets(Implementation(Pile_i))==(?);
  List_Own_Enumerated(Implementation(Pile_i))==(?);
  List_Valuable_Sets(Implementation(Pile_i))==(?);
  Inherited_List_Enumerated(Implementation(Pile_i))==(?);
  Inherited_List_Defered(Implementation(Pile_i))==(?);
  Inherited_List_Sets(Implementation(Pile_i))==(?);
  List_Enumerated(Implementation(Pile_i))==(?);
  List_Defered(Implementation(Pile_i))==(?);
  List_Sets(Implementation(Pile_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Pile_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Pile_i))==(?);
  List_HiddenConstants(Implementation(Pile_i))==(?);
  External_List_HiddenConstants(Implementation(Pile_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Pile_i))==(MaxSize: NATURAL & MaxSize>0);
  Context_List_Properties(Implementation(Pile_i))==(btrue);
  Inherited_List_Properties(Implementation(Pile_i))==(btrue);
  List_Properties(Implementation(Pile_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Pile_i))==(btrue);
  Values_Subs(Implementation(Pile_i))==(MaxSize: 10);
  List_Values(Implementation(Pile_i))==(MaxSize = 10)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Pile_i))==(Type(peek) == Cst(btype(INTEGER,?,?),No_type);Type(pop) == Cst(btype(INTEGER,?,?),No_type);Type(push) == Cst(No_type,btype(INTEGER,?,?)));
  VisibleVariables(Implementation(Pile_i))==(Type(ptr) == Mvv(btype(INTEGER,?,?));Type(values) == Mvv(SetOf(btype(INTEGER,0,MaxSize-1)*btype(INTEGER,?,?))));
  Constants(Implementation(Pile_i))==(Type(MaxSize) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Pile_i)) == (? | ? | ? | ? | push,pop,peek | ? | ? | ? | Pile_i);
  List_Of_HiddenCst_Ids(Implementation(Pile_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Pile_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Pile_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Pile_i)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Pile_i)) == (Type(MaxSize) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Pile_i)) == (Type(values) == Mvv(SetOf(btype(INTEGER,0,MaxSize-1)*btype(INTEGER,?,?)));Type(ptr) == Mvv(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Pile_i))==(?)
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
  TypingPredicate(Implementation(Pile_i))==(ptr: INTEGER & values: POW(INTEGER*INTEGER))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
