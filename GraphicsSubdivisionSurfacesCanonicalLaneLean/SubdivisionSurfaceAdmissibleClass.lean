import canonicalLaneMathlib.AdmissibleClass
import GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionSurfaceControlNet
import GraphicsSubdivisionSurfacesCanonicalLaneLean.CatmullClarkSubdivision
import GraphicsSubdivisionSurfacesCanonicalLaneLean.LimitSurfaceContinuity
import GraphicsSubdivisionSurfacesCanonicalLaneLean.ExtraordinaryVertexBehavior

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionSurfaceAdmittedObject where
  controlNet : SubdivisionSurfaceControlNet
  subdivision : CatmullClarkSubdivisionPackage
  continuityPkg : LimitSurfaceContinuityPackage
  extraordinaryPkg : ExtraordinaryVertexBehaviorPackage
  allComponentsCoupled : Prop
  conclusion : allComponentsCoupled

structure SubdivisionSurfaceAdmissibleClass where
  object : SubdivisionSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def WITNESS_CLOSED (A : SubdivisionSurfaceAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem witness_closed_intro (A : SubdivisionSurfaceAdmissibleClass) : WITNESS_CLOSED A :=
  And.intro A.object.conclusion A.gateWitness

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
