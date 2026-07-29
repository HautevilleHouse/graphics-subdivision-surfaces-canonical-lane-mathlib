import GraphicsSubdivisionSurfacesCanonicalLaneLean.LimitSurfaceEvaluation

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceFoundation where
  limitEval : LimitSurfaceEvaluation
  baseScheme : SubdivisionScheme
  continuityAnalysis : ContinuityAnalysis
  schemeEvidence : SubdivisionSchemeEvidence baseScheme
  continuityEvidence : ContinuityEvidence continuityAnalysis
  limitEvidence : LimitSurfaceEvidence limitEval

def SubdivisionSurfaceFoundationClosed (F : SubdivisionSurfaceFoundation) : Prop :=
  SubdivisionSchemeClosed F.baseScheme ∧
  ContinuityClosed F.continuityAnalysis ∧
  LimitSurfaceClosed F.limitEval

theorem subdivision_surface_foundation_closed_from_evidence
    (F : SubdivisionSurfaceFoundation) :
    SubdivisionSurfaceFoundationClosed F := by
  exact And.intro (subdivision_scheme_closed_from_evidence F.baseScheme F.schemeEvidence)
    (And.intro (continuity_closed_from_evidence F.continuityAnalysis F.continuityEvidence)
      (limit_surface_closed_from_evidence F.limitEval F.limitEvidence))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
