#ifndef QUICKSORT_C_H
#define QUICKSORT_C_H

#include "ruby.h"

void Init_quicksort_c();
void rb_init_functions();
VALUE rb_quicksort(VALUE klass, VALUE r_array);

#endif
