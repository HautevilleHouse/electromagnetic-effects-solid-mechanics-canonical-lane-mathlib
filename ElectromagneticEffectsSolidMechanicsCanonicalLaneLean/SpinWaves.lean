import canonicalLaneMathlib.AdmissibleClass
import ElectromagneticEffectsSolidMechanicsCanonicalLaneLean.AdmissibleClass

/-!
# Spin Waves Package
-/

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

structure SpinWavesPackage where
  dispersionRelation : Prop
  magnetizationDynamics : Prop
  exchangeInteraction : Prop
  dampingMechanism : Prop
  boundaryConditions : Prop

structure SpinWavesEvidence (S : SpinWavesPackage) where
  dispersionRelationClosed : S.dispersionRelation
  magnetizationDynamicsClosed : S.magnetizationDynamics
  exchangeInteractionClosed : S.exchangeInteraction
  dampingMechanismClosed : S.dampingMechanism
  boundaryConditionsClosed : S.boundaryConditions

def SpinWavesClosed (S : SpinWavesPackage) : Prop :=
  S.dispersionRelation ∧ S.magnetizationDynamics ∧ S.exchangeInteraction ∧ S.dampingMechanism ∧ S.boundaryConditions

theorem spin_waves_closed_from_evidence (S : SpinWavesPackage) (E : SpinWavesEvidence S) :
    SpinWavesClosed S := by
  exact And.intro E.dispersionRelationClosed
    (And.intro E.magnetizationDynamicsClosed
      (And.intro E.exchangeInteractionClosed
        (And.intro E.dampingMechanismClosed E.boundaryConditionsClosed)))

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse
