import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

structure SpinWaveDispersionPackage where
  exchangeStiffness : ℝ
  anisotropyField : ℝ
  waveVector : ℝ
  frequencyDispersion : ℝ → ℝ → ℝ → ℝ
  dispersionRelationValid : Prop

structure SpinWaveDispersionEvidence (P : SpinWaveDispersionPackage) where
  exchangeStiffnessClosed : P.exchangeStiffness > 0
  anisotropyFieldClosed : P.anisotropyField = 0 ∨ P.anisotropyField > 0
  frequencyDispersionClosed : P.frequencyDispersion = λ D H_k k => 
    (P.exchangeStiffness / P.anisotropyField) * k^2 + (P.anisotropyField / P.exchangeStiffness)
  dispersionRelationValidClosed : P.dispersionRelationValid

def SpinWaveDispersionClosed (P : SpinWaveDispersionPackage) : Prop :=
  P.exchangeStiffness > 0 ∧
  P.dispersionRelationValid

theorem spin_wave_dispersion_closed_from_evidence (P : SpinWaveDispersionPackage) (E : SpinWaveDispersionEvidence P) :
  SpinWaveDispersionClosed P := by
  exact And.intro E.exchangeStiffnessClosed E.dispersionRelationValidClosed

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse