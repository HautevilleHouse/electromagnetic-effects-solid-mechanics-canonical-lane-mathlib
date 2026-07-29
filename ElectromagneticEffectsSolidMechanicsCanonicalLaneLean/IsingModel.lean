import HautevilleHouse.ElectromagneticEffectsSolidMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

structure IsingModelPackage where
  lattice : Type
  spinVariable : Type
  couplingConstant : Prop
  externalField : Prop
  partitionFunction : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  couplingClosed : I.couplingConstant
  externalFieldClosed : I.externalField
  partitionFunctionClosed : I.partitionFunction

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.couplingConstant ∧ I.externalField ∧ I.partitionFunction

theorem ising_model_closed_from_evidence
  (I : IsingModelPackage) (E : IsingModelEvidence I) : IsingModelClosed I := by
  exact And.intro E.couplingClosed (And.intro E.externalFieldClosed E.partitionFunctionClosed)

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse