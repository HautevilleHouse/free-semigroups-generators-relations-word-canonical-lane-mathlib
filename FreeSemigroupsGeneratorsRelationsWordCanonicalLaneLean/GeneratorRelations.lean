import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure Relation where
  left : List generators
  right : List generators
  generators : Type

structure GeneratorRelationsPackage (F : FreeSemigroupPackage) where
  relations : List Relation
  quotientMonoid : Type
  congruenceClosure : Prop
  congruenceClosureTerm : congruenceClosure

structure GeneratorRelationsEvidence {F : FreeSemigroupPackage} (R : GeneratorRelationsPackage F) where
  congruenceClosureClosed : R.congruenceClosure

def GeneratorRelationsClosed {F : FreeSemigroupPackage} (R : GeneratorRelationsPackage F) : Prop :=
  R.congruenceClosure

theorem generator_relations_closed_from_evidence
    {F : FreeSemigroupPackage} (R : GeneratorRelationsPackage F)
    (E : GeneratorRelationsEvidence R) : GeneratorRelationsClosed R := by
  exact E.congruenceClosureClosed

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse