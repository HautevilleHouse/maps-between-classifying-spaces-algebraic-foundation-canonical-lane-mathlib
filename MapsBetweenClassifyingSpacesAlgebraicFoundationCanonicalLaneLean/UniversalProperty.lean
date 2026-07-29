import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpaceMorphism (G H : Type u) [Group G] [Group H] where
  continuousMap : G → H
  respectsMultiplication : ∀ x y : G, continuousMap (x * y) = continuousMap x * continuousMap y

def classifyingSpaceMorphismClosed {G H : Type u} [Group G] [Group H] (f : ClassifyingSpaceMorphism G H) : Prop :=
  f.respectsMultiplication

theorem classifying_space_morphism_preserves_identity {G H : Type u} [Group G] [Group H] (f : ClassifyingSpaceMorphism G H) :
    f.continuousMap (1 : G) = (1 : H) := by
  calc
    f.continuousMap (1 : G) = f.continuousMap (1 * 1) := by simp
    _ = f.continuousMap 1 * f.continuousMap 1 := f.respectsMultiplication 1 1
    _ = f.continuousMap 1 := by group

structure ClassifyingSpaceCoverage {X : Type u} [TopologicalSpace X] (G : Type v) [Group G] where
  principalBundleFamily : Set (Set X)
  trivializationCover : Prop

def coverageClosed {X : Type u} [TopologicalSpace X] {G : Type v} [Group G] (C : ClassifyingSpaceCoverage X G) : Prop :=
  C.trivializationCover

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse
