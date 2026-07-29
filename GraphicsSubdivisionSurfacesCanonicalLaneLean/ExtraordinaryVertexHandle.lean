import canonicalLaneMathlib.AdmissibleClass
import GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionControlMesh

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure ExtraordinaryVertex where
  valence : ℕ
  valenceDifferentFromSix : valence ≠ 6
  characteristicMap : Type
  subdivisionRule : Type
  eigenstructureConsistent : Prop

structure ExtraordinaryVertexHandlePackage where
  vertex : ExtraordinaryVertex
  eigenstructureConsistentClosed : vertex.eigenstructureConsistent
  valenceCondition : vertex.valenceDifferentFromSix

def ExtraordinaryVertexHandleClosed (E : ExtraordinaryVertexHandlePackage) : Prop :=
  E.eigenstructureConsistentClosed ∧ E.valenceCondition

theorem extraordinary_vertex_handle_closed (E : ExtraordinaryVertexHandlePackage) :
    ExtraordinaryVertexHandleClosed E := by
  exact And.intro E.eigenstructureConsistentClosed E.valenceCondition

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
