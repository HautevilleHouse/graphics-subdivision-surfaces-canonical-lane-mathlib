import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionScheme where
  rule : Type
  subdivisionMatrix : Type
  stencilSize : Nat
  regularity : Prop
  limitSurfaceRegularity : Prop

structure SubdivisionSchemeEvidence (S : SubdivisionScheme) where
  regularityClosed : S.regularity
  limitSurfaceRegularityClosed : S.limitSurfaceRegularity

def SubdivisionSchemeClosed (S : SubdivisionScheme) : Prop :=
  S.regularity ∧ S.limitSurfaceRegularity

theorem subdivision_scheme_closed_from_evidence (S : SubdivisionScheme)
    (E : SubdivisionSchemeEvidence S) : SubdivisionSchemeClosed S :=
  And.intro E.regularityClosed E.limitSurfaceRegularityClosed

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
