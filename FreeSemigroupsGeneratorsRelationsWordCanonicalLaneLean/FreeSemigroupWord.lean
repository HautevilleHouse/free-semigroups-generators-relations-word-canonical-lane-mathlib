import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean

structure FreeSemigroup (G : Type) where
  carrier : Type
  mul : carrier → carrier → carrier
  assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)

def Generators (G : Type) : Type :=
  G

structure Relation (G : Type) where
  lhs : FreeSemigroup G
  rhs : FreeSemigroup G

structure Presentation (G : Type) (R : List (Relation G)) where
  free : FreeSemigroup G
  relations : R

def Word (G : Type) : Type :=
  List G

end FreeSemigroupsGeneratorsRelationsWordCanonicalLaneLean
end HautevilleHouse