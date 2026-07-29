import canonicalLaneMathlib.AdmissibleClass
import GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionControlMesh
import GraphicsSubdivisionSurfacesCanonicalLaneLean.SubdivisionSchemeAlgebra
import GraphicsSubdivisionSurfacesCanonicalLaneLean.LimitSurfaceAnalysis
import GraphicsSubdivisionSurfacesCanonicalLaneLean.ExtraordinaryVertexHandle

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure CatmullClarkPackage where
  controlMesh : SubdivisionControlMeshPackage
  schemeAlgebra : SubdivisionSchemeAlgebraPackage
  limitSurface : LimitSurfacePackage
  extraordinaryHandle : ExtraordinaryVertexHandlePackage
  limitSurfaceEvidence : LimitSurfaceEvidence limitSurface
  allAdmissible : SubdivisionSchemeAlgebraClosed schemeAlgebra ∧
    ExtraordinaryVertexHandleClosed extraordinaryHandle ∧
    LimitSurfaceClosed limitSurface

def CatmullClarkAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem catmull_clark_admissible_endgame (A : AdmissibleClass) :
    CatmullClarkAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
