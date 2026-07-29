import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpaceMapsPackage (G : ClassifyingSpacePackage) (H : ClassifyingSpacePackage) where
  mapObject : Type u
  mapTopology : TopologicalSpace mapObject
  continuousMap : Prop
  homotopyClass : Type v
  homotopyEquivalenceType : Type w
  inducedHomomorphism : H.groupObject -> G.groupObject
  mapCompatibleWithGroupStructure : Prop
  mapInducesHomomorphism : Prop
  homotopyInvariance : Prop

structure ClassifyingSpaceMapsEvidence {G H : ClassifyingSpacePackage} (P : ClassifyingSpaceMapsPackage G H) where
  continuousMapClosed : P.continuousMap
  mapCompatibleWithGroupStructureClosed : P.mapCompatibleWithGroupStructure
  mapInducesHomomorphismClosed : P.mapInducesHomomorphism
  homotopyInvarianceClosed : P.homotopyInvariance

def ClassifyingSpaceMapsClosed {G H : ClassifyingSpacePackage} (P : ClassifyingSpaceMapsPackage G H) : Prop :=
  P.continuousMap ∧ P.mapCompatibleWithGroupStructure ∧ P.mapInducesHomomorphism ∧ P.homotopyInvariance

theorem classifying_space_maps_closed_from_evidence {G H : ClassifyingSpacePackage} (P : ClassifyingSpaceMapsPackage G H) (E : ClassifyingSpaceMapsEvidence P) : ClassifyingSpaceMapsClosed P := by
  exact And.intro E.continuousMapClosed (And.intro E.mapCompatibleWithGroupStructureClosed (And.intro E.mapInducesHomomorphismClosed E.homotopyInvarianceClosed))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse