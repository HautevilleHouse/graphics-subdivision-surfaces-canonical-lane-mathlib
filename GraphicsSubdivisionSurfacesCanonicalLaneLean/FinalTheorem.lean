import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsSubdivisionSurfacesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GraphicsSubdivisionSurfacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

def ConstrainedSubdivisionSurfaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_subdivision_surface_endgame (A : AdmissibleClass) :
    ConstrainedSubdivisionSurfaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse