import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure AdamsOperationsPackage where
  cohomologyTheory : Type u → Type v
  adamsOperation : Nat → (∀ X : Type w, cohomologyTheory X → cohomologyTheory X)
  operationCompatibleWithMaps : Prop
  identityOperation : Prop
  compositionFormula : Prop
  adamsOperationSatisfiesProperties : Prop

structure AdamsOperationsEvidence (P : AdamsOperationsPackage) where
  operationCompatibleWithMapsClosed : P.operationCompatibleWithMaps
  identityOperationClosed : P.identityOperation
  compositionFormulaClosed : P.compositionFormula
  adamsOperationSatisfiesPropertiesClosed : P.adamsOperationSatisfiesProperties

def AdamsOperationsClosed (P : AdamsOperationsPackage) : Prop :=
  P.operationCompatibleWithMaps ∧ P.identityOperation ∧ P.compositionFormula ∧ P.adamsOperationSatisfiesProperties

theorem adams_operations_closed_from_evidence (P : AdamsOperationsPackage) (E : AdamsOperationsEvidence P) :
    AdamsOperationsClosed P := by
  exact And.intro E.operationCompatibleWithMapsClosed (And.intro E.identityOperationClosed (And.intro E.compositionFormulaClosed E.adamsOperationSatisfiesPropertiesClosed))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse