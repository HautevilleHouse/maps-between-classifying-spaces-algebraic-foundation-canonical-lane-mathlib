import Mathlib.AlgebraicTopology.ClassifyingSpace
import Mathlib.CategoryTheory.Yoneda

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure ClassifyingSpaceStructure (G : Type u) [Monoid G] where
  space : Type v
  topology : TopologicalSpace space
  classifyingMap : G → space
  universalCover : Type w
  universalCoverTopology : TopologicalSpace universalCover
  coveringMap : universalCover → space
  simplyConnected : Prop
  fiberDiscrete : Prop
  universalProperty : Prop

def ClassifyingSpaceWitness (S : ClassifyingSpaceStructure G) : Prop :=
  S.universalProperty

structure ClassifyingSpaceAlgebraicObject where
  G : Type u
  [monoidG : Monoid G]
  space : Type v
  topology : TopologicalSpace space
  classifyingMap : G → space
  universalCover : Type w
  universalCoverTopology : TopologicalSpace universalCover
  coveringMap : universalCover → space
  simplyConnected : simplyConnectedProp
  fiberDiscrete : fiberDiscreteProp
  universalProperty : Prop
  conclusion : universalProperty
  simplyConnectedProp : Prop
  fiberDiscreteProp : Prop

def ClassifyingSpaceWitnessClosed (O : ClassifyingSpaceAlgebraicObject) : Prop :=
  O.universalProperty

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse