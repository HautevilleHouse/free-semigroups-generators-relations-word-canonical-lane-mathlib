import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure LinkageAnalysisPackage where
  markers : Type
  recombinationFraction : Prop
  linkageEquilibrium : Prop
  lodScore : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  markersClosed : L.markers
  recombinationFractionClosed : L.recombinationFraction
  linkageEquilibriumClosed : L.linkageEquilibrium
  lodScoreClosed : L.lodScore

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.markers ∧ L.recombinationFraction ∧ L.linkageEquilibrium ∧ L.lodScore

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L :=
  And.intro E.markersClosed (And.intro E.recombinationFractionClosed (And.intro E.linkageEquilibriumClosed E.lodScoreClosed))

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse