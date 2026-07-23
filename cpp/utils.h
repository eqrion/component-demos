#pragma once

#include <cstddef>
#include <cstdint>

// Utilities common across our C++ examples, mostly to avoid the use of the
// standard library (since this tends to pull in lots of WASI stuff we don't
// care about.)

// Write `v` as decimal into buf at `pos`; return the new position.
static size_t fmt_uint(char *buf, size_t pos, uint64_t v) {
  char tmp[20];
  size_t n = 0;
  if (v == 0) {
    tmp[n++] = '0';
  }
  while (v) {
    tmp[n++] = static_cast<char>('0' + v % 10);
    v /= 10;
  }
  while (n) {
    buf[pos++] = tmp[--n];
  }
  return pos;
}

// Write `v` with `decimals` fractional digits (rounded) into buf at `pos`.
static size_t fmt_fixed(char *buf, size_t pos, double v, int decimals) {
  if (v < 0) {
    buf[pos++] = '-';
    v = -v;
  }
  uint64_t scale = 1;
  for (int i = 0; i < decimals; i++) {
    scale *= 10;
  }
  uint64_t scaled = static_cast<uint64_t>(v * static_cast<double>(scale) + 0.5);
  pos = fmt_uint(buf, pos, scaled / scale);
  if (decimals > 0) {
    buf[pos++] = '.';
    uint64_t frac = scaled % scale;
    uint64_t div = scale / 10;
    for (int i = 0; i < decimals; i++) {
      buf[pos++] = static_cast<char>('0' + (frac / div) % 10);
      div /= 10;
    }
  }
  return pos;
}
