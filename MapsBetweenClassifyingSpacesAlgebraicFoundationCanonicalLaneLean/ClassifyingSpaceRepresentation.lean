import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpaceRepresentationPackage where
  topologicalGroup : Type u
  representationCategory : Type v
  representationFunctor : representationCategory → Type w
  classifyingSpaceOfGroup : Type x
  naturalEquivalenceOfFunctors : Prop
  universalPropertySatisfied : Prop

structure ClassifyingSpaceRepresentationEvidence (R : ClassifyingSpaceRepresentationPackage) where
  naturalEquivalenceOfFunctorsClosed : R.naturalEquivalenceOfFunctors
  universalPropertySatisfiedClosed : R.universalPropertySatisfied

def ClassifyingSpaceRepresentationClosed (R : ClassifyingSpaceRepresentationPackage) : Prop :=
  R.naturalEquivalenceOfFunctors ∧ R.universalPropertySatisfied

theorem classifying_space_representation_closed_from_evidence (R : ClassifyingSpaceRepresentationPackage) (E : ClassifyingSpaceRepresentationEvidence R) :
    ClassifyingSpaceRepresentationClosed R := by
  exact And.intro E.naturalEquivalenceOfFunctorsClosed E.universalPropertySatisfiedClosed

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse