import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure ExtraordinaryVertexPackage where
  valence : Nat
  subdivisionRule : Type
  behavior : Prop
  boundedCurvature : Prop

structure ExtraordinaryVertexEvidence (E : ExtraordinaryVertexPackage) where
  behaviorClosed : E.behavior
  boundedCurvatureClosed : E.boundedCurvature

def ExtraordinaryVertexClosed (E : ExtraordinaryVertexPackage) : Prop :=
  E.behavior ∧ E.boundedCurvature

theorem extraordinary_vertex_closed_from_evidence (E : ExtraordinaryVertexPackage)
    (Ev : ExtraordinaryVertexEvidence E) : ExtraordinaryVertexClosed E :=
  And.intro Ev.behaviorClosed Ev.boundedCurvatureClosed

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
