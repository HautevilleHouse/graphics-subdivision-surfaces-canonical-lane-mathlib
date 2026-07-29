import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure ExtraordinaryVertexBehaviorPackage where
  scheme : Type u
  valences : List Nat
  subdivisionMatrix : Type v
  eigenvalues : List ℝ
  contractivity : Prop
  FourierAnalysis : Prop

structure ExtraordinaryVertexEvidence (E : ExtraordinaryVertexBehaviorPackage) where
  spectralRadiusBound : Prod.fst (List.maximum E.eigenvalues).get? 0 < 1
  fourierSynthesisClosed : E.FourierAnalysis

def ExtraordinaryVertexBehaviorClosed (E : ExtraordinaryVertexBehaviorPackage) : Prop :=
  E.contractivity ∧ E.FourierAnalysis

theorem extraordinary_vertex_behavior_closed
    (E : ExtraordinaryVertexBehaviorPackage) (Ev : ExtraordinaryVertexEvidence E) :
    ExtraordinaryVertexBehaviorClosed E := by
  exact And.intro Ev.spectralRadiusBound Ev.fourierSynthesisClosed

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
