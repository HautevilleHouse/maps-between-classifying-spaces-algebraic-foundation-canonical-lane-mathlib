import MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean.RepresentationTheoremEvidence
import Mathlib.AlgebraicTopology.Cohomology

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure CohomologyClassificationPackage {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G}
    {P : PrincipalBundleClassifierPackage S}
    (R : RepresentationTheoremPackage P) where
  cohomologyRing : Type v
  ringStructure : Semiring cohomologyRing
  characteristicClassMapping : Prop
  chernClasses : Prop
  totalChernClass : Prop
  whitneyProductFormula : Prop
  isomorphismWithBundles : Prop

structure CohomologyClassificationEvidence {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G} {P : PrincipalBundleClassifierPackage S}
    {R : RepresentationTheoremPackage P} (C : CohomologyClassificationPackage R) where
  characteristicClassMappingClosed : C.characteristicClassMapping
  chernClassesClosed : C.chernClasses
  totalChernClassClosed : C.totalChernClass
  whitneyProductFormulaClosed : C.whitneyProductFormula
  isomorphismWithBundlesClosed : C.isomorphismWithBundles

def CohomologyClassificationClosed {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G} {P : PrincipalBundleClassifierPackage S}
    {R : RepresentationTheoremPackage P} (C : CohomologyClassificationPackage R) : Prop :=
  C.characteristicClassMapping ∧ C.chernClasses ∧ C.totalChernClass ∧
  C.whitneyProductFormula ∧ C.isomorphismWithBundles

theorem cohomology_classification_closed_from_evidence
    {G : Type u} [Monoid G] {S : ClassifyingSpaceStructure G}
    {P : PrincipalBundleClassifierPackage S} {R : RepresentationTheoremPackage P}
    (C : CohomologyClassificationPackage R)
    (E : CohomologyClassificationEvidence C) : CohomologyClassificationClosed C := by
  exact And.intro E.characteristicClassMappingClosed
    (And.intro E.chernClassesClosed
      (And.intro E.totalChernClassClosed
        (And.intro E.whitneyProductFormulaClosed E.isomorphismWithBundlesClosed)))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse