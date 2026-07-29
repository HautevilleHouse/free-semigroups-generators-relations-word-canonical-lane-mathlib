import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure HardyWeinbergPackage where
  population : Type
  alleleFrequencies : population → Prop
  genotypeFrequencies : Prop
  equilibriumCondition : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  alleleFrequenciesClosed : H.alleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.alleleFrequencies ∧ H.genotypeFrequencies ∧ H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H :=
  And.intro E.alleleFrequenciesClosed (And.intro E.genotypeFrequenciesClosed E.equilibriumConditionClosed)

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse