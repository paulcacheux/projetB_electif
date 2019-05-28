Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Demo_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Demo_i))==(Machine(Demo));
  Level(Implementation(Demo_i))==(1);
  Upper_Level(Implementation(Demo_i))==(Machine(Demo))
END
&
THEORY LoadedStructureX IS
  Implementation(Demo_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Demo_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Demo_i))==(Pile);
  Inherited_List_Includes(Implementation(Demo_i))==(Pile)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Demo_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Demo_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Demo_i))==(?);
  Context_List_Variables(Implementation(Demo_i))==(?);
  Abstract_List_Variables(Implementation(Demo_i))==(?);
  Local_List_Variables(Implementation(Demo_i))==(?);
  List_Variables(Implementation(Demo_i))==(?);
  External_List_Variables(Implementation(Demo_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Demo_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Demo_i))==(?);
  External_List_VisibleVariables(Implementation(Demo_i))==(ptr,values);
  Expanded_List_VisibleVariables(Implementation(Demo_i))==(ptr,values);
  List_VisibleVariables(Implementation(Demo_i))==(?);
  Internal_List_VisibleVariables(Implementation(Demo_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Demo_i))==(btrue);
  Abstract_List_Invariant(Implementation(Demo_i))==(btrue);
  Expanded_List_Invariant(Implementation(Demo_i))==(values: 0..MaxSize-1 --> NATURAL & ptr: 0..MaxSize);
  Context_List_Invariant(Implementation(Demo_i))==(btrue);
  List_Invariant(Implementation(Demo_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Demo_i))==(btrue);
  Expanded_List_Assertions(Implementation(Demo_i))==(btrue);
  Context_List_Assertions(Implementation(Demo_i))==(btrue);
  List_Assertions(Implementation(Demo_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Demo_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Demo_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Demo_i))==(values,ptr:=(0..MaxSize-1)*{0},0);
  Context_List_Initialisation(Implementation(Demo_i))==(skip);
  List_Initialisation(Implementation(Demo_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Demo_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Demo_i),Machine(Pile))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Demo_i),Machine(Pile))==(btrue);
  List_Constraints(Implementation(Demo_i))==(btrue);
  List_Context_Constraints(Implementation(Demo_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Demo_i))==(demo);
  List_Operations(Implementation(Demo_i))==(demo)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Demo_i),demo)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Demo_i),demo)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Demo_i),demo)==(demo)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Demo_i),demo)==(btrue);
  List_Precondition(Implementation(Demo_i),demo)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Demo_i),demo)==(btrue | skip);
  List_Substitution(Implementation(Demo_i),demo)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Demo_i))==(?);
  Inherited_List_Constants(Implementation(Demo_i))==(MaxSize);
  List_Constants(Implementation(Demo_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Demo_i))==(?);
  Context_List_Defered(Implementation(Demo_i))==(?);
  Context_List_Sets(Implementation(Demo_i))==(?);
  List_Own_Enumerated(Implementation(Demo_i))==(?);
  List_Valuable_Sets(Implementation(Demo_i))==(?);
  Inherited_List_Enumerated(Implementation(Demo_i))==(?);
  Inherited_List_Defered(Implementation(Demo_i))==(?);
  Inherited_List_Sets(Implementation(Demo_i))==(?);
  List_Enumerated(Implementation(Demo_i))==(?);
  List_Defered(Implementation(Demo_i))==(?);
  List_Sets(Implementation(Demo_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Demo_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Demo_i))==(?);
  List_HiddenConstants(Implementation(Demo_i))==(?);
  External_List_HiddenConstants(Implementation(Demo_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Demo_i))==(btrue);
  Context_List_Properties(Implementation(Demo_i))==(btrue);
  Inherited_List_Properties(Implementation(Demo_i))==(MaxSize: NATURAL & MaxSize>0);
  List_Properties(Implementation(Demo_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Demo_i))==(aa: aa);
  List_Values(Implementation(Demo_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Demo_i),Machine(Pile))==(push,pop,peek)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Demo_i))==(Type(demo) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Demo_i),Machine(Pile))==(MaxSize);
  List_Constants_Env(Implementation(Demo_i),Machine(Pile))==(Type(MaxSize) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Demo_i)) == (? | MaxSize | ? | ? | demo | ? | imported(Machine(Pile)) | ? | Demo_i);
  List_Of_HiddenCst_Ids(Implementation(Demo_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Demo_i)) == (MaxSize);
  List_Of_VisibleVar_Ids(Implementation(Demo_i)) == (? | ptr,values);
  List_Of_Ids_SeenBNU(Implementation(Demo_i)) == (?: ?);
  List_Of_Ids(Machine(Pile)) == (MaxSize | ? | ? | ? | push,pop,peek | ? | ? | ? | Pile);
  List_Of_HiddenCst_Ids(Machine(Pile)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Pile)) == (MaxSize);
  List_Of_VisibleVar_Ids(Machine(Pile)) == (ptr,values | ?);
  List_Of_Ids_SeenBNU(Machine(Pile)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Demo_i)) == (Type(MaxSize) == Cst(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Demo_i))==(?)
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
  TypingPredicate(Implementation(Demo_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Demo_i),Machine(Pile))==(?);
  ImportedVisVariablesList(Implementation(Demo_i),Machine(Pile))==(ptr,values)
END
&
THEORY ListLocalOpInvariantX END
)
