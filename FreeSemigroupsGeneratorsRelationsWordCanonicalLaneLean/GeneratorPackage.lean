import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean.FreeSemigroupPackage

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure GeneratorPackage {A : Type} (F : FreeSemigroupPackage A) where
  generatorSet : Set A
  generatorMap : generatorSet → F.word
  mapInjective : Prop
  mapSurjectiveUpToGenerators : Prop

structure GeneratorEvidence {A : Type} {F : FreeSemigroupPackage A} (G : GeneratorPackage F) where
  mapInjectiveClosed : G.mapInjective
  mapSurjectiveUpToGeneratorsClosed : G.mapSurjectiveUpToGenerators

def GeneratorClosed {A : Type} {F : FreeSemigroupPackage A} (G : GeneratorPackage F) : Prop :=
  G.mapInjective ∧ G.mapSurjectiveUpToGenerators

theorem generator_closed_from_evidence {A : Type} {F : FreeSemigroupPackage A} (G : GeneratorPackage F) (E : GeneratorEvidence G) :
    GeneratorClosed G := by
  exact And.intro E.mapInjectiveClosed E.mapSurjectiveUpToGeneratorsClosed

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse
