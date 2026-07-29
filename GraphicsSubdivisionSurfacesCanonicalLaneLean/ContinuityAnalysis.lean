import GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionScheme

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure ContinuityAnalysis where
  scheme : SubdivisionScheme
  tangentContinuity : Prop
  curvatureContinuity : Prop
  characteristicMapRegular : Prop
  eigenStructureYieldsSmoothness : Prop

structure ContinuityEvidence (C : ContinuityAnalysis) where
  tangentContinuityClosed : C.tangentContinuity
  curvatureContinuityClosed : C.curvatureContinuity
  characteristicMapRegularClosed : C.characteristicMapRegular
  eigenStructureYieldsSmoothnessClosed : C.eigenStructureYieldsSmoothness

def ContinuityClosed (C : ContinuityAnalysis) : Prop :=
  C.tangentContinuity ∧ C.curvatureContinuity ∧
  C.characteristicMapRegular ∧ C.eigenStructureYieldsSmoothness

theorem continuity_closed_from_evidence
    (C : ContinuityAnalysis) (E : ContinuityEvidence C) :
    ContinuityClosed C := by
  exact And.intro E.tangentContinuityClosed
    (And.intro E.curvatureContinuityClosed
      (And.intro E.characteristicMapRegularClosed
        E.eigenStructureYieldsSmoothnessClosed))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
