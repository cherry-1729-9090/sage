from sage.libs.mpfr.types cimport mpfr_t, mpfr_prec_t

cimport sage.structure.element
from .real_mpfr cimport RealNumber

cdef class ComplexNumber(sage.structure.element.FieldElement):
    cdef mpfr_t __re
    cdef mpfr_t __im
    cdef mpfr_prec_t _prec
    cdef object _multiplicative_order

    cpdef _add_(self, other) noexcept
    cpdef _mul_(self, other) noexcept
    cdef RealNumber abs_c(ComplexNumber self) noexcept
    cdef RealNumber norm_c(ComplexNumber self) noexcept

    cdef ComplexNumber _new(self) noexcept
