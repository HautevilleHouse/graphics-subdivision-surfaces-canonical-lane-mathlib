import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionSurfaceControlMesh

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionScheme (M : SubdivisionSurfaceControlMesh) where
  refinementOperator : Type u
  subdivisionRule : Prop
  limitSurfaceContinuity : Prop
  stencilCompatibility : Prop
  subdivisionMatrix : Type v
  eigenstructure : Prop

structure SubdivisionSchemeEvidence {M : SubdivisionSurfaceControlMesh}
    (S : SubdivisionScheme M) where
  subdivisionRuleClosed : S.subdivisionRule
  limitSurfaceContinuityClosed : S.limitSurfaceContinuity
  stencilCompatibilityClosed : S.stencilCompatibility
  eigenstructureClosed : S.eigenstructure

def SubdivisionSchemeClosed {M : SubdivisionSurfaceControlMesh}
    (S : SubdivisionScheme M) : Prop :=
  S.subdivisionRule ∧ S.limitSurfaceContinuity ∧ S.stencilCompatibility ∧ S.eigenstructure

theorem subdivision_scheme_closed_from_evidence
    {M : SubdivisionSurfaceControlMesh} (S : SubdivisionScheme M)
    (E : SubdivisionSchemeEvidence S) : SubdivisionSchemeClosed S := by
  exact And.intro E.subdivisionRuleClosed
    (And.intro E.limitSurfaceContinuityClosed
      (And.intro E.stencilCompatibilityClosed E.eigenstructureClosed))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse