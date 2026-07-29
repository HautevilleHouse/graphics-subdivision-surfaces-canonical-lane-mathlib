import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure CatmullClarkPackage where
  controlMesh : Type
  subdivisionDepth : Nat
  limitSurface : Type
  continuity : Prop
  eigenstructure : Prop

structure CatmullClarkEvidence (C : CatmullClarkPackage) where
  continuityClosed : C.continuity
  eigenstructureClosed : C.eigenstructure

def CatmullClarkClosed (C : CatmullClarkPackage) : Prop :=
  C.continuity ∧ C.eigenstructure

theorem catmull_clark_closed_from_evidence (C : CatmullClarkPackage)
    (E : CatmullClarkEvidence C) : CatmullClarkClosed C :=
  And.intro E.continuityClosed E.eigenstructureClosed

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
