import MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean.ClassifyingSpaceAlgebraicObject
import Mathlib.AlgebraicTopology.PrincipalBundle

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure PrincipalBundleClassifierPackage {G : Type u} [Monoid G]
    (S : ClassifyingSpaceStructure G) where
  bundleOverSpace : Type v
  bundleTopology : TopologicalSpace bundleOverSpace
  structureGroupAction : G → bundleOverSpace → bundleOverSpace
  localTrivialization : Prop
  classifyingMapInduced : Prop
  homotopyClassUnique : Prop
  universalBundle : Prop

structure PrincipalBundleClassifierEvidence {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G}
    (P : PrincipalBundleClassifierPackage S) where
  localTrivializationClosed : P.localTrivialization
  classifyingMapInducedClosed : P.classifyingMapInduced
  homotopyClassUniqueClosed : P.homotopyClassUnique
  universalBundleClosed : P.universalBundle

def PrincipalBundleClassifierClosed {G : Type u} [Monoid G]
    {S : ClassifyingSpaceStructure G}
    (P : PrincipalBundleClassifierPackage S) : Prop :=
  P.localTrivialization ∧ P.classifyingMapInduced ∧
  P.homotopyClassUnique ∧ P.universalBundle

theorem principal_bundle_classifier_closed_from_evidence
    {G : Type u} [Monoid G] {S : ClassifyingSpaceStructure G}
    (P : PrincipalBundleClassifierPackage S)
    (E : PrincipalBundleClassifierEvidence P) : PrincipalBundleClassifierClosed P := by
  exact And.intro E.localTrivializationClosed
    (And.intro E.classifyingMapInducedClosed
      (And.intro E.homotopyClassUniqueClosed E.universalBundleClosed))

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse