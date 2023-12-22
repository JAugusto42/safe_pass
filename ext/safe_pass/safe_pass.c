#include "safe_pass.h"

VALUE rb_mSafePass;

RUBY_FUNC_EXPORTED void
Init_safe_pass(void)
{
  rb_mSafePass = rb_define_module("SafePass");
}
