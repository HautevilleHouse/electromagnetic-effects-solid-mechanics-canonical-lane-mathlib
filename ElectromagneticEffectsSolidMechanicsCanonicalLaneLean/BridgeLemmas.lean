import canonicalLaneMathlib.AdmissibleClass
import ElectromagneticEffectsSolidMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.landauLifshitzEquation ∧ A.object.spinWaveDispersion ∧ A.object.magneticDomainStructure

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse