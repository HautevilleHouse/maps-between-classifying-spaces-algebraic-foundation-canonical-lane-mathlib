import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpaceMorphism where
  source : Type
  target : Type
  map : source → target
  universalProperty : Prop
  conclusion : universalProperty

def ClassifyingSpaceMorphismWitnessClosed (M : ClassifyingSpaceMorphism) : Prop :=
  M.universalProperty

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse
