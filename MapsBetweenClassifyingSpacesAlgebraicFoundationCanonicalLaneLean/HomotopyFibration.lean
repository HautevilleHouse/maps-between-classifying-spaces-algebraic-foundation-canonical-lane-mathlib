import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean

structure HomotopyFibrationPackage where
  totalSpace : Type u
  baseSpace : Type v
  fiberSpace : Type w
  projectionMap : totalSpace → baseSpace
  fiberInclusion : fiberSpace → totalSpace
  homotopyExactSequence : Prop
  classifyingSpaceFibration : Prop
  serreSpectralSequence : Prop

structure HomotopyFibrationEvidence (H : HomotopyFibrationPackage) where
  homotopyExactSequenceClosed : H.homotopyExactSequence
  classifyingSpaceFibrationClosed : H.classifyingSpaceFibration
  serreSpectralSequenceClosed : H.serreSpectralSequence

def HomotopyFibrationClosed (H : HomotopyFibrationPackage) : Prop :=
  H.homotopyExactSequence ∧ H.classifyingSpaceFibration ∧ H.serreSpectralSequence

theorem homotopy_fibration_closed_from_evidence (H : HomotopyFibrationPackage) (E : HomotopyFibrationEvidence H) :
    HomotopyFibrationClosed H := by
  exact And.intro E.homotopyExactSequenceClosed (And.intro E.classifyingSpaceFibrationClosed E.serreSpectralSequenceClosed)

end MapsBetweenClassifyingSpacesAlgebraicFoundationCanonicalLaneLean
end HautevilleHouse