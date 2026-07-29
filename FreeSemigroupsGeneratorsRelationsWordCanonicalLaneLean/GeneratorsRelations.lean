import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean.FreeSemigroupWord

namespace HautevilleHouse
namespace FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean

structure Generator where
  label : String
  arity : Nat

structure Relation where
  lhs : List Generator
  rhs : List Generator

def Relation.valid (r : Relation) : Prop :=
  r.lhs ≠ [] ∧ r.rhs ≠ []

structure Presentation where
  generators : List Generator
  relations : List Relation
  allGeneratorsListed : ∀ (g : Generator), g ∈ generators
  allRelationsValid : ∀ (r : Relation), r ∈ relations → Relation.valid r

theorem presentation_has_generators (P : Presentation) : P.generators ≠ [] :=
  by
    intro h
    have hgen : ∀ (g : Generator), g ∈ P.generators := P.allGeneratorsListed
    have : Generator.mk "" 0 ∈ P.generators := hgen (Generator.mk "" 0)
    rw [h] at this
    simp at this

end FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse