# frozen_string_literal: true

require "mkmf"

extension_name = "quicksort_c_impl"

dir_config(extension_name)       # The destination
create_makefile(extension_name)  # Create Makefile
