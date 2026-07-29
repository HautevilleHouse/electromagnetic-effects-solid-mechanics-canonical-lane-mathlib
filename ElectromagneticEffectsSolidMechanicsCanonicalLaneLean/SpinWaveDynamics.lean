import HautevilleHouse.ElectromagneticEffectsSolidMechanicsCanonicalLaneLean.LandauLifshitzEquation

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

structure SpinWaveDynamicsPackage {L : LandauLifshitzEquationPackage} where
  dispersionRelation : Prop
  exchangeStiffness : Prop
  anisotropyField : Prop
  dampingCoef : Prop

structure SpinWaveDynamicsEvidence {L : LandauLifshitzEquationPackage} (S : SpinWaveDynamicsPackage L) where
  dispersionRelationClosed : S.dispersionRelation
  exchangeStiffnessClosed : S.exchangeStiffness
  anisotropyFieldClosed : S.anisotropyField
  dampingCoefClosed : S.dampingCoef

def SpinWaveDynamicsClosed {L : LandauLifshitzEquationPackage} (S : SpinWaveDynamicsPackage L) : Prop :=
  S.dispersionRelation ∧ S.exchangeStiffness ∧ S.anisotropyField ∧ S.dampingCoef

theorem spin_wave_dynamics_closed_from_evidence
  {L : LandauLifshitzEquationPackage} (S : SpinWaveDynamicsPackage L) (E : SpinWaveDynamicsEvidence S) :
  SpinWaveDynamicsClosed S := by
  exact And.intro E.dispersionRelationClosed (And.intro E.exchangeStiffnessClosed (And.intro E.anisotropyFieldClosed E.dampingCoefClosed))

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse