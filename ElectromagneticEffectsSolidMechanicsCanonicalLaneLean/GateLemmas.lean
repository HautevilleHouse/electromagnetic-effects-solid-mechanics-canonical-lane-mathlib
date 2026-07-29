import canonicalLaneMathlib.AdmissibleClass
import ElectromagneticEffectsSolidMechanicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse