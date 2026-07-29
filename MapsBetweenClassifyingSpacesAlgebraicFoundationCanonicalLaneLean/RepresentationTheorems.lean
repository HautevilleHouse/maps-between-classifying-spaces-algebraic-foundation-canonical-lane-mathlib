import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure RepresentationTheoremsPackage {G : ClassifyingSpacePackage} {H : ClassifyingSpacePackage} (M : ClassifyingSpaceMapsPackage G H) where
  mapRepresentedByGroupHomomorphism : Prop
  representationUniqueness : Prop
  naturalBijection : Prop
  representationFunctorial : Prop

structure RepresentationTheoremsEvidence {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (R : RepresentationTheoremsPackage M) where
  mapRepresentedByGroupHomomorphismClosed : R.mapRepresentedByGroupHomomorphism
  representationUniquenessClosed : R.representationUniqueness
  naturalBijectionClosed : R.naturalBijection
  representationFunctorialClosed : R.representationFunctorial

def RepresentationTheoremsClosed {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (R : RepresentationTheoremsPackage M) : Prop :=
  R.mapRepresentedByGroupHomomorphism ∧ R.representationUniqueness ∧ R.naturalBijection ∧ R.representationFunctorial

theorem representation_theorems_closed_from_evidence {G H : ClassifyingSpacePackage} {M : ClassifyingSpaceMapsPackage G H} (R : RepresentationTheoremsPackage M) (E : RepresentationTheoremsEvidence R) : RepresentationTheoremsClosed R := by
  exact And.intro E.mapRepresentedByGroupHomomorphismClosed (And.intro E.representationUniquenessClosed (And.intro E.naturalBijectionClosed E.representationFunctorialClosed))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse