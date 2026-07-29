import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure Representation (X : Type u) [TopologicalSpace X] (G : Type v) [Group G] where
  underlyingMap : X → G
  continuity : Continuous underlyingMap

def representationClosed {X : Type u} [TopologicalSpace X] {G : Type v} [Group G] (r : Representation X G) : Prop :=
  r.continuity

theorem representation_is_homotopy_class {X : Type u} [TopologicalSpace X] {G : Type v} [Group G] (r : Representation X G) :
    Continuous r.underlyingMap := r.continuity

structure RepresentationFunctor (C : Type u) [Category C] (F : C ⥤ GroupCat) where
  objectMap : C → Type v
  onMorphisms : ∀ {c d : C}, (c ⟶ d) → (objectMap c → objectMap d)
  functoriality : Prop

def functorClosed {C : Type u} [Category C] {F : C ⥤ GroupCat} (R : RepresentationFunctor C F) : Prop :=
  R.functoriality

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse
