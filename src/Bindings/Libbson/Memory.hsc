module Bindings.Libbson.Memory where
#include <bson.h>
#include <bindings.dsl.h>
#strict_import
import Bindings.Libbson.Types

#callback_t bson_realloc_func , Ptr () -> CSize -> Ptr () -> IO (Ptr ())

#starttype bson_mem_vtable_t
-- #field malloc ,
-- #field calloc ,
-- #field realloc ,
-- #field free ,
-- #array_field padding , ()
#stoptype

#ccall bson_mem_set_vtable , Ptr <bson_mem_vtable_t> -> IO ()
#ccall bson_malloc , CSize -> IO (Ptr a)
#ccall bson_malloc0 , CSize -> IO (Ptr a)
#ccall bson_realloc , Ptr a -> CSize -> IO (Ptr a)
#ccall bson_realloc_ctx , Ptr a -> CSize -> Ptr () -> IO (Ptr a)
#ccall bson_free , Ptr a -> IO ()
#ccall bson_zero_free , Ptr a -> CSize -> IO ()

