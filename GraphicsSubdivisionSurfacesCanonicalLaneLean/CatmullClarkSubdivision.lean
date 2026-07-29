import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionScheme

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure CatmullClarkSubdivision {M : SubdivisionSurfaceControlMesh}
    (S : SubdivisionScheme M) where
  facePoints : Type u
  edgePoints : Type v
  vertexPoints : Type w
  bicubicBSplineLimit : Prop
  extraordinaryVertexRule : Prop
  tangentContinuity : Prop
  curvatureBounded : Prop

structure CatmullClarkSubdivisionEvidence {M : SubdivisionSurfaceControlMesh}
    {S : SubdivisionScheme M} (C : CatmullClarkSubdivision S) where
  bicubicBSplineLimitClosed : C.bicubicBSplineLimit
  extraordinaryVertexRuleClosed : C.extraordinaryVertexRule
  tangentContinuityClosed : C.tangentContinuity
  curvatureBoundedClosed : C.curvatureBounded

def CatmullClarkSubdivisionClosed {M : SubdivisionSurfaceControlMesh}
    {S : SubdivisionScheme M} (C : CatmullClarkSubdivision S) : Prop :=
  C.bicubicBSplineLimit ∧ C.extraordinaryVertexRule ∧ C.tangentContinuity ∧ C.curvatureBounded

theorem catmull_clark_subdivision_closed_from_evidence
    {M : SubdivisionSurfaceControlMesh} {S : SubdivisionScheme M}
    (C : CatmullClarkSubdivision S) (E : CatmullClarkSubdivisionEvidence C) :
    CatmullClarkSubdivisionClosed C := by
  exact And.intro E.bicubicBSplineLimitClosed
    (And.intro E.extraordinaryVertexRuleClosed
      (And.intro E.tangentContinuityClosed E.curvatureBoundedClosed))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse