// Runtime shims for C++ examples that use libc++'s allocating containers
// (std::vector, std::string, ...) under -nostdlib++. Those call the global
// operator new/delete, which normally come from libc++abi — not linked here.
// Back them with libc's malloc/free instead. (Replacement allocation functions
// must be non-inline single definitions, so they live in this .cpp rather than
// utils.h; compile it into examples that need std containers.)
#include <cstddef>
#include <cstdlib>

void *operator new(std::size_t n) {
  void *p = malloc(n);
  if (!p) {
    __builtin_trap();
  }
  return p;
}
void *operator new[](std::size_t n) { return ::operator new(n); }
void operator delete(void *p) noexcept { free(p); }
void operator delete[](void *p) noexcept { free(p); }
void operator delete(void *p, std::size_t) noexcept { free(p); }
void operator delete[](void *p, std::size_t) noexcept { free(p); }
