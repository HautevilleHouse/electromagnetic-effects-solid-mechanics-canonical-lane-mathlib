import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

structure DomainWallEnergyPackage where
  wallType : String
  exchangeConstant : ℝ
  anisotropyConstant : ℝ
  wallWidth : ℝ
  wallEnergyDensity : ℝ → ℝ → ℝ
  wallEnergyFormulaValid : Prop

structure DomainWallEnergyEvidence (P : DomainWallEnergyPackage) where
  wallTypeClosed : P.wallType = "Bloch" ∨ P.wallType = "Néel"
  exchangeConstantClosed : P.exchangeConstant > 0
  anisotropyConstantClosed : P.anisotropyConstant > 0
  wallWidthClosed : P.wallWidth = π * √(P.exchangeConstant / P.anisotropyConstant)
  wallEnergyDensityClosed : P.wallEnergyDensity = λ A K => 4 * √(A * K)
  wallEnergyFormulaValidClosed : P.wallEnergyFormulaValid

def DomainWallEnergyClosed (P : DomainWallEnergyPackage) : Prop :=
  P.wallEnergyFormulaValid ∧ P.wallType = "Bloch" ∨ P.wallType = "Néel"

theorem domain_wall_energy_closed_from_evidence (P : DomainWallEnergyPackage) (E : DomainWallEnergyEvidence P) :
  DomainWallEnergyClosed P := by
  exact And.intro E.wallEnergyFormulaValidClosed E.wallTypeClosed

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse