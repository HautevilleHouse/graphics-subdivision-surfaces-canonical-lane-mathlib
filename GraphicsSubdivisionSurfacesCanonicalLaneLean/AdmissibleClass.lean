import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceObject where
  carrier : Type
  topology : TopologicalSpace carrier
  controlMesh : Type
  refinementRule : (Nat → carrier → carrier)
  limitSurfaceContinuous : Prop
  limitSurfaceContinuousTerm : limitSurfaceContinuous

structure AdmissibleClass where
  object : SubdivisionSurfaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.limitSurfaceContinuous) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse