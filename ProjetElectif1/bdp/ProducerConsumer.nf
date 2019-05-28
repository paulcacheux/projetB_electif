Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ProducerConsumer))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ProducerConsumer))==(Machine(ProducerConsumer));
  Level(Machine(ProducerConsumer))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ProducerConsumer)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ProducerConsumer))==(Parameters)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ProducerConsumer))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ProducerConsumer))==(?);
  List_Includes(Machine(ProducerConsumer))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ProducerConsumer))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ProducerConsumer))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ProducerConsumer))==(?);
  Context_List_Variables(Machine(ProducerConsumer))==(?);
  Abstract_List_Variables(Machine(ProducerConsumer))==(?);
  Local_List_Variables(Machine(ProducerConsumer))==(current_state);
  List_Variables(Machine(ProducerConsumer))==(current_state);
  External_List_Variables(Machine(ProducerConsumer))==(current_state)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ProducerConsumer))==(?);
  Abstract_List_VisibleVariables(Machine(ProducerConsumer))==(?);
  External_List_VisibleVariables(Machine(ProducerConsumer))==(?);
  Expanded_List_VisibleVariables(Machine(ProducerConsumer))==(?);
  List_VisibleVariables(Machine(ProducerConsumer))==(?);
  Internal_List_VisibleVariables(Machine(ProducerConsumer))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ProducerConsumer))==(btrue);
  Gluing_List_Invariant(Machine(ProducerConsumer))==(btrue);
  Expanded_List_Invariant(Machine(ProducerConsumer))==(btrue);
  Abstract_List_Invariant(Machine(ProducerConsumer))==(btrue);
  Context_List_Invariant(Machine(ProducerConsumer))==(btrue);
  List_Invariant(Machine(ProducerConsumer))==(current_state: NAT & current_state<=BufferSize)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ProducerConsumer))==(btrue);
  Abstract_List_Assertions(Machine(ProducerConsumer))==(btrue);
  Context_List_Assertions(Machine(ProducerConsumer))==(btrue);
  List_Assertions(Machine(ProducerConsumer))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ProducerConsumer))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ProducerConsumer))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ProducerConsumer))==(current_state:=0);
  Context_List_Initialisation(Machine(ProducerConsumer))==(skip);
  List_Initialisation(Machine(ProducerConsumer))==(current_state:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ProducerConsumer))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(ProducerConsumer),Machine(Parameters))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ProducerConsumer))==(btrue);
  List_Constraints(Machine(ProducerConsumer))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ProducerConsumer))==(readState,produces,consumes);
  List_Operations(Machine(ProducerConsumer))==(readState,produces,consumes)
END
&
THEORY ListInputX IS
  List_Input(Machine(ProducerConsumer),readState)==(?);
  List_Input(Machine(ProducerConsumer),produces)==(?);
  List_Input(Machine(ProducerConsumer),consumes)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ProducerConsumer),readState)==(res);
  List_Output(Machine(ProducerConsumer),produces)==(?);
  List_Output(Machine(ProducerConsumer),consumes)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ProducerConsumer),readState)==(res <-- readState);
  List_Header(Machine(ProducerConsumer),produces)==(produces);
  List_Header(Machine(ProducerConsumer),consumes)==(consumes)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ProducerConsumer),readState)==(btrue);
  List_Precondition(Machine(ProducerConsumer),produces)==(current_state<BufferSize);
  List_Precondition(Machine(ProducerConsumer),consumes)==(current_state>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ProducerConsumer),consumes)==(current_state>0 | current_state:=current_state-1);
  Expanded_List_Substitution(Machine(ProducerConsumer),produces)==(current_state<BufferSize | current_state:=current_state+1);
  Expanded_List_Substitution(Machine(ProducerConsumer),readState)==(btrue | res:=current_state);
  List_Substitution(Machine(ProducerConsumer),readState)==(res:=current_state);
  List_Substitution(Machine(ProducerConsumer),produces)==(current_state:=current_state+1);
  List_Substitution(Machine(ProducerConsumer),consumes)==(current_state:=current_state-1)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ProducerConsumer))==(?);
  Inherited_List_Constants(Machine(ProducerConsumer))==(?);
  List_Constants(Machine(ProducerConsumer))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(ProducerConsumer))==(?);
  Context_List_Defered(Machine(ProducerConsumer))==(?);
  Context_List_Sets(Machine(ProducerConsumer))==(?);
  List_Valuable_Sets(Machine(ProducerConsumer))==(?);
  Inherited_List_Enumerated(Machine(ProducerConsumer))==(?);
  Inherited_List_Defered(Machine(ProducerConsumer))==(?);
  Inherited_List_Sets(Machine(ProducerConsumer))==(?);
  List_Enumerated(Machine(ProducerConsumer))==(?);
  List_Defered(Machine(ProducerConsumer))==(?);
  List_Sets(Machine(ProducerConsumer))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ProducerConsumer))==(?);
  Expanded_List_HiddenConstants(Machine(ProducerConsumer))==(?);
  List_HiddenConstants(Machine(ProducerConsumer))==(?);
  External_List_HiddenConstants(Machine(ProducerConsumer))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ProducerConsumer))==(btrue);
  Context_List_Properties(Machine(ProducerConsumer))==(BufferSize: NAT);
  Inherited_List_Properties(Machine(ProducerConsumer))==(btrue);
  List_Properties(Machine(ProducerConsumer))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(ProducerConsumer),Machine(Parameters))==(?);
  Seen_Context_List_Enumerated(Machine(ProducerConsumer))==(?);
  Seen_Context_List_Invariant(Machine(ProducerConsumer))==(btrue);
  Seen_Context_List_Assertions(Machine(ProducerConsumer))==(btrue);
  Seen_Context_List_Properties(Machine(ProducerConsumer))==(btrue);
  Seen_List_Constraints(Machine(ProducerConsumer))==(btrue);
  Seen_List_Operations(Machine(ProducerConsumer),Machine(Parameters))==(?);
  Seen_Expanded_List_Invariant(Machine(ProducerConsumer),Machine(Parameters))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ProducerConsumer),readState)==(?);
  List_ANY_Var(Machine(ProducerConsumer),produces)==(?);
  List_ANY_Var(Machine(ProducerConsumer),consumes)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ProducerConsumer)) == (? | ? | current_state | ? | readState,produces,consumes | ? | seen(Machine(Parameters)) | ? | ProducerConsumer);
  List_Of_HiddenCst_Ids(Machine(ProducerConsumer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ProducerConsumer)) == (?);
  List_Of_VisibleVar_Ids(Machine(ProducerConsumer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ProducerConsumer)) == (?: ?);
  List_Of_Ids(Machine(Parameters)) == (BufferSize | ? | ? | ? | ? | ? | ? | ? | Parameters);
  List_Of_HiddenCst_Ids(Machine(Parameters)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Parameters)) == (BufferSize);
  List_Of_VisibleVar_Ids(Machine(Parameters)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Parameters)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(ProducerConsumer)) == (Type(current_state) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ProducerConsumer)) == (Type(consumes) == Cst(No_type,No_type);Type(produces) == Cst(No_type,No_type);Type(readState) == Cst(btype(INTEGER,?,?),No_type));
  Observers(Machine(ProducerConsumer)) == (Type(readState) == Cst(btype(INTEGER,?,?),No_type))
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
