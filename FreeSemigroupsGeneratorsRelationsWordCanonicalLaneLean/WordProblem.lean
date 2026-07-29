import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure WordProblemPackage {F : FreeSemigroupPackage} (R : GeneratorRelationsPackage F) where
  wordProblemDecidable : Prop
  wordProblemDecidableTerm : wordProblemDecidable

structure WordProblemEvidence {F : FreeSemigroupPackage} {R : GeneratorRelationsPackage F}
    (W : WordProblemPackage R) where
  wordProblemDecidableClosed : W.wordProblemDecidable

def WordProblemClosed {F : FreeSemigroupPackage} {R : GeneratorRelationsPackage F}
    (W : WordProblemPackage R) : Prop :=
  W.wordProblemDecidable

theorem word_problem_closed_from_evidence
    {F : FreeSemigroupPackage} {R : GeneratorRelationsPackage F}
    (W : WordProblemPackage R) (E : WordProblemEvidence W) : WordProblemClosed W := by
  exact E.wordProblemDecidableClosed

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse