import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean.FreeSemigroupWord
import HautevilleHouse.FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean.WordEquivalence

namespace HautevilleHouse
namespace FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean

structure AdmissibleWord (A : Type) where
  word : FreeSemigroupWord A
  presentation : Presentation
  consistent : ∀ (r : Relation), r ∈ presentation.relations →
    WordEquivalence (FreeSemigroupWord.mk r.lhs (by
      exact r.valid_h (by
        exact r.head_in_domain
      )
    )) (FreeSemigroupWord.mk r.rhs (by
      exact r.valid_h (by
        exact r.tail_in_domain
      )
    ))
  closed : Prop
  closedProof : closed

def admissibleWordClosed {A : Type} (aw : AdmissibleWord A) : Prop :=
  aw.closed

theorem bridgeClosedFromAdmissibleWord {A : Type} (aw : AdmissibleWord A) : bridgeClosed (AdmissibleClass.mk aw (by exact aw.closedProof) (by exact And.intro True.intro True.intro) (by
  left; exact aw.closedProof)) :=
by
  exact aw.closedProof

end FreeSemigroupGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse