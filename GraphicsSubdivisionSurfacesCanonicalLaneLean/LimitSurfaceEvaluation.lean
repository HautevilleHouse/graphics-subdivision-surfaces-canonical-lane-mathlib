import GraphicsSubdivisionSurfacesCanonicalLaneLean.ContinuityAnalysis

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure LimitSurfaceEvaluation where
  continuity : ContinuityAnalysis
  evaluationAlgorithm : Prop
  limitPointFormula : Prop
  nonDefectCondition : Prop
  surfaceTight : Prop

structure LimitSurfaceEvidence (L : LimitSurfaceEvaluation) where
  evaluationAlgorithmClosed : L.evaluationAlgorithm
  limitPointFormulaClosed : L.limitPointFormula
  nonDefectConditionClosed : L.nonDefectCondition
  surfaceTightClosed : L.surfaceTight

def LimitSurfaceClosed (L : LimitSurfaceEvaluation) : Prop :=
  L.evaluationAlgorithm ∧ L.limitPointFormula ∧
  L.nonDefectCondition ∧ L.surfaceTight

theorem limit_surface_closed_from_evidence
    (L : LimitSurfaceEvaluation) (E : LimitSurfaceEvidence L) :
    LimitSurfaceClosed L := by
  exact And.intro E.evaluationAlgorithmClosed
    (And.intro E.limitPointFormulaClosed
      (And.intro E.nonDefectConditionClosed E.surfaceTightClosed))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
