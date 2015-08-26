#include <bson.h>
#include <bindings.dsl.h>
module Bindings.Libbson.Context where
#strict_import
import Bindings.Libbson.Types

#ccall bson_context_new , <bson_context_flags_t> -> IO (Ptr <bson_context_t>)

#ccall bson_context_destroy , Ptr <bson_context_t> -> IO ()

#ccall bson_context_get_default , IO (Ptr <bson_context_t>)

