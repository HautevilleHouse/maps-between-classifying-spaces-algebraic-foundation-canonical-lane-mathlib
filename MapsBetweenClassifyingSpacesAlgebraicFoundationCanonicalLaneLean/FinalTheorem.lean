import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MapsBetweenClassifyingSpacesAlgebraicFoundation.BridgeLemmas
import HautevilleHouse.MapsBetweenClassifyingSpacesAlgebraicFoundation.GateLemmas

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundation

def ConstrainedClassifyingMapClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classifying_map_endgame (A : AdmissibleClass) :
    ConstrainedClassifyingMapClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MapsBetweenClassifyingSpacesAlgebraicFoundation
end HautevilleHouse