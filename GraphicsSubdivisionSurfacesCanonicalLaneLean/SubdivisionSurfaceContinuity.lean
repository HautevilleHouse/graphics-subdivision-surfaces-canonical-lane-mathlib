import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionScheme

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceContinuity {M : SubdivisionSurfaceControlMesh}
    (S : SubdivisionScheme M) where
  c0Continuity : Prop
  c1Continuity : Prop
  c2Continuity : Prop
  extraordinaryPointAnalysis : Prop
  eigenanalysisComplete : Prop

structure SubdivisionSurfaceContinuityEvidence {M : SubdivisionSurfaceControlMesh}
    {S : SubdivisionScheme M} (C : SubdivisionSurfaceContinuity S) where
  c0ContinuityClosed : C.c0Continuity
  c1ContinuityClosed : C.c1Continuity
  c2ContinuityClosed : C.c2Continuity
  extraordinaryPointAnalysisClosed : C.extraordinaryPointAnalysis
  eigenanalysisCompleteClosed : C.eigenanalysisComplete

def SubdivisionSurfaceContinuityClosed {M : SubdivisionSurfaceControlMesh}
    {S : SubdivisionScheme M} (C : SubdivisionSurfaceContinuity S) : Prop :=
  C.c0Continuity ∧ C.c1Continuity ∧ C.c2Continuity ∧
  C.extraordinaryPointAnalysis ∧ C.eigenanalysisComplete

theorem subdivision_surface_continuity_closed_from_evidence
    {M : SubdivisionSurfaceControlMesh} {S : SubdivisionScheme M}
    (C : SubdivisionSurfaceContinuity S) (E : SubdivisionSurfaceContinuityEvidence C) :
    SubdivisionSurfaceContinuityClosed C := by
  exact And.intro E.c0ContinuityClosed
    (And.intro E.c1ContinuityClosed
      (And.intro E.c2ContinuityClosed
        (And.intro E.extraordinaryPointAnalysisClosed E.eigenanalysisCompleteClosed)))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse