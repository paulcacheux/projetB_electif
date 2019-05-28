Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(demoPC_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(demoPC_i))==(Machine(demoPC));
  Level(Implementation(demoPC_i))==(1);
  Upper_Level(Implementation(demoPC_i))==(Machine(demoPC))
END
&
THEORY LoadedStructureX IS
  Implementation(demoPC_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(demoPC_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(demoPC_i))==(Parameters,ProducerConsumer);
  Inherited_List_Includes(Implementation(demoPC_i))==(ProducerConsumer,Parameters)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(demoPC_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(demoPC_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(demoPC_i))==(?);
  Context_List_Variables(Implementation(demoPC_i))==(?);
  Abstract_List_Variables(Implementation(demoPC_i))==(?);
  Local_List_Variables(Implementation(demoPC_i))==(?);
  List_Variables(Implementation(demoPC_i))==(current_state);
  External_List_Variables(Implementation(demoPC_i))==(current_state)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(demoPC_i))==(?);
  Abstract_List_VisibleVariables(Implementation(demoPC_i))==(?);
  External_List_VisibleVariables(Implementation(demoPC_i))==(?);
  Expanded_List_VisibleVariables(Implementation(demoPC_i))==(?);
  List_VisibleVariables(Implementation(demoPC_i))==(?);
  Internal_List_VisibleVariables(Implementation(demoPC_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(demoPC_i))==(btrue);
  Abstract_List_Invariant(Implementation(demoPC_i))==(btrue);
  Expanded_List_Invariant(Implementation(demoPC_i))==(current_state: NAT & current_state<=BufferSize);
  Context_List_Invariant(Implementation(demoPC_i))==(btrue);
  List_Invariant(Implementation(demoPC_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(demoPC_i))==(btrue);
  Expanded_List_Assertions(Implementation(demoPC_i))==(btrue);
  Context_List_Assertions(Implementation(demoPC_i))==(btrue);
  List_Assertions(Implementation(demoPC_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(demoPC_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(demoPC_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(demoPC_i))==(current_state:=0);
  Context_List_Initialisation(Implementation(demoPC_i))==(skip);
  List_Initialisation(Implementation(demoPC_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(demoPC_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(demoPC_i),Machine(Parameters))==(?);
  List_Instanciated_Parameters(Implementation(demoPC_i),Machine(ProducerConsumer))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(demoPC_i),Machine(ProducerConsumer))==(btrue);
  List_Constraints(Implementation(demoPC_i))==(btrue);
  List_Context_Constraints(Implementation(demoPC_i))==(btrue);
  List_Constraints(Implementation(demoPC_i),Machine(Parameters))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(demoPC_i))==(demo);
  List_Operations(Implementation(demoPC_i))==(demo)
END
&
THEORY ListInputX IS
  List_Input(Implementation(demoPC_i),demo)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(demoPC_i),demo)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(demoPC_i),demo)==(demo)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(demoPC_i),demo)==(btrue);
  List_Precondition(Implementation(demoPC_i),demo)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(demoPC_i),demo)==(btrue | @tt.((btrue | tt:=current_state);(tt<BufferSize ==> (current_state<BufferSize | current_state:=current_state+1) [] not(tt<BufferSize) ==> skip);(btrue | tt:=current_state);(tt>0 ==> (current_state>0 | current_state:=current_state-1) [] not(tt>0) ==> skip)));
  List_Substitution(Implementation(demoPC_i),demo)==(VAR tt IN tt <-- readState;IF tt<BufferSize THEN produces END;tt <-- readState;IF tt>0 THEN consumes END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(demoPC_i))==(?);
  Inherited_List_Constants(Implementation(demoPC_i))==(BufferSize);
  List_Constants(Implementation(demoPC_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(demoPC_i))==(?);
  Context_List_Defered(Implementation(demoPC_i))==(?);
  Context_List_Sets(Implementation(demoPC_i))==(?);
  List_Own_Enumerated(Implementation(demoPC_i))==(?);
  List_Valuable_Sets(Implementation(demoPC_i))==(?);
  Inherited_List_Enumerated(Implementation(demoPC_i))==(?);
  Inherited_List_Defered(Implementation(demoPC_i))==(?);
  Inherited_List_Sets(Implementation(demoPC_i))==(?);
  List_Enumerated(Implementation(demoPC_i))==(?);
  List_Defered(Implementation(demoPC_i))==(?);
  List_Sets(Implementation(demoPC_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(demoPC_i))==(?);
  Expanded_List_HiddenConstants(Implementation(demoPC_i))==(?);
  List_HiddenConstants(Implementation(demoPC_i))==(?);
  External_List_HiddenConstants(Implementation(demoPC_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(demoPC_i))==(btrue);
  Context_List_Properties(Implementation(demoPC_i))==(btrue);
  Inherited_List_Properties(Implementation(demoPC_i))==(BufferSize: NAT);
  List_Properties(Implementation(demoPC_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(demoPC_i))==(aa: aa);
  List_Values(Implementation(demoPC_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(demoPC_i),Machine(ProducerConsumer))==(readState,produces,consumes)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(demoPC_i))==(Type(demo) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(demoPC_i),Machine(Parameters))==(BufferSize);
  List_Constants_Env(Implementation(demoPC_i),Machine(Parameters))==(Type(BufferSize) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(demoPC_i)) == (? | BufferSize | ? | current_state | demo | ? | imported(Machine(Parameters)),imported(Machine(ProducerConsumer)) | ? | demoPC_i);
  List_Of_HiddenCst_Ids(Implementation(demoPC_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(demoPC_i)) == (BufferSize);
  List_Of_VisibleVar_Ids(Implementation(demoPC_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(demoPC_i)) == (seen(Machine(Parameters)): (BufferSize | ? | ? | ? | ? | ? | ? | ? | ?));
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
THEORY ConstantsEnvX IS
  Constants(Implementation(demoPC_i)) == (Type(BufferSize) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(demoPC_i),demo, 1) == (Type(tt) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(demoPC_i))==(?)
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
  TypingPredicate(Implementation(demoPC_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(demoPC_i),Machine(Parameters))==(?);
  ImportedVisVariablesList(Implementation(demoPC_i),Machine(Parameters))==(?);
  ImportedVariablesList(Implementation(demoPC_i),Machine(ProducerConsumer))==(current_state);
  ImportedVisVariablesList(Implementation(demoPC_i),Machine(ProducerConsumer))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
