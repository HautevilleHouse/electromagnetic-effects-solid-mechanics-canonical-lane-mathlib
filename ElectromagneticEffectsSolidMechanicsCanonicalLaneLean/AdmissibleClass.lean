import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

structure ElectromagneticAdmissibleObject where
  material : Type
  magnetizationField : material → (ℝ × ℝ × ℝ)
  exchangeConstant : ℝ
  anisotropyConstant : ℝ
  saturationMagnetization : ℝ
  conclusion : Prop

structure AdmissibleClass where
  object : ElectromagneticAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse