import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : List (List AminoAcid)
  scoringMatrix : Prop
  gapPenalty : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  sequencesClosed : S.sequences
  scoringMatrixClosed : S.scoringMatrix
  gapPenaltyClosed : S.gapPenalty
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.sequences ∧ S.scoringMatrix ∧ S.gapPenalty ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S :=
  And.intro E.sequencesClosed (And.intro E.scoringMatrixClosed (And.intro E.gapPenaltyClosed E.optimalAlignmentClosed))

inductive AminoAcid where
  | A | C | D | E | F | G | H | I | K | L | M | N | P | Q | R | S | T | V | W | Y

def AminoAcid.alphabet : List AminoAcid :=
  [A, C, D, E, F, G, H, I, K, L, M, N, P, Q, R, S, T, V, W, Y]

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse