import HautevilleHouse.ElectromagneticEffectsSolidMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticEffectsSolidMechanicsCanonicalLaneLean

structure MagneticDomainTheoryPackage where
  domainWallEnergy : Prop
  blochWallWidth : Prop
  neelWallStructure : Prop
  fluxClosure : Prop

structure MagneticDomainTheoryEvidence (D : MagneticDomainTheoryPackage) where
  domainWallEnergyClosed : D.domainWallEnergy
  blochWallWidthClosed : D.blochWallWidth
  neelWallStructureClosed : D.neelWallStructure
  fluxClosureClosed : D.fluxClosure

def MagneticDomainTheoryClosed (D : MagneticDomainTheoryPackage) : Prop :=
  D.domainWallEnergy ∧ D.blochWallWidth ∧ D.neelWallStructure ∧ D.fluxClosure

theorem magnetic_domain_theory_closed_from_evidence
  (D : MagneticDomainTheoryPackage) (E : MagneticDomainTheoryEvidence D) :
  MagneticDomainTheoryClosed D := by
  exact And.intro E.domainWallEnergyClosed (And.intro E.blochWallWidthClosed (And.intro E.neelWallStructureClosed E.fluxClosureClosed))

end ElectromagneticEffectsSolidMechanicsCanonicalLaneLean
end HautevilleHouse