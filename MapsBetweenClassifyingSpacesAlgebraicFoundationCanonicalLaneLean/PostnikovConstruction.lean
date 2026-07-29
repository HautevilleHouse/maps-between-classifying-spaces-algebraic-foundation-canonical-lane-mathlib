import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure PostnikovConstructionPackage where
  space : Type u
  spaceTopology : TopologicalSpace space
  homotopyGroupsAboveZero : Prop
  classifyingSpaceStage : Nat → Type v
  fibrationSequence : ∀ n : Nat, classifyingSpaceStage (n+1) → classifyingSpaceStage n
  limitSpace : Type w
  limitSpaceTopology : TopologicalSpace limitSpace
  homotopyEquivalence : Prop

structure PostnikovConstructionEvidence (P : PostnikovConstructionPackage) where
  homotopyGroupsAboveZeroClosed : P.homotopyGroupsAboveZero
  homotopyEquivalenceClosed : P.homotopyEquivalence

def PostnikovConstructionClosed (P : PostnikovConstructionPackage) : Prop :=
  P.homotopyGroupsAboveZero ∧ P.homotopyEquivalence

theorem postnikov_construction_closed_from_evidence (P : PostnikovConstructionPackage) (E : PostnikovConstructionEvidence P) :
    PostnikovConstructionClosed P := by
  exact And.intro E.homotopyGroupsAboveZeroClosed E.homotopyEquivalenceClosed

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse