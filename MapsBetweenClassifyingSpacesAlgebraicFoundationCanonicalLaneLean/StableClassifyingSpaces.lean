import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure StableClassifyingSpacesPackage where
  familyOfGroups : Nat → Type u
  stabilizationMaps : (n : Nat) → familyOfGroups n → familyOfGroups (n+1)
  stableClassifyingSpace : Type v
  stableClassifyingSpaceTopology : TopologicalSpace stableClassifyingSpace
  infiniteLoopSpaceStructure : Prop
  barthelMayTheorem : Prop
  thomSpectrumConnection : Prop

structure StableClassifyingSpacesEvidence (S : StableClassifyingSpacesPackage) where
  infiniteLoopSpaceStructureClosed : S.infiniteLoopSpaceStructure
  barthelMayTheoremClosed : S.barthelMayTheorem
  thomSpectrumConnectionClosed : S.thomSpectrumConnection

def StableClassifyingSpacesClosed (S : StableClassifyingSpacesPackage) : Prop :=
  S.infiniteLoopSpaceStructure ∧ S.barthelMayTheorem ∧ S.thomSpectrumConnection

theorem stable_classifying_spaces_closed_from_evidence (S : StableClassifyingSpacesPackage) (E : StableClassifyingSpacesEvidence S) :
    StableClassifyingSpacesClosed S := by
  exact And.intro E.infiniteLoopSpaceStructureClosed (And.intro E.barthelMayTheoremClosed E.thomSpectrumConnectionClosed)

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse