import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure FreeSemigroupObject where
  carrier : Type
  multiplication : carrier → carrier → carrier
  associative : ∀ x y z : carrier, multiplication (multiplication x y) z = multiplication x (multiplication y z)

structure FreeSemigroupAdmittedObject where
  obj : FreeSemigroupObject
  generators : Set (FreeSemigroupObject.carrier)
  relations : List (FreeSemigroupObject.carrier × FreeSemigroupObject.carrier)
  wordProblemDecidable : Prop
  conclusion : wordProblemDecidable

def FreeSemigroupWitnessClosed (O : FreeSemigroupAdmittedObject) : Prop :=
  O.wordProblemDecidable

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse
