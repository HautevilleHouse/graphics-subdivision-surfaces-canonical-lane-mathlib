import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceControlNet where
  baseMesh : Type u
  topology : TopologicalSpace baseMesh
  controlPolyhedron : Type v
  subdivisionRule : (Nat → controlPolyhedron) → Prop
  limitSurface : Type w
  continuity : Prop
  regularity : Prop

def SubdivisionSurfaceControlNetClosed (S : SubdivisionSurfaceControlNet) : Prop :=
  S.continuity ∧ S.regularity

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
