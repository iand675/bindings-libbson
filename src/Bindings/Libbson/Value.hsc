module Bindings.Libbson.Value where
#include <bson.h>
#include <bindings.dsl.h>
#strict_import
import Bindings.Libbson.Types

#ccall bson_value_copy , Ptr <bson_value_t> -> Ptr <bson_value_t> -> IO ()

#ccall bson_value_destroy , Ptr <bson_value_t> -> IO ()

