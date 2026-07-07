import CampanaKobayashiHyperbolicityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CampanaKobayashiHyperbolicityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CampanaKobayashiHyperbolicityCanonicalLaneLean
end HautevilleHouse
