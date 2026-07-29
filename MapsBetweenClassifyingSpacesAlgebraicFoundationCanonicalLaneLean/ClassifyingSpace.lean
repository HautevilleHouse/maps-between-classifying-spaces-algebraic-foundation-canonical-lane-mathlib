import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpacePackage where
  groupObject : Type u
  groupMultiplication : groupObject -> groupObject -> groupObject
  groupIdentity : groupObject
  groupInverse : groupObject -> groupObject
  classifyingSpace : Type v
  classifyingSpaceTopology : TopologicalSpace classifyingSpace
  universalBundle : Type w
  universalBundleProjection : universalBundle -> classifyingSpace
  principalBundleClassification : Prop
  homotopyTypeWellDefined : Prop
  groupObjectLawful : Prop
  universalBundleContractibleFiber : Prop

structure ClassifyingSpaceEvidence (G : ClassifyingSpacePackage) where
  principalBundleClassificationClosed : G.principalBundleClassification
  homotopyTypeWellDefinedClosed : G.homotopyTypeWellDefined
  groupObjectLawfulClosed : G.groupObjectLawful
  universalBundleContractibleFiberClosed : G.universalBundleContractibleFiber

def ClassifyingSpaceClosed (G : ClassifyingSpacePackage) : Prop :=
  G.principalBundleClassification ∧ G.homotopyTypeWellDefined ∧ G.groupObjectLawful ∧ G.universalBundleContractibleFiber

theorem classifying_space_closed_from_evidence (G : ClassifyingSpacePackage) (E : ClassifyingSpaceEvidence G) : ClassifyingSpaceClosed G := by
  exact And.intro E.principalBundleClassificationClosed (And.intro E.homotopyTypeWellDefinedClosed (And.intro E.groupObjectLawfulClosed E.universalBundleContractibleFiberClosed))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse