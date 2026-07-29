import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionSurfaceControlMesh

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceFeatureAdaptive (M : SubdivisionSurfaceControlMesh) where
  creaseEdges : Prop
  vertexSharpness : Prop
  semiSharpCreases : Prop
  adaptiveTessellation : Prop
  featurePreservation : Prop

structure SubdivisionSurfaceFeatureAdaptiveEvidence (M : SubdivisionSurfaceControlMesh)
    (F : SubdivisionSurfaceFeatureAdaptive M) where
  creaseEdgesClosed : F.creaseEdges
  vertexSharpnessClosed : F.vertexSharpness
  semiSharpCreasesClosed : F.semiSharpCreases
  adaptiveTessellationClosed : F.adaptiveTessellation
  featurePreservationClosed : F.featurePreservation

def SubdivisionSurfaceFeatureAdaptiveClosed (M : SubdivisionSurfaceControlMesh)
    (F : SubdivisionSurfaceFeatureAdaptive M) : Prop :=
  F.creaseEdges ∧ F.vertexSharpness ∧ F.semiSharpCreases ∧
  F.adaptiveTessellation ∧ F.featurePreservation

theorem subdivision_surface_feature_adaptive_closed_from_evidence
    (M : SubdivisionSurfaceControlMesh) (F : SubdivisionSurfaceFeatureAdaptive M)
    (E : SubdivisionSurfaceFeatureAdaptiveEvidence M F) :
    SubdivisionSurfaceFeatureAdaptiveClosed M F := by
  exact And.intro E.creaseEdgesClosed
    (And.intro E.vertexSharpnessClosed
      (And.intro E.semiSharpCreasesClosed
        (And.intro E.adaptiveTessellationClosed E.featurePreservationClosed)))

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse