#pragma once

#include <stddef.h>
#include <stdint.h>

// Utilities common across our C examples. We format numbers by hand rather than
// pulling in <stdio.h>: libc's stdio drags a pile of wasi:cli / wasi:io imports
// into the component, and we want nothing but our own interface imported.

// Copy the nul-terminated string `s` into buf at `pos`; return the new position.
static size_t fmt_str(char *buf, size_t pos, const char *s) {
  while (*s) {
    buf[pos++] = *s++;
  }
  return pos;
}

// Write `v` as decimal into buf at `pos`; return the new position.
static size_t fmt_uint(char *buf, size_t pos, uint64_t v) {
  char tmp[20];
  size_t n = 0;
  if (v == 0) {
    tmp[n++] = '0';
  }
  while (v) {
    tmp[n++] = (char)('0' + v % 10);
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
  uint64_t scaled = (uint64_t)(v * (double)scale + 0.5);
  pos = fmt_uint(buf, pos, scaled / scale);
  if (decimals > 0) {
    buf[pos++] = '.';
    uint64_t frac = scaled % scale;
    uint64_t div = scale / 10;
    for (int i = 0; i < decimals; i++) {
      buf[pos++] = (char)('0' + (frac / div) % 10);
      div /= 10;
    }
  }
  return pos;
}
