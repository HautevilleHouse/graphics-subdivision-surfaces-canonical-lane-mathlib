import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.limitSurfaceContinuous

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.limitSurfaceContinuousTerm

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse