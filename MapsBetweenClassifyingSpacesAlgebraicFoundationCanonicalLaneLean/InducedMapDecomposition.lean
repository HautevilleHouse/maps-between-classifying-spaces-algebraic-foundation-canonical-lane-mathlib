import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure InducedMapDecompositionPackage {G H : ClassifyingSpacePackage} (M : ClassifyingSpaceMapsPackage G H) where
  mapFactorThroughPullback : Prop
  factorMap : Type u
  factorMapTopology : TopologicalSpace factorMap
  factorMapToH : factorMap -> H.classifyingSpace
  decompositionUniqueness : Prop
  decompositionFunctorial : Prop

structure InducedMapDecompositionEvidence {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (D : InducedMapDecompositionPackage M) where
  mapFactorThroughPullbackClosed : D.mapFactorThroughPullback
  decompositionUniquenessClosed : D.decompositionUniqueness
  decompositionFunctorialClosed : D.decompositionFunctorial

def InducedMapDecompositionClosed {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (D : InducedMapDecompositionPackage M) : Prop :=
  D.mapFactorThroughPullback ∧ D.decompositionUniqueness ∧ D.decompositionFunctorial

theorem induced_map_decomposition_closed_from_evidence {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (D : InducedMapDecompositionPackage M) (E : InducedMapDecompositionEvidence D) : InducedMapDecompositionClosed D := by
  exact And.intro E.mapFactorThroughPullbackClosed (And.intro E.decompositionUniquenessClosed E.decompositionFunctorialClosed)

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse