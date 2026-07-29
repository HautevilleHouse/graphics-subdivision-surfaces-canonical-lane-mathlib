import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceControlMesh where
  vertices : Type u
  edges : Type v
  faces : Type w
  connectivity : Prop
  manifoldProperty : Prop
  orientable : Prop
  boundaryEdges : Prop
  genus : Nat

structure SubdivisionSurfaceControlMeshEvidence (M : SubdivisionSurfaceControlMesh) where
  connectivityClosed : M.connectivity
  manifoldPropertyClosed : M.manifoldProperty
  orientableClosed : M.orientable
  boundaryEdgesClosed : M.boundaryEdges
  genusConsistent : M.genus ≥ 0

def SubdivisionSurfaceControlMeshClosed (M : SubdivisionSurfaceControlMesh) : Prop :=
  M.connectivity ∧ M.manifoldProperty ∧ M.orientable ∧ M.boundaryEdges

theorem subdivision_surface_control_mesh_closed_from_evidence
    (M : SubdivisionSurfaceControlMesh) (E : SubdivisionSurfaceControlMeshEvidence M) :
    SubdivisionSurfaceControlMeshClosed M := by
  exact And.intro E.connectivityClosed
    (And.intro E.manifoldPropertyClosed
      (And.intro E.orientableClosed E.boundaryEdgesClosed))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse