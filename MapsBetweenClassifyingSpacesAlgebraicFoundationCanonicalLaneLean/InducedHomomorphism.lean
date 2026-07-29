import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure InducedHomomorphismPackage where
  groupHomomorphism : Type u → Type v
  classifyingSpaceMap : Type w → Type x
  homomorphismCompatible : Prop
  inducedMapWellDefined : Prop
  functoriality : Prop

structure InducedHomomorphismEvidence (P : InducedHomomorphismPackage) where
  homomorphismCompatibleClosed : P.homomorphismCompatible
  inducedMapWellDefinedClosed : P.inducedMapWellDefined
  functorialityClosed : P.functoriality

def InducedHomomorphismClosed (P : InducedHomomorphismPackage) : Prop :=
  P.homomorphismCompatible ∧ P.inducedMapWellDefined ∧ P.functoriality

theorem induced_homomorphism_closed_from_evidence (P : InducedHomomorphismPackage) (E : InducedHomomorphismEvidence P) :
    InducedHomomorphismClosed P := by
  exact And.intro E.homomorphismCompatibleClosed (And.intro E.inducedMapWellDefinedClosed E.functorialityClosed)

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse