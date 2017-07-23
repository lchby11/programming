// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: nestedtype.proto

#ifndef PROTOBUF_nestedtype_2eproto__INCLUDED
#define PROTOBUF_nestedtype_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3004000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3004000 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)
namespace msgtype {
namespace nested {
class SearchResponse;
class SearchResponseDefaultTypeInternal;
extern SearchResponseDefaultTypeInternal _SearchResponse_default_instance_;
class SearchResponse_Result;
class SearchResponse_ResultDefaultTypeInternal;
extern SearchResponse_ResultDefaultTypeInternal _SearchResponse_Result_default_instance_;
class SomeOtherMessage;
class SomeOtherMessageDefaultTypeInternal;
extern SomeOtherMessageDefaultTypeInternal _SomeOtherMessage_default_instance_;
}  // namespace nested
}  // namespace msgtype

namespace msgtype {
namespace nested {

namespace protobuf_nestedtype_2eproto {
// Internal implementation detail -- do not call these.
struct TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[];
  static const ::google::protobuf::uint32 offsets[];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static void InitDefaultsImpl();
};
void AddDescriptors();
void InitDefaults();
}  // namespace protobuf_nestedtype_2eproto

// ===================================================================

class SearchResponse_Result : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:msgtype.nested.SearchResponse.Result) */ {
 public:
  SearchResponse_Result();
  virtual ~SearchResponse_Result();

  SearchResponse_Result(const SearchResponse_Result& from);

  inline SearchResponse_Result& operator=(const SearchResponse_Result& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  SearchResponse_Result(SearchResponse_Result&& from) noexcept
    : SearchResponse_Result() {
    *this = ::std::move(from);
  }

  inline SearchResponse_Result& operator=(SearchResponse_Result&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const SearchResponse_Result& default_instance();

  static inline const SearchResponse_Result* internal_default_instance() {
    return reinterpret_cast<const SearchResponse_Result*>(
               &_SearchResponse_Result_default_instance_);
  }
  static PROTOBUF_CONSTEXPR int const kIndexInFileMessages =
    0;

  void Swap(SearchResponse_Result* other);
  friend void swap(SearchResponse_Result& a, SearchResponse_Result& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline SearchResponse_Result* New() const PROTOBUF_FINAL { return New(NULL); }

  SearchResponse_Result* New(::google::protobuf::Arena* arena) const PROTOBUF_FINAL;
  void CopyFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void MergeFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void CopyFrom(const SearchResponse_Result& from);
  void MergeFrom(const SearchResponse_Result& from);
  void Clear() PROTOBUF_FINAL;
  bool IsInitialized() const PROTOBUF_FINAL;

  size_t ByteSizeLong() const PROTOBUF_FINAL;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) PROTOBUF_FINAL;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const PROTOBUF_FINAL;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const PROTOBUF_FINAL;
  int GetCachedSize() const PROTOBUF_FINAL { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const PROTOBUF_FINAL;
  void InternalSwap(SearchResponse_Result* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const PROTOBUF_FINAL;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // repeated string snippets = 3;
  int snippets_size() const;
  void clear_snippets();
  static const int kSnippetsFieldNumber = 3;
  const ::std::string& snippets(int index) const;
  ::std::string* mutable_snippets(int index);
  void set_snippets(int index, const ::std::string& value);
  #if LANG_CXX11
  void set_snippets(int index, ::std::string&& value);
  #endif
  void set_snippets(int index, const char* value);
  void set_snippets(int index, const char* value, size_t size);
  ::std::string* add_snippets();
  void add_snippets(const ::std::string& value);
  #if LANG_CXX11
  void add_snippets(::std::string&& value);
  #endif
  void add_snippets(const char* value);
  void add_snippets(const char* value, size_t size);
  const ::google::protobuf::RepeatedPtrField< ::std::string>& snippets() const;
  ::google::protobuf::RepeatedPtrField< ::std::string>* mutable_snippets();

  // string url = 1;
  void clear_url();
  static const int kUrlFieldNumber = 1;
  const ::std::string& url() const;
  void set_url(const ::std::string& value);
  #if LANG_CXX11
  void set_url(::std::string&& value);
  #endif
  void set_url(const char* value);
  void set_url(const char* value, size_t size);
  ::std::string* mutable_url();
  ::std::string* release_url();
  void set_allocated_url(::std::string* url);

  // string title = 2;
  void clear_title();
  static const int kTitleFieldNumber = 2;
  const ::std::string& title() const;
  void set_title(const ::std::string& value);
  #if LANG_CXX11
  void set_title(::std::string&& value);
  #endif
  void set_title(const char* value);
  void set_title(const char* value, size_t size);
  ::std::string* mutable_title();
  ::std::string* release_title();
  void set_allocated_title(::std::string* title);

  // @@protoc_insertion_point(class_scope:msgtype.nested.SearchResponse.Result)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::RepeatedPtrField< ::std::string> snippets_;
  ::google::protobuf::internal::ArenaStringPtr url_;
  ::google::protobuf::internal::ArenaStringPtr title_;
  mutable int _cached_size_;
  friend struct protobuf_nestedtype_2eproto::TableStruct;
};
// -------------------------------------------------------------------

class SearchResponse : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:msgtype.nested.SearchResponse) */ {
 public:
  SearchResponse();
  virtual ~SearchResponse();

  SearchResponse(const SearchResponse& from);

  inline SearchResponse& operator=(const SearchResponse& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  SearchResponse(SearchResponse&& from) noexcept
    : SearchResponse() {
    *this = ::std::move(from);
  }

  inline SearchResponse& operator=(SearchResponse&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const SearchResponse& default_instance();

  static inline const SearchResponse* internal_default_instance() {
    return reinterpret_cast<const SearchResponse*>(
               &_SearchResponse_default_instance_);
  }
  static PROTOBUF_CONSTEXPR int const kIndexInFileMessages =
    1;

  void Swap(SearchResponse* other);
  friend void swap(SearchResponse& a, SearchResponse& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline SearchResponse* New() const PROTOBUF_FINAL { return New(NULL); }

  SearchResponse* New(::google::protobuf::Arena* arena) const PROTOBUF_FINAL;
  void CopyFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void MergeFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void CopyFrom(const SearchResponse& from);
  void MergeFrom(const SearchResponse& from);
  void Clear() PROTOBUF_FINAL;
  bool IsInitialized() const PROTOBUF_FINAL;

  size_t ByteSizeLong() const PROTOBUF_FINAL;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) PROTOBUF_FINAL;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const PROTOBUF_FINAL;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const PROTOBUF_FINAL;
  int GetCachedSize() const PROTOBUF_FINAL { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const PROTOBUF_FINAL;
  void InternalSwap(SearchResponse* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const PROTOBUF_FINAL;

  // nested types ----------------------------------------------------

  typedef SearchResponse_Result Result;

  // accessors -------------------------------------------------------

  // repeated .msgtype.nested.SearchResponse.Result result = 1;
  int result_size() const;
  void clear_result();
  static const int kResultFieldNumber = 1;
  const ::msgtype::nested::SearchResponse_Result& result(int index) const;
  ::msgtype::nested::SearchResponse_Result* mutable_result(int index);
  ::msgtype::nested::SearchResponse_Result* add_result();
  ::google::protobuf::RepeatedPtrField< ::msgtype::nested::SearchResponse_Result >*
      mutable_result();
  const ::google::protobuf::RepeatedPtrField< ::msgtype::nested::SearchResponse_Result >&
      result() const;

  // @@protoc_insertion_point(class_scope:msgtype.nested.SearchResponse)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::RepeatedPtrField< ::msgtype::nested::SearchResponse_Result > result_;
  mutable int _cached_size_;
  friend struct protobuf_nestedtype_2eproto::TableStruct;
};
// -------------------------------------------------------------------

class SomeOtherMessage : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:msgtype.nested.SomeOtherMessage) */ {
 public:
  SomeOtherMessage();
  virtual ~SomeOtherMessage();

  SomeOtherMessage(const SomeOtherMessage& from);

  inline SomeOtherMessage& operator=(const SomeOtherMessage& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  SomeOtherMessage(SomeOtherMessage&& from) noexcept
    : SomeOtherMessage() {
    *this = ::std::move(from);
  }

  inline SomeOtherMessage& operator=(SomeOtherMessage&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const SomeOtherMessage& default_instance();

  static inline const SomeOtherMessage* internal_default_instance() {
    return reinterpret_cast<const SomeOtherMessage*>(
               &_SomeOtherMessage_default_instance_);
  }
  static PROTOBUF_CONSTEXPR int const kIndexInFileMessages =
    2;

  void Swap(SomeOtherMessage* other);
  friend void swap(SomeOtherMessage& a, SomeOtherMessage& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline SomeOtherMessage* New() const PROTOBUF_FINAL { return New(NULL); }

  SomeOtherMessage* New(::google::protobuf::Arena* arena) const PROTOBUF_FINAL;
  void CopyFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void MergeFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void CopyFrom(const SomeOtherMessage& from);
  void MergeFrom(const SomeOtherMessage& from);
  void Clear() PROTOBUF_FINAL;
  bool IsInitialized() const PROTOBUF_FINAL;

  size_t ByteSizeLong() const PROTOBUF_FINAL;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) PROTOBUF_FINAL;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const PROTOBUF_FINAL;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const PROTOBUF_FINAL;
  int GetCachedSize() const PROTOBUF_FINAL { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const PROTOBUF_FINAL;
  void InternalSwap(SomeOtherMessage* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const PROTOBUF_FINAL;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // .msgtype.nested.SearchResponse.Result result = 1;
  bool has_result() const;
  void clear_result();
  static const int kResultFieldNumber = 1;
  const ::msgtype::nested::SearchResponse_Result& result() const;
  ::msgtype::nested::SearchResponse_Result* mutable_result();
  ::msgtype::nested::SearchResponse_Result* release_result();
  void set_allocated_result(::msgtype::nested::SearchResponse_Result* result);

  // @@protoc_insertion_point(class_scope:msgtype.nested.SomeOtherMessage)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::msgtype::nested::SearchResponse_Result* result_;
  mutable int _cached_size_;
  friend struct protobuf_nestedtype_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#if !PROTOBUF_INLINE_NOT_IN_HEADERS
#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// SearchResponse_Result

// string url = 1;
inline void SearchResponse_Result::clear_url() {
  url_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& SearchResponse_Result::url() const {
  // @@protoc_insertion_point(field_get:msgtype.nested.SearchResponse.Result.url)
  return url_.GetNoArena();
}
inline void SearchResponse_Result::set_url(const ::std::string& value) {
  
  url_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:msgtype.nested.SearchResponse.Result.url)
}
#if LANG_CXX11
inline void SearchResponse_Result::set_url(::std::string&& value) {
  
  url_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:msgtype.nested.SearchResponse.Result.url)
}
#endif
inline void SearchResponse_Result::set_url(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  url_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:msgtype.nested.SearchResponse.Result.url)
}
inline void SearchResponse_Result::set_url(const char* value, size_t size) {
  
  url_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:msgtype.nested.SearchResponse.Result.url)
}
inline ::std::string* SearchResponse_Result::mutable_url() {
  
  // @@protoc_insertion_point(field_mutable:msgtype.nested.SearchResponse.Result.url)
  return url_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* SearchResponse_Result::release_url() {
  // @@protoc_insertion_point(field_release:msgtype.nested.SearchResponse.Result.url)
  
  return url_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void SearchResponse_Result::set_allocated_url(::std::string* url) {
  if (url != NULL) {
    
  } else {
    
  }
  url_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), url);
  // @@protoc_insertion_point(field_set_allocated:msgtype.nested.SearchResponse.Result.url)
}

// string title = 2;
inline void SearchResponse_Result::clear_title() {
  title_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& SearchResponse_Result::title() const {
  // @@protoc_insertion_point(field_get:msgtype.nested.SearchResponse.Result.title)
  return title_.GetNoArena();
}
inline void SearchResponse_Result::set_title(const ::std::string& value) {
  
  title_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:msgtype.nested.SearchResponse.Result.title)
}
#if LANG_CXX11
inline void SearchResponse_Result::set_title(::std::string&& value) {
  
  title_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:msgtype.nested.SearchResponse.Result.title)
}
#endif
inline void SearchResponse_Result::set_title(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  title_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:msgtype.nested.SearchResponse.Result.title)
}
inline void SearchResponse_Result::set_title(const char* value, size_t size) {
  
  title_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:msgtype.nested.SearchResponse.Result.title)
}
inline ::std::string* SearchResponse_Result::mutable_title() {
  
  // @@protoc_insertion_point(field_mutable:msgtype.nested.SearchResponse.Result.title)
  return title_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* SearchResponse_Result::release_title() {
  // @@protoc_insertion_point(field_release:msgtype.nested.SearchResponse.Result.title)
  
  return title_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void SearchResponse_Result::set_allocated_title(::std::string* title) {
  if (title != NULL) {
    
  } else {
    
  }
  title_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), title);
  // @@protoc_insertion_point(field_set_allocated:msgtype.nested.SearchResponse.Result.title)
}

// repeated string snippets = 3;
inline int SearchResponse_Result::snippets_size() const {
  return snippets_.size();
}
inline void SearchResponse_Result::clear_snippets() {
  snippets_.Clear();
}
inline const ::std::string& SearchResponse_Result::snippets(int index) const {
  // @@protoc_insertion_point(field_get:msgtype.nested.SearchResponse.Result.snippets)
  return snippets_.Get(index);
}
inline ::std::string* SearchResponse_Result::mutable_snippets(int index) {
  // @@protoc_insertion_point(field_mutable:msgtype.nested.SearchResponse.Result.snippets)
  return snippets_.Mutable(index);
}
inline void SearchResponse_Result::set_snippets(int index, const ::std::string& value) {
  // @@protoc_insertion_point(field_set:msgtype.nested.SearchResponse.Result.snippets)
  snippets_.Mutable(index)->assign(value);
}
#if LANG_CXX11
inline void SearchResponse_Result::set_snippets(int index, ::std::string&& value) {
  // @@protoc_insertion_point(field_set:msgtype.nested.SearchResponse.Result.snippets)
  snippets_.Mutable(index)->assign(std::move(value));
}
#endif
inline void SearchResponse_Result::set_snippets(int index, const char* value) {
  GOOGLE_DCHECK(value != NULL);
  snippets_.Mutable(index)->assign(value);
  // @@protoc_insertion_point(field_set_char:msgtype.nested.SearchResponse.Result.snippets)
}
inline void SearchResponse_Result::set_snippets(int index, const char* value, size_t size) {
  snippets_.Mutable(index)->assign(
    reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:msgtype.nested.SearchResponse.Result.snippets)
}
inline ::std::string* SearchResponse_Result::add_snippets() {
  // @@protoc_insertion_point(field_add_mutable:msgtype.nested.SearchResponse.Result.snippets)
  return snippets_.Add();
}
inline void SearchResponse_Result::add_snippets(const ::std::string& value) {
  snippets_.Add()->assign(value);
  // @@protoc_insertion_point(field_add:msgtype.nested.SearchResponse.Result.snippets)
}
#if LANG_CXX11
inline void SearchResponse_Result::add_snippets(::std::string&& value) {
  snippets_.Add(std::move(value));
  // @@protoc_insertion_point(field_add:msgtype.nested.SearchResponse.Result.snippets)
}
#endif
inline void SearchResponse_Result::add_snippets(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  snippets_.Add()->assign(value);
  // @@protoc_insertion_point(field_add_char:msgtype.nested.SearchResponse.Result.snippets)
}
inline void SearchResponse_Result::add_snippets(const char* value, size_t size) {
  snippets_.Add()->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_add_pointer:msgtype.nested.SearchResponse.Result.snippets)
}
inline const ::google::protobuf::RepeatedPtrField< ::std::string>&
SearchResponse_Result::snippets() const {
  // @@protoc_insertion_point(field_list:msgtype.nested.SearchResponse.Result.snippets)
  return snippets_;
}
inline ::google::protobuf::RepeatedPtrField< ::std::string>*
SearchResponse_Result::mutable_snippets() {
  // @@protoc_insertion_point(field_mutable_list:msgtype.nested.SearchResponse.Result.snippets)
  return &snippets_;
}

// -------------------------------------------------------------------

// SearchResponse

// repeated .msgtype.nested.SearchResponse.Result result = 1;
inline int SearchResponse::result_size() const {
  return result_.size();
}
inline void SearchResponse::clear_result() {
  result_.Clear();
}
inline const ::msgtype::nested::SearchResponse_Result& SearchResponse::result(int index) const {
  // @@protoc_insertion_point(field_get:msgtype.nested.SearchResponse.result)
  return result_.Get(index);
}
inline ::msgtype::nested::SearchResponse_Result* SearchResponse::mutable_result(int index) {
  // @@protoc_insertion_point(field_mutable:msgtype.nested.SearchResponse.result)
  return result_.Mutable(index);
}
inline ::msgtype::nested::SearchResponse_Result* SearchResponse::add_result() {
  // @@protoc_insertion_point(field_add:msgtype.nested.SearchResponse.result)
  return result_.Add();
}
inline ::google::protobuf::RepeatedPtrField< ::msgtype::nested::SearchResponse_Result >*
SearchResponse::mutable_result() {
  // @@protoc_insertion_point(field_mutable_list:msgtype.nested.SearchResponse.result)
  return &result_;
}
inline const ::google::protobuf::RepeatedPtrField< ::msgtype::nested::SearchResponse_Result >&
SearchResponse::result() const {
  // @@protoc_insertion_point(field_list:msgtype.nested.SearchResponse.result)
  return result_;
}

// -------------------------------------------------------------------

// SomeOtherMessage

// .msgtype.nested.SearchResponse.Result result = 1;
inline bool SomeOtherMessage::has_result() const {
  return this != internal_default_instance() && result_ != NULL;
}
inline void SomeOtherMessage::clear_result() {
  if (GetArenaNoVirtual() == NULL && result_ != NULL) delete result_;
  result_ = NULL;
}
inline const ::msgtype::nested::SearchResponse_Result& SomeOtherMessage::result() const {
  const ::msgtype::nested::SearchResponse_Result* p = result_;
  // @@protoc_insertion_point(field_get:msgtype.nested.SomeOtherMessage.result)
  return p != NULL ? *p : *reinterpret_cast<const ::msgtype::nested::SearchResponse_Result*>(
      &::msgtype::nested::_SearchResponse_Result_default_instance_);
}
inline ::msgtype::nested::SearchResponse_Result* SomeOtherMessage::mutable_result() {
  
  if (result_ == NULL) {
    result_ = new ::msgtype::nested::SearchResponse_Result;
  }
  // @@protoc_insertion_point(field_mutable:msgtype.nested.SomeOtherMessage.result)
  return result_;
}
inline ::msgtype::nested::SearchResponse_Result* SomeOtherMessage::release_result() {
  // @@protoc_insertion_point(field_release:msgtype.nested.SomeOtherMessage.result)
  
  ::msgtype::nested::SearchResponse_Result* temp = result_;
  result_ = NULL;
  return temp;
}
inline void SomeOtherMessage::set_allocated_result(::msgtype::nested::SearchResponse_Result* result) {
  delete result_;
  result_ = result;
  if (result) {
    
  } else {
    
  }
  // @@protoc_insertion_point(field_set_allocated:msgtype.nested.SomeOtherMessage.result)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__
#endif  // !PROTOBUF_INLINE_NOT_IN_HEADERS
// -------------------------------------------------------------------

// -------------------------------------------------------------------


// @@protoc_insertion_point(namespace_scope)


}  // namespace nested
}  // namespace msgtype

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_nestedtype_2eproto__INCLUDED
