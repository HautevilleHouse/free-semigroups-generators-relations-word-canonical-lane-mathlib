import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean.FreeSemigroupPackage
import HautevilleHouse.FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean.GeneratorPackage

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure RelationPackage {A : Type} {F : FreeSemigroupPackage A} (G : GeneratorPackage F) where
  relationPairs : List (F.word × F.word)
  congruenceGenerated : F.word → F.word → Prop
  equivalenceRelation : Prop
  closedUnderConcatenation : Prop

structure RelationEvidence {A : Type} {F : FreeSemigroupPackage A} {G : GeneratorPackage F} (R : RelationPackage G) where
  equivalenceRelationClosed : R.equivalenceRelation
  closedUnderConcatenationClosed : R.closedUnderConcatenation

def RelationClosed {A : Type} {F : FreeSemigroupPackage A} {G : GeneratorPackage F} (R : RelationPackage G) : Prop :=
  R.equivalenceRelation ∧ R.closedUnderConcatenation

theorem relation_closed_from_evidence {A : Type} {F : FreeSemigroupPackage A} {G : GeneratorPackage F} (R : RelationPackage G) (E : RelationEvidence R) :
    RelationClosed R := by
  exact And.intro E.equivalenceRelationClosed E.closedUnderConcatenationClosed

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse
