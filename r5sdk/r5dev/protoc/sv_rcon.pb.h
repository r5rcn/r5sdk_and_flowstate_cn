// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: sv_rcon.proto

#ifndef GOOGLE_PROTOBUF_INCLUDED_sv_5frcon_2eproto
#define GOOGLE_PROTOBUF_INCLUDED_sv_5frcon_2eproto

#include <limits>
#include <string>

#include <thirdparty/protobuf/port_def.inc>
#if PROTOBUF_VERSION < 3021000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers. Please update
#error your headers.
#endif
#if 3021012 < PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers. Please
#error regenerate this file with a newer version of protoc.
#endif

#include <thirdparty/protobuf/port_undef.inc>
#include <thirdparty/protobuf/io/coded_stream.h>
#include <thirdparty/protobuf/arena.h>
#include <thirdparty/protobuf/arenastring.h>
#include <thirdparty/protobuf/generated_message_util.h>
#include <thirdparty/protobuf/metadata_lite.h>
#include <thirdparty/protobuf/message_lite.h>
#include <thirdparty/protobuf/repeated_field.h>  // IWYU pragma: export
#include <thirdparty/protobuf/extension_set.h>  // IWYU pragma: export
#include <thirdparty/protobuf/generated_enum_util.h>
// @@protoc_insertion_point(includes)
#include <thirdparty/protobuf/port_def.inc>
#define PROTOBUF_INTERNAL_EXPORT_sv_5frcon_2eproto
PROTOBUF_NAMESPACE_OPEN
namespace internal {
class AnyMetadata;
}  // namespace internal
PROTOBUF_NAMESPACE_CLOSE

// Internal implementation detail -- do not use these members.
struct TableStruct_sv_5frcon_2eproto {
  static const uint32_t offsets[];
};
namespace sv_rcon {
class response;
struct responseDefaultTypeInternal;
extern responseDefaultTypeInternal _response_default_instance_;
}  // namespace sv_rcon
PROTOBUF_NAMESPACE_OPEN
template<> ::sv_rcon::response* Arena::CreateMaybeMessage<::sv_rcon::response>(Arena*);
PROTOBUF_NAMESPACE_CLOSE
namespace sv_rcon {

enum response_t : int {
  SERVERDATA_RESPONSE_VALUE = 0,
  SERVERDATA_RESPONSE_UPDATE = 1,
  SERVERDATA_RESPONSE_AUTH = 2,
  SERVERDATA_RESPONSE_CONSOLE_LOG = 3,
  SERVERDATA_RESPONSE_STRING = 4,
  SERVERDATA_RESPONSE_REMOTEBUG = 5,
  response_t_INT_MIN_SENTINEL_DO_NOT_USE_ = std::numeric_limits<int32_t>::min(),
  response_t_INT_MAX_SENTINEL_DO_NOT_USE_ = std::numeric_limits<int32_t>::max()
};
bool response_t_IsValid(int value);
constexpr response_t response_t_MIN = SERVERDATA_RESPONSE_VALUE;
constexpr response_t response_t_MAX = SERVERDATA_RESPONSE_REMOTEBUG;
constexpr int response_t_ARRAYSIZE = response_t_MAX + 1;

const std::string& response_t_Name(response_t value);
template<typename T>
inline const std::string& response_t_Name(T enum_t_value) {
  static_assert(::std::is_same<T, response_t>::value ||
    ::std::is_integral<T>::value,
    "Incorrect type passed to function response_t_Name.");
  return response_t_Name(static_cast<response_t>(enum_t_value));
}
bool response_t_Parse(
    ::PROTOBUF_NAMESPACE_ID::ConstStringParam name, response_t* value);
// ===================================================================

class response final :
    public ::PROTOBUF_NAMESPACE_ID::MessageLite /* @@protoc_insertion_point(class_definition:sv_rcon.response) */ {
 public:
  inline response() : response(nullptr) {}
  ~response() override;
  explicit PROTOBUF_CONSTEXPR response(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized);

  response(const response& from);
  response(response&& from) noexcept
    : response() {
    *this = ::std::move(from);
  }

  inline response& operator=(const response& from) {
    CopyFrom(from);
    return *this;
  }
  inline response& operator=(response&& from) noexcept {
    if (this == &from) return *this;
    if (GetOwningArena() == from.GetOwningArena()
  #ifdef PROTOBUF_FORCE_COPY_IN_MOVE
        && GetOwningArena() != nullptr
  #endif  // !PROTOBUF_FORCE_COPY_IN_MOVE
    ) {
      InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }

  static const response& default_instance() {
    return *internal_default_instance();
  }
  static inline const response* internal_default_instance() {
    return reinterpret_cast<const response*>(
               &_response_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  friend void swap(response& a, response& b) {
    a.Swap(&b);
  }
  inline void Swap(response* other) {
    if (other == this) return;
  #ifdef PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() != nullptr &&
        GetOwningArena() == other->GetOwningArena()) {
   #else  // PROTOBUF_FORCE_COPY_IN_SWAP
    if (GetOwningArena() == other->GetOwningArena()) {
  #endif  // !PROTOBUF_FORCE_COPY_IN_SWAP
      InternalSwap(other);
    } else {
      ::PROTOBUF_NAMESPACE_ID::internal::GenericSwap(this, other);
    }
  }
  void UnsafeArenaSwap(response* other) {
    if (other == this) return;
    GOOGLE_DCHECK(GetOwningArena() == other->GetOwningArena());
    InternalSwap(other);
  }

  // implements Message ----------------------------------------------

  response* New(::PROTOBUF_NAMESPACE_ID::Arena* arena = nullptr) const final {
    return CreateMaybeMessage<response>(arena);
  }
  void CheckTypeAndMergeFrom(const ::PROTOBUF_NAMESPACE_ID::MessageLite& from)  final;
  void CopyFrom(const response& from);
  void MergeFrom(const response& from);
  PROTOBUF_ATTRIBUTE_REINITIALIZES void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  const char* _InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) final;
  uint8_t* _InternalSerialize(
      uint8_t* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const final;
  int GetCachedSize() const final { return _impl_._cached_size_.Get(); }

  private:
  void SharedCtor(::PROTOBUF_NAMESPACE_ID::Arena* arena, bool is_message_owned);
  void SharedDtor();
  void SetCachedSize(int size) const;
  void InternalSwap(response* other);

  private:
  friend class ::PROTOBUF_NAMESPACE_ID::internal::AnyMetadata;
  static ::PROTOBUF_NAMESPACE_ID::StringPiece FullMessageName() {
    return "sv_rcon.response";
  }
  protected:
  explicit response(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                       bool is_message_owned = false);
  public:

  std::string GetTypeName() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  enum : int {
    kResponseMsgFieldNumber = 4,
    kResponseValFieldNumber = 5,
    kMessageIDFieldNumber = 1,
    kMessageTypeFieldNumber = 2,
    kResponseTypeFieldNumber = 3,
  };
  // optional string responseMsg = 4;
  bool has_responsemsg() const;
  private:
  bool _internal_has_responsemsg() const;
  public:
  void clear_responsemsg();
  const std::string& responsemsg() const;
  template <typename ArgT0 = const std::string&, typename... ArgT>
  void set_responsemsg(ArgT0&& arg0, ArgT... args);
  std::string* mutable_responsemsg();
  PROTOBUF_NODISCARD std::string* release_responsemsg();
  void set_allocated_responsemsg(std::string* responsemsg);
  private:
  const std::string& _internal_responsemsg() const;
  inline PROTOBUF_ALWAYS_INLINE void _internal_set_responsemsg(const std::string& value);
  std::string* _internal_mutable_responsemsg();
  public:

  // optional string responseVal = 5;
  bool has_responseval() const;
  private:
  bool _internal_has_responseval() const;
  public:
  void clear_responseval();
  const std::string& responseval() const;
  template <typename ArgT0 = const std::string&, typename... ArgT>
  void set_responseval(ArgT0&& arg0, ArgT... args);
  std::string* mutable_responseval();
  PROTOBUF_NODISCARD std::string* release_responseval();
  void set_allocated_responseval(std::string* responseval);
  private:
  const std::string& _internal_responseval() const;
  inline PROTOBUF_ALWAYS_INLINE void _internal_set_responseval(const std::string& value);
  std::string* _internal_mutable_responseval();
  public:

  // optional int32 messageID = 1;
  bool has_messageid() const;
  private:
  bool _internal_has_messageid() const;
  public:
  void clear_messageid();
  int32_t messageid() const;
  void set_messageid(int32_t value);
  private:
  int32_t _internal_messageid() const;
  void _internal_set_messageid(int32_t value);
  public:

  // optional int32 messageType = 2;
  bool has_messagetype() const;
  private:
  bool _internal_has_messagetype() const;
  public:
  void clear_messagetype();
  int32_t messagetype() const;
  void set_messagetype(int32_t value);
  private:
  int32_t _internal_messagetype() const;
  void _internal_set_messagetype(int32_t value);
  public:

  // optional .sv_rcon.response_t responseType = 3;
  bool has_responsetype() const;
  private:
  bool _internal_has_responsetype() const;
  public:
  void clear_responsetype();
  ::sv_rcon::response_t responsetype() const;
  void set_responsetype(::sv_rcon::response_t value);
  private:
  ::sv_rcon::response_t _internal_responsetype() const;
  void _internal_set_responsetype(::sv_rcon::response_t value);
  public:

  // @@protoc_insertion_point(class_scope:sv_rcon.response)
 private:
  class _Internal;

  template <typename T> friend class ::PROTOBUF_NAMESPACE_ID::Arena::InternalHelper;
  typedef void InternalArenaConstructable_;
  typedef void DestructorSkippable_;
  struct Impl_ {
    ::PROTOBUF_NAMESPACE_ID::internal::HasBits<1> _has_bits_;
    mutable ::PROTOBUF_NAMESPACE_ID::internal::CachedSize _cached_size_;
    ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr responsemsg_;
    ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr responseval_;
    int32_t messageid_;
    int32_t messagetype_;
    int responsetype_;
  };
  union { Impl_ _impl_; };
  friend struct ::TableStruct_sv_5frcon_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// response

// optional int32 messageID = 1;
inline bool response::_internal_has_messageid() const {
  bool value = (_impl_._has_bits_[0] & 0x00000004u) != 0;
  return value;
}
inline bool response::has_messageid() const {
  return _internal_has_messageid();
}
inline void response::clear_messageid() {
  _impl_.messageid_ = 0;
  _impl_._has_bits_[0] &= ~0x00000004u;
}
inline int32_t response::_internal_messageid() const {
  return _impl_.messageid_;
}
inline int32_t response::messageid() const {
  // @@protoc_insertion_point(field_get:sv_rcon.response.messageID)
  return _internal_messageid();
}
inline void response::_internal_set_messageid(int32_t value) {
  _impl_._has_bits_[0] |= 0x00000004u;
  _impl_.messageid_ = value;
}
inline void response::set_messageid(int32_t value) {
  _internal_set_messageid(value);
  // @@protoc_insertion_point(field_set:sv_rcon.response.messageID)
}

// optional int32 messageType = 2;
inline bool response::_internal_has_messagetype() const {
  bool value = (_impl_._has_bits_[0] & 0x00000008u) != 0;
  return value;
}
inline bool response::has_messagetype() const {
  return _internal_has_messagetype();
}
inline void response::clear_messagetype() {
  _impl_.messagetype_ = 0;
  _impl_._has_bits_[0] &= ~0x00000008u;
}
inline int32_t response::_internal_messagetype() const {
  return _impl_.messagetype_;
}
inline int32_t response::messagetype() const {
  // @@protoc_insertion_point(field_get:sv_rcon.response.messageType)
  return _internal_messagetype();
}
inline void response::_internal_set_messagetype(int32_t value) {
  _impl_._has_bits_[0] |= 0x00000008u;
  _impl_.messagetype_ = value;
}
inline void response::set_messagetype(int32_t value) {
  _internal_set_messagetype(value);
  // @@protoc_insertion_point(field_set:sv_rcon.response.messageType)
}

// optional .sv_rcon.response_t responseType = 3;
inline bool response::_internal_has_responsetype() const {
  bool value = (_impl_._has_bits_[0] & 0x00000010u) != 0;
  return value;
}
inline bool response::has_responsetype() const {
  return _internal_has_responsetype();
}
inline void response::clear_responsetype() {
  _impl_.responsetype_ = 0;
  _impl_._has_bits_[0] &= ~0x00000010u;
}
inline ::sv_rcon::response_t response::_internal_responsetype() const {
  return static_cast< ::sv_rcon::response_t >(_impl_.responsetype_);
}
inline ::sv_rcon::response_t response::responsetype() const {
  // @@protoc_insertion_point(field_get:sv_rcon.response.responseType)
  return _internal_responsetype();
}
inline void response::_internal_set_responsetype(::sv_rcon::response_t value) {
  _impl_._has_bits_[0] |= 0x00000010u;
  _impl_.responsetype_ = value;
}
inline void response::set_responsetype(::sv_rcon::response_t value) {
  _internal_set_responsetype(value);
  // @@protoc_insertion_point(field_set:sv_rcon.response.responseType)
}

// optional string responseMsg = 4;
inline bool response::_internal_has_responsemsg() const {
  bool value = (_impl_._has_bits_[0] & 0x00000001u) != 0;
  return value;
}
inline bool response::has_responsemsg() const {
  return _internal_has_responsemsg();
}
inline void response::clear_responsemsg() {
  _impl_.responsemsg_.ClearToEmpty();
  _impl_._has_bits_[0] &= ~0x00000001u;
}
inline const std::string& response::responsemsg() const {
  // @@protoc_insertion_point(field_get:sv_rcon.response.responseMsg)
  return _internal_responsemsg();
}
template <typename ArgT0, typename... ArgT>
inline PROTOBUF_ALWAYS_INLINE
void response::set_responsemsg(ArgT0&& arg0, ArgT... args) {
 _impl_._has_bits_[0] |= 0x00000001u;
 _impl_.responsemsg_.Set(static_cast<ArgT0 &&>(arg0), args..., GetArenaForAllocation());
  // @@protoc_insertion_point(field_set:sv_rcon.response.responseMsg)
}
inline std::string* response::mutable_responsemsg() {
  std::string* _s = _internal_mutable_responsemsg();
  // @@protoc_insertion_point(field_mutable:sv_rcon.response.responseMsg)
  return _s;
}
inline const std::string& response::_internal_responsemsg() const {
  return _impl_.responsemsg_.Get();
}
inline void response::_internal_set_responsemsg(const std::string& value) {
  _impl_._has_bits_[0] |= 0x00000001u;
  _impl_.responsemsg_.Set(value, GetArenaForAllocation());
}
inline std::string* response::_internal_mutable_responsemsg() {
  _impl_._has_bits_[0] |= 0x00000001u;
  return _impl_.responsemsg_.Mutable(GetArenaForAllocation());
}
inline std::string* response::release_responsemsg() {
  // @@protoc_insertion_point(field_release:sv_rcon.response.responseMsg)
  if (!_internal_has_responsemsg()) {
    return nullptr;
  }
  _impl_._has_bits_[0] &= ~0x00000001u;
  auto* p = _impl_.responsemsg_.Release();
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.responsemsg_.IsDefault()) {
    _impl_.responsemsg_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  return p;
}
inline void response::set_allocated_responsemsg(std::string* responsemsg) {
  if (responsemsg != nullptr) {
    _impl_._has_bits_[0] |= 0x00000001u;
  } else {
    _impl_._has_bits_[0] &= ~0x00000001u;
  }
  _impl_.responsemsg_.SetAllocated(responsemsg, GetArenaForAllocation());
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.responsemsg_.IsDefault()) {
    _impl_.responsemsg_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  // @@protoc_insertion_point(field_set_allocated:sv_rcon.response.responseMsg)
}

// optional string responseVal = 5;
inline bool response::_internal_has_responseval() const {
  bool value = (_impl_._has_bits_[0] & 0x00000002u) != 0;
  return value;
}
inline bool response::has_responseval() const {
  return _internal_has_responseval();
}
inline void response::clear_responseval() {
  _impl_.responseval_.ClearToEmpty();
  _impl_._has_bits_[0] &= ~0x00000002u;
}
inline const std::string& response::responseval() const {
  // @@protoc_insertion_point(field_get:sv_rcon.response.responseVal)
  return _internal_responseval();
}
template <typename ArgT0, typename... ArgT>
inline PROTOBUF_ALWAYS_INLINE
void response::set_responseval(ArgT0&& arg0, ArgT... args) {
 _impl_._has_bits_[0] |= 0x00000002u;
 _impl_.responseval_.Set(static_cast<ArgT0 &&>(arg0), args..., GetArenaForAllocation());
  // @@protoc_insertion_point(field_set:sv_rcon.response.responseVal)
}
inline std::string* response::mutable_responseval() {
  std::string* _s = _internal_mutable_responseval();
  // @@protoc_insertion_point(field_mutable:sv_rcon.response.responseVal)
  return _s;
}
inline const std::string& response::_internal_responseval() const {
  return _impl_.responseval_.Get();
}
inline void response::_internal_set_responseval(const std::string& value) {
  _impl_._has_bits_[0] |= 0x00000002u;
  _impl_.responseval_.Set(value, GetArenaForAllocation());
}
inline std::string* response::_internal_mutable_responseval() {
  _impl_._has_bits_[0] |= 0x00000002u;
  return _impl_.responseval_.Mutable(GetArenaForAllocation());
}
inline std::string* response::release_responseval() {
  // @@protoc_insertion_point(field_release:sv_rcon.response.responseVal)
  if (!_internal_has_responseval()) {
    return nullptr;
  }
  _impl_._has_bits_[0] &= ~0x00000002u;
  auto* p = _impl_.responseval_.Release();
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.responseval_.IsDefault()) {
    _impl_.responseval_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  return p;
}
inline void response::set_allocated_responseval(std::string* responseval) {
  if (responseval != nullptr) {
    _impl_._has_bits_[0] |= 0x00000002u;
  } else {
    _impl_._has_bits_[0] &= ~0x00000002u;
  }
  _impl_.responseval_.SetAllocated(responseval, GetArenaForAllocation());
#ifdef PROTOBUF_FORCE_COPY_DEFAULT_STRING
  if (_impl_.responseval_.IsDefault()) {
    _impl_.responseval_.Set("", GetArenaForAllocation());
  }
#endif // PROTOBUF_FORCE_COPY_DEFAULT_STRING
  // @@protoc_insertion_point(field_set_allocated:sv_rcon.response.responseVal)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace sv_rcon

PROTOBUF_NAMESPACE_OPEN

template <> struct is_proto_enum< ::sv_rcon::response_t> : ::std::true_type {};

PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)

#include <thirdparty/protobuf/port_undef.inc>
#endif  // GOOGLE_PROTOBUF_INCLUDED_GOOGLE_PROTOBUF_INCLUDED_sv_5frcon_2eproto
