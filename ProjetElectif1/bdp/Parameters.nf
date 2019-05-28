Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Parameters))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Parameters))==(Machine(Parameters));
  Level(Machine(Parameters))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Parameters)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Parameters))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Parameters))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Parameters))==(?);
  List_Includes(Machine(Parameters))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Parameters))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Parameters))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Parameters))==(?);
  Context_List_Variables(Machine(Parameters))==(?);
  Abstract_List_Variables(Machine(Parameters))==(?);
  Local_List_Variables(Machine(Parameters))==(?);
  List_Variables(Machine(Parameters))==(?);
  External_List_Variables(Machine(Parameters))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Parameters))==(?);
  Abstract_List_VisibleVariables(Machine(Parameters))==(?);
  External_List_VisibleVariables(Machine(Parameters))==(?);
  Expanded_List_VisibleVariables(Machine(Parameters))==(?);
  List_VisibleVariables(Machine(Parameters))==(?);
  Internal_List_VisibleVariables(Machine(Parameters))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Parameters))==(btrue);
  Gluing_List_Invariant(Machine(Parameters))==(btrue);
  Expanded_List_Invariant(Machine(Parameters))==(btrue);
  Abstract_List_Invariant(Machine(Parameters))==(btrue);
  Context_List_Invariant(Machine(Parameters))==(btrue);
  List_Invariant(Machine(Parameters))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Parameters))==(btrue);
  Abstract_List_Assertions(Machine(Parameters))==(btrue);
  Context_List_Assertions(Machine(Parameters))==(btrue);
  List_Assertions(Machine(Parameters))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Parameters))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Parameters))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Parameters))==(skip);
  Context_List_Initialisation(Machine(Parameters))==(skip);
  List_Initialisation(Machine(Parameters))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Parameters))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Parameters))==(btrue);
  List_Constraints(Machine(Parameters))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Parameters))==(?);
  List_Operations(Machine(Parameters))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Parameters))==(BufferSize);
  Inherited_List_Constants(Machine(Parameters))==(?);
  List_Constants(Machine(Parameters))==(BufferSize)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Parameters))==(?);
  Context_List_Defered(Machine(Parameters))==(?);
  Context_List_Sets(Machine(Parameters))==(?);
  List_Valuable_Sets(Machine(Parameters))==(?);
  Inherited_List_Enumerated(Machine(Parameters))==(?);
  Inherited_List_Defered(Machine(Parameters))==(?);
  Inherited_List_Sets(Machine(Parameters))==(?);
  List_Enumerated(Machine(Parameters))==(?);
  List_Defered(Machine(Parameters))==(?);
  List_Sets(Machine(Parameters))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Parameters))==(?);
  Expanded_List_HiddenConstants(Machine(Parameters))==(?);
  List_HiddenConstants(Machine(Parameters))==(?);
  External_List_HiddenConstants(Machine(Parameters))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Parameters))==(btrue);
  Context_List_Properties(Machine(Parameters))==(btrue);
  Inherited_List_Properties(Machine(Parameters))==(btrue);
  List_Properties(Machine(Parameters))==(BufferSize: NAT)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Parameters)) == (BufferSize | ? | ? | ? | ? | ? | ? | ? | Parameters);
  List_Of_HiddenCst_Ids(Machine(Parameters)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Parameters)) == (BufferSize);
  List_Of_VisibleVar_Ids(Machine(Parameters)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Parameters)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Parameters)) == (Type(BufferSize) == Cst(btype(INTEGER,?,?)))
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
