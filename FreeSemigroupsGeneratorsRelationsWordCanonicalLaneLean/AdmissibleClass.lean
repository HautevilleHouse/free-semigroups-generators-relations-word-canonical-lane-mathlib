import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure AdmissibleClass where
  object : FreeSemigroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeSemigroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse
