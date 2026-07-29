import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundation

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassifyingMapWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MapsBetweenClassifyingSpacesAlgebraicFoundation
end HautevilleHouse