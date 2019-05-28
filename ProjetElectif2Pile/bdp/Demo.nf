Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Demo))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Demo))==(Machine(Demo));
  Level(Machine(Demo))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Demo)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Demo))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Demo))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Demo))==(?);
  List_Includes(Machine(Demo))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Demo))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Demo))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Demo))==(?);
  Context_List_Variables(Machine(Demo))==(?);
  Abstract_List_Variables(Machine(Demo))==(?);
  Local_List_Variables(Machine(Demo))==(?);
  List_Variables(Machine(Demo))==(?);
  External_List_Variables(Machine(Demo))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Demo))==(?);
  Abstract_List_VisibleVariables(Machine(Demo))==(?);
  External_List_VisibleVariables(Machine(Demo))==(?);
  Expanded_List_VisibleVariables(Machine(Demo))==(?);
  List_VisibleVariables(Machine(Demo))==(?);
  Internal_List_VisibleVariables(Machine(Demo))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Demo))==(btrue);
  Gluing_List_Invariant(Machine(Demo))==(btrue);
  Expanded_List_Invariant(Machine(Demo))==(btrue);
  Abstract_List_Invariant(Machine(Demo))==(btrue);
  Context_List_Invariant(Machine(Demo))==(btrue);
  List_Invariant(Machine(Demo))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Demo))==(btrue);
  Abstract_List_Assertions(Machine(Demo))==(btrue);
  Context_List_Assertions(Machine(Demo))==(btrue);
  List_Assertions(Machine(Demo))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Demo))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Demo))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Demo))==(skip);
  Context_List_Initialisation(Machine(Demo))==(skip);
  List_Initialisation(Machine(Demo))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Demo))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Demo))==(btrue);
  List_Constraints(Machine(Demo))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Demo))==(demo);
  List_Operations(Machine(Demo))==(demo)
END
&
THEORY ListInputX IS
  List_Input(Machine(Demo),demo)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Demo),demo)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Demo),demo)==(demo)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Demo),demo)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Demo),demo)==(btrue | skip);
  List_Substitution(Machine(Demo),demo)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Demo))==(?);
  Inherited_List_Constants(Machine(Demo))==(?);
  List_Constants(Machine(Demo))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Demo))==(?);
  Context_List_Defered(Machine(Demo))==(?);
  Context_List_Sets(Machine(Demo))==(?);
  List_Valuable_Sets(Machine(Demo))==(?);
  Inherited_List_Enumerated(Machine(Demo))==(?);
  Inherited_List_Defered(Machine(Demo))==(?);
  Inherited_List_Sets(Machine(Demo))==(?);
  List_Enumerated(Machine(Demo))==(?);
  List_Defered(Machine(Demo))==(?);
  List_Sets(Machine(Demo))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Demo))==(?);
  Expanded_List_HiddenConstants(Machine(Demo))==(?);
  List_HiddenConstants(Machine(Demo))==(?);
  External_List_HiddenConstants(Machine(Demo))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Demo))==(btrue);
  Context_List_Properties(Machine(Demo))==(btrue);
  Inherited_List_Properties(Machine(Demo))==(btrue);
  List_Properties(Machine(Demo))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Demo),demo)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Demo)) == (? | ? | ? | ? | demo | ? | ? | ? | Demo);
  List_Of_HiddenCst_Ids(Machine(Demo)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Demo)) == (?);
  List_Of_VisibleVar_Ids(Machine(Demo)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Demo)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Demo)) == (Type(demo) == Cst(No_type,No_type));
  Observers(Machine(Demo)) == (Type(demo) == Cst(No_type,No_type))
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
