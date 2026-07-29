import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure ControlMesh where
  vertices : Type
  edges : Type
  faces : Type
  edgeFaceIncidence : Prop
  manifoldStructure : Prop
  subdivisionRuleCompatible : Prop

structure SubdivisionControlMeshPackage where
  mesh : ControlMesh
  topologyAdmissible : mesh.manifoldStructure
  subdivisionRuleCompatibleTerm : mesh.subdivisionRuleCompatible

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
