import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceObject where
  carrier : Type
  topology : TopologicalSpace carrier
  meshComplex : Prop
  limitSurface : Prop
  subdivisionRule : Prop
  smoothness : Prop

structure SubdivisionAdmittedObject where
  surface : SubdivisionSurfaceObject
  closedManifold : Prop
  subdivisionRuleDefined : Prop
  limitSurfaceExists : Prop
  conclusion : limitSurfaceExists

structure SubdivisionEndgameState where
  object : SubdivisionAdmittedObject

def SubdivisionWitnessClosed (O : SubdivisionAdmittedObject) : Prop :=
  O.limitSurfaceExists

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
