import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure FreeSemigroupPackage (A : Type) where
  alphabet : Type
  alphabetEnum : Alphabet A
  word : Type
  concatenation : word → word → word
  emptyWord : word
  associative : Prop
  identityLeft : Prop
  identityRight : Prop

structure FreeSemigroupEvidence {A : Type} (F : FreeSemigroupPackage A) where
  associativeClosed : F.associative
  identityLeftClosed : F.identityLeft
  identityRightClosed : F.identityRight

def FreeSemigroupClosed {A : Type} (F : FreeSemigroupPackage A) : Prop :=
  F.associative ∧ F.identityLeft ∧ F.identityRight

theorem free_semigroup_closed_from_evidence {A : Type} (F : FreeSemigroupPackage A) (E : FreeSemigroupEvidence F) :
    FreeSemigroupClosed F := by
  exact And.intro E.associativeClosed (And.intro E.identityLeftClosed E.identityRightClosed)

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse
