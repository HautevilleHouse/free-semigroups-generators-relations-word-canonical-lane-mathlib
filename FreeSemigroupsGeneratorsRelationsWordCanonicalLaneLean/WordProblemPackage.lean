import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure WordProblemPackage (O : FreeSemigroupObject) where
  alphabet : Set (FreeSemigroupObject.carrier)
  wordEquality : FreeSemigroupObject.carrier → FreeSemigroupObject.carrier → Prop
  decidableEquality : ∀ w1 w2 : FreeSemigroupObject.carrier, Decidable (wordEquality w1 w2)

structure WordProblemEvidence {O : FreeSemigroupObject} (P : WordProblemPackage O) where
  decidableEqualityClosed : ∀ w1 w2, P.decidableEquality w1 w2

def WordProblemClosed {O : FreeSemigroupObject} (P : WordProblemPackage O) : Prop :=
  ∀ w1 w2, Decidable (P.wordEquality w1 w2)

theorem word_problem_closed_from_evidence {O : FreeSemigroupObject} (P : WordProblemPackage O) (E : WordProblemEvidence P) : WordProblemClosed P := by
  intro w1 w2
  exact E.decidableEqualityClosed w1 w2

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse
