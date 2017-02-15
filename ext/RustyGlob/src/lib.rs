#[macro_use]
extern crate ruru;
extern crate globset;

use ruru::{AnyObject, Array, Class, Object, Fixnum, RString};
use globset::{Glob, GlobSetBuilder};

methods!(
   RString,
   itself,

   fn dir_glob(pattern: AnyObject) -> Array {
       let mut builder = GlobSetBuilder::new();
       let mut result = Array::new();
       result
   }
);

#[no_mangle]
pub extern fn initialize_dir() {
    Class::from_existing("Dir").define(|itself| {
        itself.def("glob", dir_glob);
    });
}