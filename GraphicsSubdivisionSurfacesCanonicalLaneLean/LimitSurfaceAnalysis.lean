import canonicalLaneMathlib.AdmissibleClass
import GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionSchemeAlgebra

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure LimitSurfacePackage where
  limitEvaluator : Type
  tangentBehavior : Type
  curvatureBehavior : Type
  continuityClass : Type
  normalContinuity : Prop
  tangentContinuity : Prop
  curvatureContinuity : Prop

structure LimitSurfaceEvidence (L : LimitSurfacePackage) where
  normalContinuityClosed : L.normalContinuity
  tangentContinuityClosed : L.tangentContinuity
  curvatureContinuityClosed : L.curvatureContinuity

def LimitSurfaceClosed (L : LimitSurfacePackage) : Prop :=
  L.normalContinuity ∧ L.tangentContinuity ∧ L.curvatureContinuity

theorem limit_surface_closed_from_evidence (L : LimitSurfacePackage)
    (E : LimitSurfaceEvidence L) :
    LimitSurfaceClosed L := by
  exact And.intro E.normalContinuityClosed (And.intro E.tangentContinuityClosed E.curvatureContinuityClosed)

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
