import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionScheme

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure LoopSubdivision {M : SubdivisionSurfaceControlMesh}
    (S : SubdivisionScheme M) where
  edgeVertexInsertion : Prop
  vertexUpdate : Prop
  boundaryRules : Prop
  boxSplineLimit : Prop
  tangentContinuity : Prop
  curvatureBounded : Prop

structure LoopSubdivisionEvidence {M : SubdivisionSurfaceControlMesh}
    {S : SubdivisionScheme M} (L : LoopSubdivision S) where
  edgeVertexInsertionClosed : L.edgeVertexInsertion
  vertexUpdateClosed : L.vertexUpdate
  boundaryRulesClosed : L.boundaryRules
  boxSplineLimitClosed : L.boxSplineLimit
  tangentContinuityClosed : L.tangentContinuity
  curvatureBoundedClosed : L.curvatureBounded

def LoopSubdivisionClosed {M : SubdivisionSurfaceControlMesh}
    {S : SubdivisionScheme M} (L : LoopSubdivision S) : Prop :=
  L.edgeVertexInsertion ∧ L.vertexUpdate ∧ L.boundaryRules ∧
  L.boxSplineLimit ∧ L.tangentContinuity ∧ L.curvatureBounded

theorem loop_subdivision_closed_from_evidence
    {M : SubdivisionSurfaceControlMesh} {S : SubdivisionScheme M}
    (L : LoopSubdivision S) (E : LoopSubdivisionEvidence L) :
    LoopSubdivisionClosed L := by
  exact And.intro E.edgeVertexInsertionClosed
    (And.intro E.vertexUpdateClosed
      (And.intro E.boundaryRulesClosed
        (And.intro E.boxSplineLimitClosed
          (And.intro E.tangentContinuityClosed E.curvatureBoundedClosed))))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse