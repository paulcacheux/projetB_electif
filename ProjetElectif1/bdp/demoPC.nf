Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(demoPC))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(demoPC))==(Machine(demoPC));
  Level(Machine(demoPC))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(demoPC)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(demoPC))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(demoPC))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(demoPC))==(?);
  List_Includes(Machine(demoPC))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(demoPC))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(demoPC))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(demoPC))==(?);
  Context_List_Variables(Machine(demoPC))==(?);
  Abstract_List_Variables(Machine(demoPC))==(?);
  Local_List_Variables(Machine(demoPC))==(?);
  List_Variables(Machine(demoPC))==(?);
  External_List_Variables(Machine(demoPC))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(demoPC))==(?);
  Abstract_List_VisibleVariables(Machine(demoPC))==(?);
  External_List_VisibleVariables(Machine(demoPC))==(?);
  Expanded_List_VisibleVariables(Machine(demoPC))==(?);
  List_VisibleVariables(Machine(demoPC))==(?);
  Internal_List_VisibleVariables(Machine(demoPC))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(demoPC))==(btrue);
  Gluing_List_Invariant(Machine(demoPC))==(btrue);
  Expanded_List_Invariant(Machine(demoPC))==(btrue);
  Abstract_List_Invariant(Machine(demoPC))==(btrue);
  Context_List_Invariant(Machine(demoPC))==(btrue);
  List_Invariant(Machine(demoPC))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(demoPC))==(btrue);
  Abstract_List_Assertions(Machine(demoPC))==(btrue);
  Context_List_Assertions(Machine(demoPC))==(btrue);
  List_Assertions(Machine(demoPC))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(demoPC))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(demoPC))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(demoPC))==(skip);
  Context_List_Initialisation(Machine(demoPC))==(skip);
  List_Initialisation(Machine(demoPC))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(demoPC))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(demoPC))==(btrue);
  List_Constraints(Machine(demoPC))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(demoPC))==(demo);
  List_Operations(Machine(demoPC))==(demo)
END
&
THEORY ListInputX IS
  List_Input(Machine(demoPC),demo)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(demoPC),demo)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(demoPC),demo)==(demo)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(demoPC),demo)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(demoPC),demo)==(btrue | skip);
  List_Substitution(Machine(demoPC),demo)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(demoPC))==(?);
  Inherited_List_Constants(Machine(demoPC))==(?);
  List_Constants(Machine(demoPC))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(demoPC))==(?);
  Context_List_Defered(Machine(demoPC))==(?);
  Context_List_Sets(Machine(demoPC))==(?);
  List_Valuable_Sets(Machine(demoPC))==(?);
  Inherited_List_Enumerated(Machine(demoPC))==(?);
  Inherited_List_Defered(Machine(demoPC))==(?);
  Inherited_List_Sets(Machine(demoPC))==(?);
  List_Enumerated(Machine(demoPC))==(?);
  List_Defered(Machine(demoPC))==(?);
  List_Sets(Machine(demoPC))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(demoPC))==(?);
  Expanded_List_HiddenConstants(Machine(demoPC))==(?);
  List_HiddenConstants(Machine(demoPC))==(?);
  External_List_HiddenConstants(Machine(demoPC))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(demoPC))==(btrue);
  Context_List_Properties(Machine(demoPC))==(btrue);
  Inherited_List_Properties(Machine(demoPC))==(btrue);
  List_Properties(Machine(demoPC))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(demoPC),demo)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(demoPC)) == (? | ? | ? | ? | demo | ? | ? | ? | demoPC);
  List_Of_HiddenCst_Ids(Machine(demoPC)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(demoPC)) == (?);
  List_Of_VisibleVar_Ids(Machine(demoPC)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(demoPC)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(demoPC)) == (Type(demo) == Cst(No_type,No_type));
  Observers(Machine(demoPC)) == (Type(demo) == Cst(No_type,No_type))
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
