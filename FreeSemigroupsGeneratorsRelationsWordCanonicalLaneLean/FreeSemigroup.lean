import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure FreeSemigroup where
  generators : Type
  word : List generators

structure FreeSemigroupPackage where
  alphabet : Type
  freeSemigroup : FreeSemigroup
  concatenationClosure : Prop
  concatenationClosureTerm : concatenationClosure

structure FreeSemigroupEvidence (F : FreeSemigroupPackage) where
  concatenationClosureClosed : F.concatenationClosure

def FreeSemigroupClosed (F : FreeSemigroupPackage) : Prop :=
  F.concatenationClosure

theorem free_semigroup_closed_from_evidence (F : FreeSemigroupPackage) (E : FreeSemigroupEvidence F) :
    FreeSemigroupClosed F := by
  exact E.concatenationClosureClosed

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse