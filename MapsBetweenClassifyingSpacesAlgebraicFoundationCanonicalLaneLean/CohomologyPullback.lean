import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure CohomologyPullbackPackage where
  sourceClassifyingSpace : Type u
  targetClassifyingSpace : Type v
  mapBetweenSpaces : sourceClassifyingSpace → targetClassifyingSpace
  cohomologyRingSource : Type w
  cohomologyRingTarget : Type x
  pullbackMapOnCohomology : cohomologyRingTarget → cohomologyRingSource
  pullbackIsRingHomomorphism : Prop
  naturalityWithSteenrodOperations : Prop

structure CohomologyPullbackEvidence (C : CohomologyPullbackPackage) where
  pullbackIsRingHomomorphismClosed : C.pullbackIsRingHomomorphism
  naturalityWithSteenrodOperationsClosed : C.naturalityWithSteenrodOperations

def CohomologyPullbackClosed (C : CohomologyPullbackPackage) : Prop :=
  C.pullbackIsRingHomomorphism ∧ C.naturalityWithSteenrodOperations

theorem cohomology_pullback_closed_from_evidence (C : CohomologyPullbackPackage) (E : CohomologyPullbackEvidence C) :
    CohomologyPullbackClosed C := by
  exact And.intro E.pullbackIsRingHomomorphismClosed E.naturalityWithSteenrodOperationsClosed

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse