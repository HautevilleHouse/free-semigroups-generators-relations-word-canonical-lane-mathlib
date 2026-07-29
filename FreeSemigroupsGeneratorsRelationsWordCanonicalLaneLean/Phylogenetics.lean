import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure PhylogeneticTree where
  nodes : Type
  edges : List (nodes × nodes)
  branchLengths : nodes → nodes → ℝ
  root : nodes

structure PhylogeneticsPackage where
  tree : PhylogeneticTree
  substitutionModel : Prop
  likelihood : Prop
  bootstrapSupport : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeClosed : P.tree
  substitutionModelClosed : P.substitutionModel
  likelihoodClosed : P.likelihood
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.tree ∧ P.substitutionModel ∧ P.likelihood ∧ P.bootstrapSupport

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P :=
  And.intro E.treeClosed (And.intro E.substitutionModelClosed (And.intro E.likelihoodClosed E.bootstrapSupportClosed))

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse