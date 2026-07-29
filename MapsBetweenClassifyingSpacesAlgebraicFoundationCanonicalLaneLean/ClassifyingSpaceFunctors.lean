import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpaceFunctorsPackage where
  topologicalGroup : Type u
  groupTopology : TopologicalSpace topologicalGroup
  classifyingSpace : Type v
  classifyingSpaceTopology : TopologicalSpace classifyingSpace
  universalBundle : Type w
  bundleProjection : universalBundle → classifyingSpace
  fiberModel : Type x
  homotopyEquivClassifyingSpace : Prop
  mapInduced : Prop

structure ClassifyingSpaceFunctorsEvidence (P : ClassifyingSpaceFunctorsPackage) where
  homotopyEquivClassifyingSpaceClosed : P.homotopyEquivClassifyingSpace
  mapInducedClosed : P.mapInduced

def ClassifyingSpaceFunctorsClosed (P : ClassifyingSpaceFunctorsPackage) : Prop :=
  P.homotopyEquivClassifyingSpace ∧ P.mapInduced

theorem classifying_space_functors_closed_from_evidence (P : ClassifyingSpaceFunctorsPackage) (E : ClassifyingSpaceFunctorsEvidence P) :
    ClassifyingSpaceFunctorsClosed P := by
  exact And.intro E.homotopyEquivClassifyingSpaceClosed E.mapInducedClosed

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse