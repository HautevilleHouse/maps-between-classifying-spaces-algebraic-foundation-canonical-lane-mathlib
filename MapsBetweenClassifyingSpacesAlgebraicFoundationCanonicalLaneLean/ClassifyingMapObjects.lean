import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundation

structure ClassifyingSpace (G : Type u) [Group G] where
  underlyingType : Type v
  topology : TopologicalSpace underlyingType
  classifyingMap : Type w
  principalBundle : Type x
  weakHomotopyEquivalence : Prop

structure ClassifyingMap where
  sourceClassifyingSpace : ClassifyingSpace Unit
  targetClassifyingSpace : ClassifyingSpace Unit
  continuousMap : Type
  inducesEquivalence : Prop
  homotopyClass : Type

structure ClassifyingMapAdmittedObject where
  map : ClassifyingMap
  universalProperty : Prop
  representationTheorem : Prop
  conclusion : universalProperty ∧ representationTheorem

def ClassifyingMapWitnessClosed (O : ClassifyingMapAdmittedObject) : Prop :=
  O.universalProperty ∧ O.representationTheorem

end MapsBetweenClassifyingSpacesAlgebraicFoundation
end HautevilleHouse