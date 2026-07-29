import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean.FreeSemigroupWord
import HautevilleHouse.FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean.GeneratorsRelations

namespace HautevilleHouse
namespace FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean

inductive ReductionStep {A : Type} : FreeSemigroupWord A → FreeSemigroupWord A → Prop where
  | delete : (w : FreeSemigroupWord A) → ReductionStep w w
  | replace : (r : Relation) → (u v : FreeSemigroupWord A) →
      ReductionStep (u.concat (FreeSemigroupWord.mk r.lhs (by
        intro h; exact r.valid_h (by
          exact h) ) ) v) (u.concat (FreeSemigroupWord.mk r.rhs (by
        intro h; exact r.valid_h (by
          exact h) ) ) v)

def WordEquivalence {A : Type} (w1 w2 : FreeSemigroupWord A) : Prop :=
  Relation.ReflTransGen (ReductionStep (A := A)) w1 w2

theorem word_equivalence_reflexive {A : Type} (w : FreeSemigroupWord A) : WordEquivalence w w :=
  Relation.ReflTransGen.refl

theorem word_equivalence_transitive {A : Type} {w1 w2 w3 : FreeSemigroupWord A} :
  WordEquivalence w1 w2 → WordEquivalence w2 w3 → WordEquivalence w1 w3 :=
  Relation.ReflTransGen.trans

end FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse