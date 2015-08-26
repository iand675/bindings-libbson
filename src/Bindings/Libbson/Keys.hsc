#include <bson.h>
#include <bindings.dsl.h>
module Bindings.Libbson.Keys where
#strict_import
import Bindings.Libbson.Types

#ccall bson_uint32_to_string , Word32 -> Ptr CString -> CString -> CSize -> IO CSize

