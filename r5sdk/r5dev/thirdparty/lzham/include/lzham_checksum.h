// File: lzham_checksum.h
// See Copyright Notice and license at the end of include/lzham.h
#pragma once

namespace lzham
{
   const uint cInitAdler32 = 1U;
   uint adler32(const void* pBuf, size_t buflen, uint adler32 = cInitAdler32);
   
   const uint cInitCRC32 = 0U;
   uint crc32(const void* pBuf, size_t buflen, uint crc32 = cInitCRC32);
   
}  // namespace lzham
