import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpacePackage where
  topologicalGroup : Type u
  groupTopology : TopologicalSpace topologicalGroup
  classifyingSpace : Type v
  classifyingSpaceTopology : TopologicalSpace classifyingSpace
  universalBundle : Type w
  universalBundleTopology : TopologicalSpace universalBundle
  principalBundleClassifier : Prop
  homotopyClassification : Prop

structure ClassifyingSpaceEvidence (C : ClassifyingSpacePackage) where
  principalBundleClassifierClosed : C.principalBundleClassifier
  homotopyClassificationClosed : C.homotopyClassification

def ClassifyingSpaceClosed (C : ClassifyingSpacePackage) : Prop :=
  C.principalBundleClassifier ∧ C.homotopyClassification

theorem classifying_space_closed_from_evidence (C : ClassifyingSpacePackage) (E : ClassifyingSpaceEvidence C) :
    ClassifyingSpaceClosed C := by
  exact And.intro E.principalBundleClassifierClosed E.homotopyClassificationClosed

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse