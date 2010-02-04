// Copyright (c) 2009 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// Declaration of a Windows event trace controller class.
// The controller takes care of creating and manipulating event trace
// sessions.
//
// Event tracing for Windows is a system-provided service that provides
// logging control and high-performance transport for generic, binary trace
// events. Event trace providers register with the system by their name,
// which is a GUID, and can from that point forward receive callbacks that
// start or end tracing and that change their trace level and enable mask.
//
// A trace controller can create an event tracing session, which either
// sends events to a binary file, or to a realtime consumer, or both.
//
// A trace consumer consumes events from zero or one realtime session,
// as well as potentially from multiple binary trace files.
#ifndef BASE_EVENT_TRACE_CONTROLLER_WIN_H_
#define BASE_EVENT_TRACE_CONTROLLER_WIN_H_

#include <windows.h>
#include <wmistr.h>
#include <evntrace.h>
#include <string>
#include "base/basictypes.h"

// Utility class to make it easier to work with EVENT_TRACE_PROPERTIES.
// The EVENT_TRACE_PROPERTIES structure contains information about an
// event tracing session.
class EtwTraceProperties {
 public:
  EtwTraceProperties() {
    memset(buffer_, 0, sizeof(buffer_));
    EVENT_TRACE_PROPERTIES* prop = get();

    prop->Wnode.BufferSize = sizeof(buffer_);
    prop->Wnode.Flags = WNODE_FLAG_TRACED_GUID;
    prop->LoggerNameOffset = sizeof(EVENT_TRACE_PROPERTIES);
    prop->LogFileNameOffset = sizeof(EVENT_TRACE_PROPERTIES) +
                              sizeof(wchar_t) * kMaxStringLen;
  }

  EVENT_TRACE_PROPERTIES* get() {
    return &properties_;
  }
  const EVENT_TRACE_PROPERTIES* get() const {
    return reinterpret_cast<const EVENT_TRACE_PROPERTIES*>(&properties_);
  }

  const wchar_t* GetLoggerName() const {
    return reinterpret_cast<const wchar_t *>(buffer_ + get()->LoggerNameOffset);
  }

  HRESULT SetLoggerName(const wchar_t* logger_name) {
    size_t len = wcslen(logger_name) + 1;
    if (kMaxStringLen < len)
      return E_INVALIDARG;

    memcpy(buffer_ + get()->LoggerNameOffset,
           logger_name,
           sizeof(wchar_t) * len);
    return S_OK;
  }

  const wchar_t* GetLoggerFileName() const {
    return reinterpret_cast<const wchar_t*>(buffer_ + get()->LogFileNameOffset);
  }

  HRESULT SetLoggerFileName(const wchar_t* logger_file_name) {
    size_t len = wcslen(logger_file_name) + 1;
    if (kMaxStringLen < len)
      return E_INVALIDARG;

    memcpy(buffer_ + get()->LogFileNameOffset,
           logger_file_name,
           sizeof(wchar_t) * len);
    return S_OK;
  }

  // Max string len for name and session name is 1024 per documentation.
  static const size_t kMaxStringLen = 1024;
  // Properties buffer allocates space for header and for
  // max length for name and session name.
  static const size_t kBufSize = sizeof(EVENT_TRACE_PROPERTIES)
      + 2 * sizeof(wchar_t) * (kMaxStringLen);

 private:
  // The EVENT_TRACE_PROPERTIES structure needs to be overlaid on a
  // larger buffer to allow storing the logger name and logger file
  // name contiguously with the structure.
  union {
   public:
    // Our properties header.
    EVENT_TRACE_PROPERTIES properties_;
    // The actual size of the buffer is forced by this member.
    char buffer_[kBufSize];
  };

  DISALLOW_COPY_AND_ASSIGN(EtwTraceProperties);
};

// This class implements an ETW controller, which knows how to start and
// stop event tracing sessions, as well as controlling ETW provider
// log levels and enable bit masks under the session.
class EtwTraceController {
 public:
  EtwTraceController();
  ~EtwTraceController();

  // Start a session with given name and properties.
  HRESULT Start(const wchar_t* session_name, EtwTraceProperties* prop);

  // Starts a session tracing to a file with some default properties.
  HRESULT StartFileSession(const wchar_t* session_name,
                           const wchar_t* logfile_path,
                           bool realtime = false);

  // Starts a realtime session with some default properties.
  HRESULT StartRealtimeSession(const wchar_t* session_name,
                               size_t buffer_size);

  // Enables "provider" at "level" for this session.
  // This will cause all providers registered with the GUID
  // "provider" to start tracing at the new level, systemwide.
  HRESULT EnableProvider(const GUID& provider, UCHAR level,
                         ULONG flags = 0xFFFFFFFF);
  // Disables "provider".
  HRESULT DisableProvider(const GUID& provider);

  // Stops our session and retrieve the new properties of the session,
  // properties may be NULL.
  HRESULT Stop(EtwTraceProperties* properties);

  // Flushes our session and retrieve the current properties,
  // properties may be NULL.
  HRESULT Flush(EtwTraceProperties* properties);

  // Static utility functions for controlling
  // sessions we don't necessarily own.
  static HRESULT Start(const wchar_t* session_name,
                       EtwTraceProperties* properties,
                       TRACEHANDLE* session_handle);

  static HRESULT Query(const wchar_t* session_name,
                       EtwTraceProperties* properties);

  static HRESULT Update(const wchar_t* session_name,
                        EtwTraceProperties* properties);

  static HRESULT Stop(const wchar_t* session_name,
                      EtwTraceProperties* properties);
  static HRESULT Flush(const wchar_t* session_name,
                       EtwTraceProperties* properties);

  // Accessors.
  TRACEHANDLE session() const { return session_; }
  const wchar_t* session_name() const { return session_name_.c_str(); }

 private:
  std::wstring session_name_;
  TRACEHANDLE session_;

  DISALLOW_COPY_AND_ASSIGN(EtwTraceController);
};

#endif  // BASE_EVENT_TRACE_CONTROLLER_WIN_H_
