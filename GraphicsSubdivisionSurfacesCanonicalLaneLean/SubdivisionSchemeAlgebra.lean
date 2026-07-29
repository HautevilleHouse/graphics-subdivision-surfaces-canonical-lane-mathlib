import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsSubdivisionSurfacesCanonicalLaneLean

structure SubdivisionScheme where
  subdivisionMatrix : Type
  maskWeights : Type
  stencilShape : Type
  spectralRadiusCondition : Prop
  eigenstructureRegular : Prop

structure SubdivisionSchemeAlgebraPackage where
  scheme : SubdivisionScheme
  spectralRadiusConditionClosed : scheme.spectralRadiusCondition
  eigenstructureRegularClosed : scheme.eigenstructureRegular

def SubdivisionSchemeAlgebraClosed (A : SubdivisionSchemeAlgebraPackage) : Prop :=
  A.spectralRadiusConditionClosed ∧ A.eigenstructureRegularClosed

theorem subdivision_scheme_algebra_closed (A : SubdivisionSchemeAlgebraPackage) :
    SubdivisionSchemeAlgebraClosed A := by
  exact And.intro A.spectralRadiusConditionClosed A.eigenstructureRegularClosed

end GraphicsSubdivisionSurfacesCanonicalLaneLean
end HautevilleHouse
