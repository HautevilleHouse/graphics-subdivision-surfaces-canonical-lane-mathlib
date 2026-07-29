import GraphicsSubdivisionSurfacesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  subdivisionScheme : Prop
  subdivisionSchemeClosed : subdivisionScheme
  limitSurface : Prop
  limitSurfaceClosed : limitSurface
  conclusion : limitSurfaceClosed

structure SubdivisionSurfaceEndgameState where
  object : SubdivisionSurfaceAdmittedObject

def SubdivisionSurfaceWitnessClosed (O : SubdivisionSurfaceAdmittedObject) : Prop :=
  O.limitSurfaceClosed

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
