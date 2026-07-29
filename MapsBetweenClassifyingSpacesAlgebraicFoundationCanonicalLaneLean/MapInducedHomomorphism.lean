import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure MapInducedHomomorphismPackage where
  sourceGroup : Type u
  targetGroup : Type v
  continuousMap : sourceGroup → targetGroup
  inducedMapClassifyingSpaces : Prop
  homomorphismOnFundamentalGroup : Prop
  compatibilityWithUniversalBundle : Prop

structure MapInducedHomomorphismEvidence (M : MapInducedHomomorphismPackage) where
  inducedMapClassifyingSpacesClosed : M.inducedMapClassifyingSpaces
  homomorphismOnFundamentalGroupClosed : M.homomorphismOnFundamentalGroup
  compatibilityWithUniversalBundleClosed : M.compatibilityWithUniversalBundle

def MapInducedHomomorphismClosed (M : MapInducedHomomorphismPackage) : Prop :=
  M.inducedMapClassifyingSpaces ∧ M.homomorphismOnFundamentalGroup ∧ M.compatibilityWithUniversalBundle

theorem map_induced_homomorphism_closed_from_evidence (M : MapInducedHomomorphismPackage) (E : MapInducedHomomorphismEvidence M) :
    MapInducedHomomorphismClosed M := by
  exact And.intro E.inducedMapClassifyingSpacesClosed (And.intro E.homomorphismOnFundamentalGroupClosed E.compatibilityWithUniversalBundleClosed)

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse