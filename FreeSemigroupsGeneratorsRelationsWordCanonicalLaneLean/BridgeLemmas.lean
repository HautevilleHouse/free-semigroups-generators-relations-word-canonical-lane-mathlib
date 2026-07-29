import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FreeSemigroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse
