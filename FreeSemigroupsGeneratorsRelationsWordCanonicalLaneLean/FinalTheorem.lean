import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.someProperty A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedFreeSemigroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_semigroup_endgame (A : AdmissibleClass) :
    ConstrainedFreeSemigroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse