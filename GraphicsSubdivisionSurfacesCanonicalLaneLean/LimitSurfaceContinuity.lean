import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure LimitSurfaceContinuityPackage where
  subdivisionScheme : Type u
  limitSurface : Type v
  tangentPlane : Type w
  continuityDegree : Nat
  eigenanalysis : Prop
  characteristicMap : Prop

structure LimitSurfaceContinuityEvidence (C : LimitSurfaceContinuityPackage) where
  eigenanalysisClosed : C.eigenanalysis
  characteristicMapClosed : C.characteristicMap
  continuityDegreeClosed : C.continuityDegree ≥ 1

def LimitSurfaceContinuityClosed (C : LimitSurfaceContinuityPackage) : Prop :=
  C.eigenanalysis ∧ C.characteristicMap ∧ C.continuityDegree ≥ 1

theorem limit_surface_continuity_closed_from_evidence
    (C : LimitSurfaceContinuityPackage) (E : LimitSurfaceContinuityEvidence C) :
    LimitSurfaceContinuityClosed C := by
  exact And.intro E.eigenanalysisClosed (And.intro E.characteristicMapClosed E.continuityDegreeClosed)

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
