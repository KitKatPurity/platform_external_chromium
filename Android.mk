LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
	base/at_exit.cc \
	base/atomicops_internals_x86_gcc.cc \
	base/base64.cc \
	base/base_paths.cc \
	base/base_paths_posix.cc \
	base/base_switches.cc \
	base/bzip2_error_handler.cc \
	base/cancellation_flag.cc \
	base/command_line.cc \
	base/condition_variable_posix.cc \
	base/crypto/rsa_private_key.cc \
	base/crypto/rsa_private_key_nss.cc \
	base/crypto/signature_creator_nss.cc \
	base/crypto/signature_verifier_nss.cc \
	base/data_pack.cc \
	base/debug_util.cc \
	base/debug_util_posix.cc \
	base/directory_watcher_inotify.cc \
	base/dynamic_annotations.cc \
	base/event_recorder_stubs.cc \
	base/field_trial.cc \
	base/file_descriptor_shuffle.cc \
	base/file_path.cc \
	base/file_util.cc \
	base/file_util_linux.cc \
	base/file_util_posix.cc \
	base/gfx/point.cc \
	base/gfx/rect.cc \
	base/gfx/size.cc \
	base/global_descriptors_posix.cc \
	base/histogram.cc \
	base/hmac_nss.o \
	base/i18n/file_util_icu.cc \
	base/i18n/icu_string_conversions.cc \
	base/i18n/icu_util.cc \
	base/i18n/number_formatting.cc \
	base/i18n/time_formatting.cc \
	base/i18n/word_iterator.cc \
	base/json/json_reader.cc \
	base/json/json_writer.cc \
	base/json/string_escape.cc \
	base/keyboard_code_conversion_gtk.cc \
	base/lazy_instance.cc \
	base/linux_util.cc \
	base/lock.cc \
	base/lock_impl_posix.cc \
	base/logging.cc \
	base/md5.cc \
	base/memory_debug.cc \
	base/message_loop.cc \
	base/message_pump_default.cc \
	base/message_pump_glib.cc \
	base/message_pump_libevent.cc \
	base/mime_util_linux.cc \
	base/native_library_linux.cc \
	base/non_thread_safe.cc \
	base/nss_util.cc \
	base/path_service.cc \
	base/pickle.cc \
	base/platform_file_posix.cc \
	base/platform_thread_posix.cc \
	base/process_linux.cc \
	base/process_posix.cc \
	base/process_util_linux.cc \
	base/process_util_posix.cc \
	base/profiler.cc \
	base/rand_util.cc \
	base/rand_util_posix.cc \
	base/ref_counted.cc \
	base/safe_strerror_posix.cc \
	base/scoped_temp_dir.cc \
	base/setproctitle_linux.c \
	base/sha1.cc \
	base/sha2.cc \
	base/shared_memory_posix.cc \
	base/simple_thread.cc \
	base/stats_table.cc \
	base/string16.cc \
	base/string_piece.cc \
	base/string_split.cc \
	base/string_util.cc \
	base/sync_socket_posix.cc \
	base/sys_info_linux.cc \
	base/sys_info_posix.cc \
	base/sys_string_conversions_linux.cc \
	base/third_party/dmg_fp/dtoa.cc \
	base/third_party/dmg_fp/g_fmt.cc \
	base/third_party/icu/icu_utf.cc \
	base/third_party/nspr/prtime.cc \
	base/third_party/nss/sha512.cc \
	base/third_party/symbolize/demangle.cc \
	base/third_party/symbolize/symbolize.cc \
	base/third_party/xdg_mime/xdgmime.c \
	base/third_party/xdg_mime/xdgmimealias.c \
	base/third_party/xdg_mime/xdgmimecache.c \
	base/third_party/xdg_mime/xdgmimeglob.c \
	base/third_party/xdg_mime/xdgmimeicon.c \
	base/third_party/xdg_mime/xdgmimeint.c \
	base/third_party/xdg_mime/xdgmimemagic.c \
	base/third_party/xdg_mime/xdgmimeparent.c \
	base/third_party/xdg_user_dirs/xdg_user_dir_lookup.cc \
	base/thread.cc \
	base/thread_collision_warner.cc \
	base/thread_local_posix.cc \
	base/thread_local_storage_posix.cc \
	base/time.cc \
	base/time_posix.cc \
	base/timer.cc \
	base/trace_event.cc \
	base/tracked.cc \
	base/tracked_objects.cc \
	base/unix_domain_socket_posix.cc \
	base/utf_offset_string_conversions.cc \
	base/utf_string_conversion_utils.cc \
	base/utf_string_conversions.cc \
	base/values.cc \
	base/version.cc \
	base/waitable_event_posix.cc \
	base/waitable_event_watcher_posix.cc \
	base/watchdog.cc \
	base/worker_pool_linux.cc \
	\
	googleurl/src/gurl.cc \
	googleurl/src/url_canon_etc.cc \
	googleurl/src/url_canon_fileurl.cc \
	googleurl/src/url_canon_host.cc \
	googleurl/src/url_canon_icu.cc \
	googleurl/src/url_canon_internal.cc \
	googleurl/src/url_canon_ip.cc \
	googleurl/src/url_canon_mailtourl.cc \
	googleurl/src/url_canon_path.cc \
	googleurl/src/url_canon_pathurl.cc \
	googleurl/src/url_canon_query.cc \
	googleurl/src/url_canon_relative.cc \
	googleurl/src/url_canon_stdurl.cc \
	googleurl/src/url_parse.cc \
	googleurl/src/url_parse_file.cc \
	googleurl/src/url_util.cc \
	\
	net/base/address_list.cc \
	net/base/cert_database_nss.cc \
	net/base/cert_status_flags.cc \
	net/base/cert_verifier.cc \
	net/base/connection_type_histograms.cc \
	net/base/cookie_monster.cc \
	net/base/data_url.cc \
	net/base/directory_lister.cc \
	net/base/dns_util.cc \
	net/base/escape.cc \
	net/base/ev_root_ca_metadata.cc \
	net/base/file_stream_posix.cc \
	net/base/filter.cc \
	net/base/fixed_host_resolver.cc \
	net/base/gzip_filter.cc \
	net/base/gzip_header.cc \
	net/base/host_cache.cc \
	net/base/host_resolver.cc \
	net/base/host_resolver_impl.cc \
	net/base/host_resolver_proc.cc \
	net/base/https_prober.cc \
	net/base/io_buffer.cc \
	net/base/keygen_handler_nss.cc \
	net/base/listen_socket.cc \
	net/base/load_log.cc \
	net/base/load_log_util.cc \
	net/base/mime_sniffer.cc \
	net/base/mime_util.cc \
	net/base/mock_host_resolver.cc \
	net/base/net_errors.cc \
	net/base/net_module.cc \
	net/base/net_util.cc \
	net/base/net_util_posix.cc \
	net/base/network_change_notifier.cc \
	net/base/network_change_notifier_helper.cc \
	net/base/network_change_notifier_linux.cc \
	net/base/nss_memio.c \
	net/base/platform_mime_util_linux.cc \
	net/base/registry_controlled_domain.cc \
	net/base/sdch_filter.cc \
	net/base/sdch_manager.cc \
	net/base/ssl_client_auth_cache.cc \
	net/base/ssl_config_service.cc \
	net/base/static_cookie_policy.cc \
	net/base/telnet_server.cc \
	net/base/transport_security_state.cc \
	net/base/upload_data.cc \
	net/base/upload_data_stream.cc \
	net/base/x509_certificate.cc \
	net/base/x509_certificate_nss.cc \
	net/disk_cache/addr.cc \
	net/disk_cache/backend_impl.cc \
	net/disk_cache/bitmap.cc \
	net/disk_cache/block_files.cc \
	net/disk_cache/cache_util_posix.cc \
	net/disk_cache/entry_impl.cc \
	net/disk_cache/eviction.cc \
	net/disk_cache/file_lock.cc \
	net/disk_cache/file_posix.cc \
	net/disk_cache/hash.cc \
	net/disk_cache/mapped_file_posix.cc \
	net/disk_cache/mem_backend_impl.cc \
	net/disk_cache/mem_entry_impl.cc \
	net/disk_cache/mem_rankings.cc \
	net/disk_cache/rankings.cc \
	net/disk_cache/sparse_control.cc \
	net/disk_cache/stats.cc \
	net/disk_cache/stats_histogram.cc \
	net/disk_cache/trace.cc \
	net/flip/flip_frame_builder.cc \
	net/flip/flip_framer.cc \
	net/flip/flip_io_buffer.cc \
	net/flip/flip_network_transaction.cc \
	net/flip/flip_session.cc \
	net/flip/flip_session_pool.cc \
	net/flip/flip_stream.cc \
	net/ftp/ftp_auth_cache.cc \
	net/ftp/ftp_ctrl_response_buffer.cc \
	net/ftp/ftp_directory_listing_buffer.cc \
	net/ftp/ftp_directory_listing_parser.cc \
	net/ftp/ftp_directory_listing_parser_ls.cc \
	net/ftp/ftp_directory_listing_parser_mlsd.cc \
	net/ftp/ftp_directory_listing_parser_netware.cc \
	net/ftp/ftp_directory_listing_parser_vms.cc \
	net/ftp/ftp_directory_listing_parser_windows.cc \
	net/ftp/ftp_network_layer.cc \
	net/ftp/ftp_network_transaction.cc \
	net/ftp/ftp_server_type_histograms.cc \
	net/ftp/ftp_util.cc \
	net/http/des.cc \
	net/http/http_auth.cc \
	net/http/http_auth_cache.cc \
	net/http/http_auth_handler.cc \
	net/http/http_auth_handler_basic.cc \
	net/http/http_auth_handler_digest.cc \
	net/http/http_auth_handler_negotiate_posix.cc \
	net/http/http_auth_handler_ntlm.cc \
	net/http/http_auth_handler_ntlm_portable.cc \
	net/http/http_basic_stream.cc \
	net/http/http_byte_range.cc \
	net/http/http_cache.cc \
	net/http/http_cache_transaction.cc \
	net/http/http_chunked_decoder.cc \
	net/http/http_network_layer.cc \
	net/http/http_network_session.cc \
	net/http/http_network_transaction.cc \
	net/http/http_response_headers.cc \
	net/http/http_response_info.cc \
	net/http/http_stream_parser.cc \
	net/http/http_util.cc \
	net/http/http_util_icu.cc \
	net/http/http_vary_data.cc \
	net/http/md4.cc \
	net/http/partial_data.cc \
	net/ocsp/nss_ocsp.cc \
	net/proxy/init_proxy_resolver.cc \
	net/proxy/proxy_config.cc \
	net/proxy/proxy_config_service_linux.cc \
	net/proxy/proxy_info.cc \
	net/proxy/proxy_list.cc \
	net/proxy/proxy_resolver_js_bindings.cc \
	net/proxy/proxy_resolver_v8.cc \
	net/proxy/proxy_script_fetcher.cc \
	net/proxy/proxy_server.cc \
	net/proxy/proxy_service.cc \
	net/proxy/single_threaded_proxy_resolver.cc \
	net/socket/client_socket_factory.cc \
	net/socket/client_socket_handle.cc \
	net/socket/client_socket_pool_base.cc \
	net/socket/socks5_client_socket.cc \
	net/socket/socks_client_socket.cc \
	net/socket/ssl_client_socket_nss.cc \
	net/socket/tcp_client_socket_libevent.cc \
	net/socket/tcp_client_socket_pool.cc \
	net/socket_stream/socket_stream.cc \
	net/socket_stream/socket_stream_metrics.cc \
	net/socket_stream/socket_stream_throttle.cc \
	net/third_party/nss/ssl/authcert.c \
	net/third_party/nss/ssl/bodge/loader.c \
	net/third_party/nss/ssl/bodge/secure_memcmp.c \
	net/third_party/nss/ssl/cmpcert.c \
	net/third_party/nss/ssl/derive.c \
	net/third_party/nss/ssl/nsskea.c \
	net/third_party/nss/ssl/prelib.c \
	net/third_party/nss/ssl/ssl3con.c \
	net/third_party/nss/ssl/ssl3ecc.c \
	net/third_party/nss/ssl/ssl3ext.c \
	net/third_party/nss/ssl/ssl3gthr.c \
	net/third_party/nss/ssl/sslauth.c \
	net/third_party/nss/ssl/sslcon.c \
	net/third_party/nss/ssl/ssldef.c \
	net/third_party/nss/ssl/sslenum.c \
	net/third_party/nss/ssl/sslerr.c \
	net/third_party/nss/ssl/sslgathr.c \
	net/third_party/nss/ssl/sslinfo.c \
	net/third_party/nss/ssl/sslmutex.c \
	net/third_party/nss/ssl/sslnonce.c \
	net/third_party/nss/ssl/sslreveal.c \
	net/third_party/nss/ssl/sslsecur.c \
	net/third_party/nss/ssl/sslsnce.c \
	net/third_party/nss/ssl/sslsock.c \
	net/third_party/nss/ssl/ssltrace.c \
	net/third_party/nss/ssl/sslver.c \
	net/third_party/nss/ssl/unix_err.c \
	net/url_request/url_request.cc \
	net/url_request/url_request_about_job.cc \
	net/url_request/url_request_data_job.cc \
	net/url_request/url_request_error_job.cc \
	net/url_request/url_request_file_dir_job.cc \
	net/url_request/url_request_file_job.cc \
	net/url_request/url_request_filter.cc \
	net/url_request/url_request_http_job.cc \
	net/url_request/url_request_job.cc \
	net/url_request/url_request_job_manager.cc \
	net/url_request/url_request_job_metrics.cc \
	net/url_request/url_request_job_tracker.cc \
	net/url_request/url_request_new_ftp_job.cc \
	net/url_request/url_request_redirect_job.cc \
	net/url_request/url_request_simple_job.cc \
	net/url_request/url_request_view_net_internals_job.cc \
	net/url_request/view_cache_helper.cc \
	net/websockets/websocket.cc \
	net/websockets/websocket_throttle.cc \
	\
	sdch/open-vcdiff/src/addrcache.cc \
	sdch/open-vcdiff/src/adler32.c \
	sdch/open-vcdiff/src/blockhash.cc \
	sdch/open-vcdiff/src/codetable.cc \
	sdch/open-vcdiff/src/decodetable.cc \
	sdch/open-vcdiff/src/encodetable.cc \
	sdch/open-vcdiff/src/headerparser.cc \
	sdch/open-vcdiff/src/instruction_map.cc \
	sdch/open-vcdiff/src/logging.cc \
	sdch/open-vcdiff/src/varint_bigendian.cc \
	sdch/open-vcdiff/src/vcdecoder.cc \
	sdch/open-vcdiff/src/vcdiffengine.cc \
	\
	third_party/icu/source/common/bmpset.cpp \
	third_party/icu/source/common/brkeng.cpp \
	third_party/icu/source/common/brkiter.cpp \
	third_party/icu/source/common/bytestream.cpp \
	third_party/icu/source/common/caniter.cpp \
	third_party/icu/source/common/chariter.cpp \
	third_party/icu/source/common/cmemory.c \
	third_party/icu/source/common/cstring.c \
	third_party/icu/source/common/cwchar.c \
	third_party/icu/source/common/dictbe.cpp \
	third_party/icu/source/common/dtintrv.cpp \
	third_party/icu/source/common/errorcode.cpp \
	third_party/icu/source/common/locbased.cpp \
	third_party/icu/source/common/locid.cpp \
	third_party/icu/source/common/locmap.c \
	third_party/icu/source/common/locutil.cpp \
	third_party/icu/source/common/mutex.cpp \
	third_party/icu/source/common/normlzr.cpp \
	third_party/icu/source/common/parsepos.cpp \
	third_party/icu/source/common/propname.cpp \
	third_party/icu/source/common/propsvec.c \
	third_party/icu/source/common/punycode.c \
	third_party/icu/source/common/putil.c \
	third_party/icu/source/common/rbbi.cpp \
	third_party/icu/source/common/rbbidata.cpp \
	third_party/icu/source/common/rbbinode.cpp \
	third_party/icu/source/common/rbbirb.cpp \
	third_party/icu/source/common/rbbiscan.cpp \
	third_party/icu/source/common/rbbisetb.cpp \
	third_party/icu/source/common/rbbistbl.cpp \
	third_party/icu/source/common/rbbitblb.cpp \
	third_party/icu/source/common/resbund.cpp \
	third_party/icu/source/common/resbund_cnv.cpp \
	third_party/icu/source/common/ruleiter.cpp \
	third_party/icu/source/common/schriter.cpp \
	third_party/icu/source/common/serv.cpp \
	third_party/icu/source/common/servlk.cpp \
	third_party/icu/source/common/servlkf.cpp \
	third_party/icu/source/common/servls.cpp \
	third_party/icu/source/common/servnotf.cpp \
	third_party/icu/source/common/servrbf.cpp \
	third_party/icu/source/common/servslkf.cpp \
	third_party/icu/source/common/stringpiece.cpp \
	third_party/icu/source/common/triedict.cpp \
	third_party/icu/source/common/uarrsort.c \
	third_party/icu/source/common/ubidi.c \
	third_party/icu/source/common/ubidi_props.c \
	third_party/icu/source/common/ubidiln.c \
	third_party/icu/source/common/ubidiwrt.c \
	third_party/icu/source/common/ubrk.cpp \
	third_party/icu/source/common/ucase.c \
	third_party/icu/source/common/ucase_props_data.c \
	third_party/icu/source/common/ucasemap.c \
	third_party/icu/source/common/ucat.c \
	third_party/icu/source/common/uchar.c \
	third_party/icu/source/common/uchriter.cpp \
	third_party/icu/source/common/ucln_cmn.c \
	third_party/icu/source/common/ucmndata.c \
	third_party/icu/source/common/ucnv.c \
	third_party/icu/source/common/ucnv2022.c \
	third_party/icu/source/common/ucnv_bld.c \
	third_party/icu/source/common/ucnv_cb.c \
	third_party/icu/source/common/ucnv_cnv.c \
	third_party/icu/source/common/ucnv_err.c \
	third_party/icu/source/common/ucnv_ext.c \
	third_party/icu/source/common/ucnv_io.c \
	third_party/icu/source/common/ucnv_lmb.c \
	third_party/icu/source/common/ucnv_set.c \
	third_party/icu/source/common/ucnv_u16.c \
	third_party/icu/source/common/ucnv_u32.c \
	third_party/icu/source/common/ucnv_u7.c \
	third_party/icu/source/common/ucnv_u8.c \
	third_party/icu/source/common/ucnvbocu.c \
	third_party/icu/source/common/ucnvdisp.c \
	third_party/icu/source/common/ucnvhz.c \
	third_party/icu/source/common/ucnvisci.c \
	third_party/icu/source/common/ucnvlat1.c \
	third_party/icu/source/common/ucnvmbcs.c \
	third_party/icu/source/common/ucnvscsu.c \
	third_party/icu/source/common/ucnvsel.cpp \
	third_party/icu/source/common/ucol_swp.c \
	third_party/icu/source/common/udata.c \
	third_party/icu/source/common/udatamem.c \
	third_party/icu/source/common/udataswp.c \
	third_party/icu/source/common/uenum.c \
	third_party/icu/source/common/uhash.c \
	third_party/icu/source/common/uhash_us.cpp \
	third_party/icu/source/common/uidna.cpp \
	third_party/icu/source/common/uinit.c \
	third_party/icu/source/common/uinvchar.c \
	third_party/icu/source/common/uiter.cpp \
	third_party/icu/source/common/ulist.c \
	third_party/icu/source/common/uloc.c \
	third_party/icu/source/common/uloc_tag.c \
	third_party/icu/source/common/umapfile.c \
	third_party/icu/source/common/umath.c \
	third_party/icu/source/common/umutex.c \
	third_party/icu/source/common/unames.c \
	third_party/icu/source/common/unifilt.cpp \
	third_party/icu/source/common/unifunct.cpp \
	third_party/icu/source/common/uniset.cpp \
	third_party/icu/source/common/uniset_props.cpp \
	third_party/icu/source/common/unisetspan.cpp \
	third_party/icu/source/common/unistr.cpp \
	third_party/icu/source/common/unistr_case.cpp \
	third_party/icu/source/common/unistr_cnv.cpp \
	third_party/icu/source/common/unistr_props.cpp \
	third_party/icu/source/common/unorm.cpp \
	third_party/icu/source/common/unorm_it.c \
	third_party/icu/source/common/unormcmp.cpp \
	third_party/icu/source/common/uobject.cpp \
	third_party/icu/source/common/uprops.c \
	third_party/icu/source/common/ures_cnv.c \
	third_party/icu/source/common/uresbund.c \
	third_party/icu/source/common/uresdata.c \
	third_party/icu/source/common/usc_impl.c \
	third_party/icu/source/common/uscript.c \
	third_party/icu/source/common/uset.cpp \
	third_party/icu/source/common/uset_props.cpp \
	third_party/icu/source/common/usetiter.cpp \
	third_party/icu/source/common/ushape.c \
	third_party/icu/source/common/usprep.cpp \
	third_party/icu/source/common/ustack.cpp \
	third_party/icu/source/common/ustr_cnv.c \
	third_party/icu/source/common/ustr_wcs.c \
	third_party/icu/source/common/ustrcase.c \
	third_party/icu/source/common/ustrenum.cpp \
	third_party/icu/source/common/ustrfmt.c \
	third_party/icu/source/common/ustring.c \
	third_party/icu/source/common/ustrtrns.c \
	third_party/icu/source/common/utext.cpp \
	third_party/icu/source/common/utf_impl.c \
	third_party/icu/source/common/util.cpp \
	third_party/icu/source/common/util_props.cpp \
	third_party/icu/source/common/utrace.c \
	third_party/icu/source/common/utrie.c \
	third_party/icu/source/common/utrie2.c \
	third_party/icu/source/common/utrie2_builder.c \
	third_party/icu/source/common/utypes.c \
	third_party/icu/source/common/uvector.cpp \
	third_party/icu/source/common/uvectr32.cpp \
	third_party/icu/source/common/wintz.cpp \
	third_party/icu/source/i18n/anytrans.cpp \
	third_party/icu/source/i18n/astro.cpp \
	third_party/icu/source/i18n/basictz.cpp \
	third_party/icu/source/i18n/bms.cpp \
	third_party/icu/source/i18n/bmsearch.cpp \
	third_party/icu/source/i18n/bocsu.c \
	third_party/icu/source/i18n/brktrans.cpp \
	third_party/icu/source/i18n/buddhcal.cpp \
	third_party/icu/source/i18n/calendar.cpp \
	third_party/icu/source/i18n/casetrn.cpp \
	third_party/icu/source/i18n/cecal.cpp \
	third_party/icu/source/i18n/chnsecal.cpp \
	third_party/icu/source/i18n/choicfmt.cpp \
	third_party/icu/source/i18n/coleitr.cpp \
	third_party/icu/source/i18n/coll.cpp \
	third_party/icu/source/i18n/colldata.cpp \
	third_party/icu/source/i18n/coptccal.cpp \
	third_party/icu/source/i18n/cpdtrans.cpp \
	third_party/icu/source/i18n/csdetect.cpp \
	third_party/icu/source/i18n/csmatch.cpp \
	third_party/icu/source/i18n/csr2022.cpp \
	third_party/icu/source/i18n/csrecog.cpp \
	third_party/icu/source/i18n/csrmbcs.cpp \
	third_party/icu/source/i18n/csrsbcs.cpp \
	third_party/icu/source/i18n/csrucode.cpp \
	third_party/icu/source/i18n/csrutf8.cpp \
	third_party/icu/source/i18n/curramt.cpp \
	third_party/icu/source/i18n/currfmt.cpp \
	third_party/icu/source/i18n/currpinf.cpp \
	third_party/icu/source/i18n/currunit.cpp \
	third_party/icu/source/i18n/datefmt.cpp \
	third_party/icu/source/i18n/dcfmtsym.cpp \
	third_party/icu/source/i18n/decimfmt.cpp \
	third_party/icu/source/i18n/digitlst.cpp \
	third_party/icu/source/i18n/dtfmtsym.cpp \
	third_party/icu/source/i18n/dtitvfmt.cpp \
	third_party/icu/source/i18n/dtitvinf.cpp \
	third_party/icu/source/i18n/dtptngen.cpp \
	third_party/icu/source/i18n/dtrule.cpp \
	third_party/icu/source/i18n/esctrn.cpp \
	third_party/icu/source/i18n/ethpccal.cpp \
	third_party/icu/source/i18n/fmtable.cpp \
	third_party/icu/source/i18n/fmtable_cnv.cpp \
	third_party/icu/source/i18n/format.cpp \
	third_party/icu/source/i18n/funcrepl.cpp \
	third_party/icu/source/i18n/gregocal.cpp \
	third_party/icu/source/i18n/gregoimp.cpp \
	third_party/icu/source/i18n/hebrwcal.cpp \
	third_party/icu/source/i18n/indiancal.cpp \
	third_party/icu/source/i18n/inputext.cpp \
	third_party/icu/source/i18n/islamcal.cpp \
	third_party/icu/source/i18n/japancal.cpp \
	third_party/icu/source/i18n/measfmt.cpp \
	third_party/icu/source/i18n/measure.cpp \
	third_party/icu/source/i18n/msgfmt.cpp \
	third_party/icu/source/i18n/name2uni.cpp \
	third_party/icu/source/i18n/nfrs.cpp \
	third_party/icu/source/i18n/nfrule.cpp \
	third_party/icu/source/i18n/nfsubs.cpp \
	third_party/icu/source/i18n/nortrans.cpp \
	third_party/icu/source/i18n/nultrans.cpp \
	third_party/icu/source/i18n/numfmt.cpp \
	third_party/icu/source/i18n/numsys.cpp \
	third_party/icu/source/i18n/olsontz.cpp \
	third_party/icu/source/i18n/persncal.cpp \
	third_party/icu/source/i18n/plurfmt.cpp \
	third_party/icu/source/i18n/plurrule.cpp \
	third_party/icu/source/i18n/quant.cpp \
	third_party/icu/source/i18n/rbnf.cpp \
	third_party/icu/source/i18n/rbt.cpp \
	third_party/icu/source/i18n/rbt_data.cpp \
	third_party/icu/source/i18n/rbt_pars.cpp \
	third_party/icu/source/i18n/rbt_rule.cpp \
	third_party/icu/source/i18n/rbt_set.cpp \
	third_party/icu/source/i18n/rbtz.cpp \
	third_party/icu/source/i18n/regexcmp.cpp \
	third_party/icu/source/i18n/regexst.cpp \
	third_party/icu/source/i18n/reldtfmt.cpp \
	third_party/icu/source/i18n/rematch.cpp \
	third_party/icu/source/i18n/remtrans.cpp \
	third_party/icu/source/i18n/repattrn.cpp \
	third_party/icu/source/i18n/search.cpp \
	third_party/icu/source/i18n/simpletz.cpp \
	third_party/icu/source/i18n/smpdtfmt.cpp \
	third_party/icu/source/i18n/sortkey.cpp \
	third_party/icu/source/i18n/strmatch.cpp \
	third_party/icu/source/i18n/strrepl.cpp \
	third_party/icu/source/i18n/stsearch.cpp \
	third_party/icu/source/i18n/taiwncal.cpp \
	third_party/icu/source/i18n/tblcoll.cpp \
	third_party/icu/source/i18n/timezone.cpp \
	third_party/icu/source/i18n/titletrn.cpp \
	third_party/icu/source/i18n/tmunit.cpp \
	third_party/icu/source/i18n/tmutamt.cpp \
	third_party/icu/source/i18n/tmutfmt.cpp \
	third_party/icu/source/i18n/tolowtrn.cpp \
	third_party/icu/source/i18n/toupptrn.cpp \
	third_party/icu/source/i18n/translit.cpp \
	third_party/icu/source/i18n/transreg.cpp \
	third_party/icu/source/i18n/tridpars.cpp \
	third_party/icu/source/i18n/tzrule.cpp \
	third_party/icu/source/i18n/tztrans.cpp \
	third_party/icu/source/i18n/ucal.cpp \
	third_party/icu/source/i18n/ucln_in.c \
	third_party/icu/source/i18n/ucol.cpp \
	third_party/icu/source/i18n/ucol_bld.cpp \
	third_party/icu/source/i18n/ucol_cnt.cpp \
	third_party/icu/source/i18n/ucol_elm.cpp \
	third_party/icu/source/i18n/ucol_res.cpp \
	third_party/icu/source/i18n/ucol_sit.cpp \
	third_party/icu/source/i18n/ucol_tok.cpp \
	third_party/icu/source/i18n/ucol_wgt.c \
	third_party/icu/source/i18n/ucoleitr.cpp \
	third_party/icu/source/i18n/ucsdet.cpp \
	third_party/icu/source/i18n/ucurr.cpp \
	third_party/icu/source/i18n/udat.cpp \
	third_party/icu/source/i18n/udatpg.cpp \
	third_party/icu/source/i18n/ulocdata.c \
	third_party/icu/source/i18n/umsg.cpp \
	third_party/icu/source/i18n/unesctrn.cpp \
	third_party/icu/source/i18n/uni2name.cpp \
	third_party/icu/source/i18n/unum.cpp \
	third_party/icu/source/i18n/uregex.cpp \
	third_party/icu/source/i18n/uregexc.cpp \
	third_party/icu/source/i18n/usearch.cpp \
	third_party/icu/source/i18n/uspoof.cpp \
	third_party/icu/source/i18n/uspoof_build.cpp \
	third_party/icu/source/i18n/uspoof_buildconf.cpp \
	third_party/icu/source/i18n/uspoof_buildwsconf.cpp \
	third_party/icu/source/i18n/uspoof_impl.cpp \
	third_party/icu/source/i18n/utmscale.c \
	third_party/icu/source/i18n/utrans.cpp \
	third_party/icu/source/i18n/vtzone.cpp \
	third_party/icu/source/i18n/windtfmt.cpp \
	third_party/icu/source/i18n/winnmfmt.cpp \
	third_party/icu/source/i18n/wintzimpl.cpp \
	third_party/icu/source/i18n/zonemeta.cpp \
	third_party/icu/source/i18n/zstrfmt.cpp \
	third_party/libevent/buffer.c \
	third_party/libevent/devpoll.c \
	third_party/libevent/epoll.c \
	third_party/libevent/epoll_sub.c \
	third_party/libevent/evbuffer.c \
	third_party/libevent/evdns.c \
	third_party/libevent/event.c \
	third_party/libevent/event_tagging.c \
	third_party/libevent/evrpc.c \
	third_party/libevent/evutil.c \
	third_party/libevent/http.c \
	third_party/libevent/log.c \
	third_party/libevent/poll.c \
	third_party/libevent/select.c \
	third_party/libevent/signal.c \
	third_party/libevent/strlcpy.c \
	third_party/zlib/contrib/minizip/ioapi.c \
	third_party/zlib/contrib/minizip/unzip.c \
	third_party/zlib/contrib/minizip/zip.c

LOCAL_C_INCLUDES := \
    bionic \
    external/stlport

LOCAL_CFLAGS := -D__SGI_STL_INTERNAL_PAIR_H

LOCAL_MODULE := chromium_net

include $(BUILD_STATIC_LIBRARY)
