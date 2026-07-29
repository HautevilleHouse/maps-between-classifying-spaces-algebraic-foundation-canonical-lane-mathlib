import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure PrincipalBundle (B : Type u) [TopologicalSpace B] (G : Type v) [Group G] where
  totalSpace : Type w
  projection : totalSpace → B
  freeAction : G → totalSpace → totalSpace
  localTrivialization : Prop

def bundleClosed {B : Type u} [TopologicalSpace B] {G : Type v} [Group G] (P : PrincipalBundle B G) : Prop :=
  P.localTrivialization

structure BaseDecomposition (M : Type u) [TopologicalSpace M] where
  openCover : Set (Set M)
  refinement : Prop

def decompositionClosed {M : Type u} [TopologicalSpace M] (D : BaseDecomposition M) : Prop :=
  D.refinement

structure ClassifyingSpaceFunctoriality (F : Type u → Type v) where
  actionOnMaps : ∀ {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y], (X → Y) → (F X → F Y)
  preservesIdentity : Prop
  preservesComposition : Prop

def functorialityClosed (F : ClassifyingSpaceFunctoriality) : Prop :=
  F.preservesIdentity ∧ F.preservesComposition

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse
