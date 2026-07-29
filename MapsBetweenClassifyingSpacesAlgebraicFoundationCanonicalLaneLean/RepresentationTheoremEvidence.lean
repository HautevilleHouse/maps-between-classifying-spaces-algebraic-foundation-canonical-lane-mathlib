import MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean.PrincipalBundleClassification
import Mathlib.RepresentationTheory.Rep

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure RepresentationTheoremPackage {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G}
    (P : PrincipalBundleClassifierPackage S) where
  representationSpace : Type v
  repAction : G → representationSpace → representationSpace
  linearAction : Prop
  moduleStructure : Prop
  equivariantMapToBundle : Prop
  bijectionWithBundles : Prop
  functoriality : Prop

structure RepresentationTheoremEvidence {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G} {P : PrincipalBundleClassifierPackage S}
    (R : RepresentationTheoremPackage P) where
  linearActionClosed : R.linearAction
  moduleStructureClosed : R.moduleStructure
  equivariantMapToBundleClosed : R.equivariantMapToBundle
  bijectionWithBundlesClosed : R.bijectionWithBundles
  functorialityClosed : R.functoriality

def RepresentationTheoremClosed {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G} {P : PrincipalBundleClassifierPackage S}
    (R : RepresentationTheoremPackage P) : Prop :=
  R.linearAction ∧ R.moduleStructure ∧ R.equivariantMapToBundle ∧
  R.bijectionWithBundles ∧ R.functoriality

theorem representation_theorem_closed_from_evidence
    {G : Type u} [Monoid G] {S : ClassifyingSpaceStructure G}
    {P : PrincipalBundleClassifierPackage S} (R : RepresentationTheoremPackage P)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.linearActionClosed
    (And.intro E.moduleStructureClosed
      (And.intro E.equivariantMapToBundleClosed
        (And.intro E.bijectionWithBundlesClosed E.functorialityClosed)))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse