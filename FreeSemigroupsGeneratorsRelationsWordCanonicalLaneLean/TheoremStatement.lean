import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure FreeSemigroupAdmittedObject where
  alphabet : Type
  generators : List alphabet
  relations : List (List alphabet × List alphabet)
  wordProblem : Prop
  conclusion : wordProblem

def FreeSemigroupWitnessClosed (O : FreeSemigroupAdmittedObject) : Prop :=
  O.wordProblem

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse