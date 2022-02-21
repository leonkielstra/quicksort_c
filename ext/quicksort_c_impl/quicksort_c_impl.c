#include "ruby.h"
#include "quicksort_c_impl.h"

VALUE QUICKSORT_C_MODULE = Qnil;

void Init_quicksort_c_impl() {
  // Module definition
  QUICKSORT_C_MODULE = rb_define_module("QuicksortCImpl");

  // Function definitions
  rb_define_module_function(QUICKSORT_C_MODULE, "sort", rb_quicksort, 1);
}

VALUE rb_quicksort(VALUE klass, VALUE r_array) {
  return rb_ary_to_s(r_array);
}
