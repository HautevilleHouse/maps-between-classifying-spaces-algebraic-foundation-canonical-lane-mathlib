import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure HomotopyClassificationPackage {G H : ClassifyingSpacePackage} (M : ClassifyingSpaceMapsPackage G H) where
  homotopyClassesBijectionWithGroupHomomorphisms : Prop
  bijectionNatural : Prop
  bijectionRespectsComposition : Prop
  basepointPreservingMapsIncluded : Prop

structure HomotopyClassificationEvidence {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (C : HomotopyClassificationPackage M) where
  homotopyClassesBijectionWithGroupHomomorphismsClosed : C.homotopyClassesBijectionWithGroupHomomorphisms
  bijectionNaturalClosed : C.bijectionNatural
  bijectionRespectsCompositionClosed : C.bijectionRespectsComposition
  basepointPreservingMapsIncludedClosed : C.basepointPreservingMapsIncluded

def HomotopyClassificationClosed {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (C : HomotopyClassificationPackage M) : Prop :=
  C.homotopyClassesBijectionWithGroupHomomorphisms ∧ C.bijectionNatural ∧ C.bijectionRespectsComposition ∧ C.basepointPreservingMapsIncluded

theorem homotopy_classification_closed_from_evidence {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (C : HomotopyClassificationPackage M) (E : HomotopyClassificationEvidence C) : HomotopyClassificationClosed C := by
  exact And.intro E.homotopyClassesBijectionWithGroupHomomorphismsClosed (And.intro E.bijectionNaturalClosed (And.intro E.bijectionRespectsCompositionClosed E.basepointPreservingMapsIncludedClosed))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse