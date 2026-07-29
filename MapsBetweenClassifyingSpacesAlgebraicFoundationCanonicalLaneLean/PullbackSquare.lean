import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure PullbackSquarePackage {G H K : ClassifyingSpacePackage} (f : ClassifyingSpaceMapsPackage G H) (g : ClassifyingSpaceMapsPackage K H) where
  pullbackObject : Type u
  pullbackTopology : TopologicalSpace pullbackObject
  pullbackMapToG : pullbackObject -> G.classifyingSpace
  pullbackMapToK : pullbackObject -> K.classifyingSpace
  squareCommutes : Prop
  universalProperty : Prop
  pullbackIsClassifying : Prop

structure PullbackSquareEvidence {G H K : ClassifyingSpacePackage} {f : ClassifyingSpaceMapsPackage G H} {g : ClassifyingSpaceMapsPackage K H} (P : PullbackSquarePackage f g) where
  squareCommutesClosed : P.squareCommutes
  universalPropertyClosed : P.universalProperty
  pullbackIsClassifyingClosed : P.pullbackIsClassifying

def PullbackSquareClosed {G H K : ClassifyingSpacePackage} {f : ClassifyingSpaceMapsPackage G H} {g : ClassifyingSpaceMapsPackage K H} (P : PullbackSquarePackage f g) : Prop :=
  P.squareCommutes ∧ P.universalProperty ∧ P.pullbackIsClassifying

theorem pullback_square_closed_from_evidence {G H K : ClassifyingSpacePackage} {f : ClassifyingSpaceMapsPackage G H} {g : ClassifyingSpaceMapsPackage K H} (P : PullbackSquarePackage f g) (E : PullbackSquareEvidence P) : PullbackSquareClosed P := by
  exact And.intro E.squareCommutesClosed (And.intro E.universalPropertyClosed E.pullbackIsClassifyingClosed)

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse