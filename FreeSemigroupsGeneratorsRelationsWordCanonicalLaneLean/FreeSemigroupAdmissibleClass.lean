import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure FreeSemigroupObject where
  generatorSet : Type u
  wordProblem : Prop
  groupDefined : Prop
  conclusion : wordProblem

def WitnessClosed (O : FreeSemigroupObject) : Prop :=
  O.wordProblem

structure AdmissibleClass where
  object : FreeSemigroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse