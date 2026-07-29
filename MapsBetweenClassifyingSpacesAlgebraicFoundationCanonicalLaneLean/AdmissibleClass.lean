import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundation

structure AdmissibleClass where
  object : ClassifyingMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClassifyingMapWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MapsBetweenClassifyingSpacesAlgebraicFoundation
end HautevilleHouse