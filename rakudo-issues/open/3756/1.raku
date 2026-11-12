use NativeCall; our $g-param-spec-types is export; $g-param-spec-types := cglobal("gobject-2.0", "g_param_spec_types", CArray[uint64]); say "$_, { $g-param-spec-types[$_] }" for ^23;
