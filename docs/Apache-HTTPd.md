# Apache 2.2.x #

*   <tt>ap*::ap_internal_redirect:internal-redirect(char *, char *)</tt>
    *   This probe fires when an internal redirect is performed. The first argument is the old URI and the second argument is the new URI.
*   <tt>ap*::ap_read_request:read-request-entry(uintptr_t, uintptr_t)</tt>
    *   This probe fires when a request is first read. The first parameter is the request_rec structure in user-space. The second parameter is a conn_rec structure in user-space. This probe fires before the request_rec structure is filled out. There is no value in performing a copyin() on the request_rec, but the pointer value itself can be of value as it will not change through the life of the request.
*   <tt>ap*::ap_read_request:read-request-failure(uintptr_t)</tt>
    *   This probe fires in the event that reading the request from the client fails. The first parameter is the request_rec structure in user-space.
*   <tt>ap*::ap_read_request:read-request-success(uintptr_t, char *, char *, char *, int)</tt>
    *   This probe fires after Apache successfully reads the request from the client. The first parameter is the request_rec structure in user-space. The second argument is the method (GET/POST/etc.). The third argument is the URI. The fourth argument is default server's name. The fifth argument is the status.
*   <tt>ap*::ap_process_request:process-request-entry(uintptr_t, char *)</tt>
    *   This probe fires when a request begins, but after it is read. The first parameter is to the request_rec structure in user-space. The second parameter is the URI itself (for convenience).
*   <tt>ap*::ap_process_request:process-request-return(uintptr_t, char *, int</tt>
    *   This probe fires when a request completes. The first parameter is to the request_rec structure in user-space. The second parameter is the URI itself (for convenience). The last parameter is the access_status (one of the HTTP_ defines).
*   <tt>ap*::proxy_handler:proxy-run(uintptr_t, uintptr_t, uintptr_t, char *, int)</tt>
    *   This probe fires when a proxy attempt commences. The first parameter is the request_rec in user-space. The second argument is the proxy_worker in user-space. The third argument is the proxy_server_conf in user-space. The fourth argument is the URL to which we are going to proxy. The fifth argument is the current attempt of the proxy.
*   <tt>ap*::proxy_handler:proxy-run-finished(uintptr_t, int, int</tt>
    *   This probe first when the proxy action completes. The first parameter is request_rec in user-space. The second parameter is the number of attempts that occurred before completion. The third parameter is the access_status.
*   <tt>ap*::do_rewritelog:rewrite-log(uintptr_t, int, int, char *, char *)</tt>
    *   This probe fires when mod_rewrite would write to the [RewriteLog?](/labs/project-dtrace/wiki/RewriteLog) as if the [RewriteLogLevel?](/labs/project-dtrace/wiki/RewriteLogLevel) were set to 9 (the highest). The first parameter is the request_rec in user-space. The second parameter is the log level at which this should be logged. The third argument is 0 or 1, representing if this request is a subrequest. The fourth arugment is the server name. The fifth argument is the complete line that would be written to the log.

## Hooks Probes ##

> Each hook point in Apache (provided by apr/apr-util) is instrumented with four DTrace probes. A set of probes fires on the entry and return of the hook being called. Additionally, hooks fire immediately prior to the invocation and following the completion of the dispatch of the functions registered against the hook.

*   ap*::hook_function:hookname-entry()
*   ap*::hook_function:hookname-return(int)
    *   the parameter here is the return value for the hook (something like OK or DECLINED)
*   ap*::hook_function:hookname-dispatch-invoke(char *)
    *   the parameter is the name of the function registered that is being invoked.
*   ap*::hook_function:hookname-dispatch-complete(char *, int)
    *   the first parameter is the name of the function that just completed. The second parameter is the return value of that function.

> The following hooks probes are available:

*   <tt>ap*::ap_run_access_checker:access_checker-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_access_checker:access_checker-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_access_checker:access_checker-entry()</tt>
*   <tt>ap*::ap_run_access_checker:access_checker-return(int)</tt>
*   <tt>ap*::ap_run_auth_checker:auth_checker-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_auth_checker:auth_checker-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_auth_checker:auth_checker-entry()</tt>
*   <tt>ap*::ap_run_auth_checker:auth_checker-return(int)</tt>
*   <tt>ap*::proxy_run_canon_handler:canon_handler-dispatch-complete(char *, int)</tt>
*   <tt>ap*::proxy_run_canon_handler:canon_handler-dispatch-invoke(char *)</tt>
*   <tt>ap*::proxy_run_canon_handler:canon_handler-entry()</tt>
*   <tt>ap*::proxy_run_canon_handler:canon_handler-return(int)</tt>
*   <tt>ap*::ap_run_check_user_id:check_user_id-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_check_user_id:check_user_id-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_check_user_id:check_user_id-entry()</tt>
*   <tt>ap*::ap_run_check_user_id:check_user_id-return(int)</tt>
*   <tt>ap*::ap_run_child_init:child_init-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_child_init:child_init-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_child_init:child_init-entry()</tt>
*   <tt>ap*::ap_run_child_init:child_init-return(int)</tt>
*   <tt>ap*::ap_run_create_connection:create_connection-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_create_connection:create_connection-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_create_connection:create_connection-entry()</tt>
*   <tt>ap*::ap_run_create_connection:create_connection-return(int)</tt>
*   <tt>ap*::ap_run_create_request:create_request-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_create_request:create_request-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_create_request:create_request-entry()</tt>
*   <tt>ap*::ap_run_create_request:create_request-return(int)</tt>
*   <tt>ap*::ap_run_default_port:default_port-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_default_port:default_port-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_default_port:default_port-entry()</tt>
*   <tt>ap*::ap_run_default_port:default_port-return(int)</tt>
*   <tt>ap*::ap_run_error_log:error_log-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_error_log:error_log-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_error_log:error_log-entry()</tt>
*   <tt>ap*::ap_run_error_log:error_log-return(int)</tt>
*   <tt>ap*::dav_run_find_liveprop:find_liveprop-dispatch-complete(char *, int)</tt>
*   <tt>ap*::dav_run_find_liveprop:find_liveprop-dispatch-invoke(char *)</tt>
*   <tt>ap*::dav_run_find_liveprop:find_liveprop-entry()</tt>
*   <tt>ap*::dav_run_find_liveprop:find_liveprop-return(int)</tt>
*   <tt>ap*::ap_run_fixups:fixups-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_fixups:fixups-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_fixups:fixups-entry()</tt>
*   <tt>ap*::ap_run_fixups:fixups-return(int)</tt>
*   <tt>ap*::dav_run_gather_propsets:gather_propsets-dispatch-complete(char *, int)</tt>
*   <tt>ap*::dav_run_gather_propsets:gather_propsets-dispatch-invoke(char *)</tt>
*   <tt>ap*::dav_run_gather_propsets:gather_propsets-entry()</tt>
*   <tt>ap*::dav_run_gather_propsets:gather_propsets-return(int)</tt>
*   <tt>ap*::ap_run_get_mgmt_items:get_mgmt_items-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_get_mgmt_items:get_mgmt_items-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_get_mgmt_items:get_mgmt_items-entry()</tt>
*   <tt>ap*::ap_run_get_mgmt_items:get_mgmt_items-return(int)</tt>
*   <tt>ap*::ap_run_get_suexec_identity:get_suexec_identity-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_get_suexec_identity:get_suexec_identity-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_get_suexec_identity:get_suexec_identity-entry()</tt>
*   <tt>ap*::ap_run_get_suexec_identity:get_suexec_identity-return(int)</tt>
*   <tt>ap*::ap_run_handler:handler-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_handler:handler-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_handler:handler-entry()</tt>
*   <tt>ap*::ap_run_handler:handler-return(int)</tt>
*   <tt>ap*::ap_run_header_parser:header_parser-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_header_parser:header_parser-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_header_parser:header_parser-entry()</tt>
*   <tt>ap*::ap_run_header_parser:header_parser-return(int)</tt>
*   <tt>ap*::ap_run_http_scheme:http_scheme-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_http_scheme:http_scheme-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_http_scheme:http_scheme-entry()</tt>
*   <tt>ap*::ap_run_http_scheme:http_scheme-return(int)</tt>
*   <tt>ap*::dav_run_insert_all_liveprops:insert_all_liveprops-dispatch-complete(char *, int)</tt>
*   <tt>ap*::dav_run_insert_all_liveprops:insert_all_liveprops-dispatch-invoke(char *)</tt>
*   <tt>ap*::dav_run_insert_all_liveprops:insert_all_liveprops-entry()</tt>
*   <tt>ap*::dav_run_insert_all_liveprops:insert_all_liveprops-return(int)</tt>
*   <tt>ap*::ap_run_insert_error_filter:insert_error_filter-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_insert_error_filter:insert_error_filter-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_insert_error_filter:insert_error_filter-entry()</tt>
*   <tt>ap*::ap_run_insert_error_filter:insert_error_filter-return(int)</tt>
*   <tt>ap*::ap_run_insert_filter:insert_filter-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_insert_filter:insert_filter-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_insert_filter:insert_filter-entry()</tt>
*   <tt>ap*::ap_run_insert_filter:insert_filter-return(int)</tt>
*   <tt>ap*::ap_run_log_transaction:log_transaction-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_log_transaction:log_transaction-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_log_transaction:log_transaction-entry()</tt>
*   <tt>ap*::ap_run_log_transaction:log_transaction-return(int)</tt>
*   <tt>ap*::ap_run_map_to_storage:map_to_storage-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_map_to_storage:map_to_storage-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_map_to_storage:map_to_storage-entry()</tt>
*   <tt>ap*::ap_run_map_to_storage:map_to_storage-return(int)</tt>
*   <tt>ap*::ap_run_monitor:monitor-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_monitor:monitor-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_monitor:monitor-entry()</tt>
*   <tt>ap*::ap_run_monitor:monitor-return(int)</tt>
*   <tt>ap*::ap_run_open_logs:open_logs-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_open_logs:open_logs-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_open_logs:open_logs-entry()</tt>
*   <tt>ap*::ap_run_open_logs:open_logs-return(int)</tt>
*   <tt>ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-entry()</tt>
*   <tt>ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-return(int)</tt>
*   <tt>ap*::ap_run_post_config:post_config-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_post_config:post_config-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_post_config:post_config-entry()</tt>
*   <tt>ap*::ap_run_post_config:post_config-return(int)</tt>
*   <tt>ap*::ap_run_post_read_request:post_read_request-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_post_read_request:post_read_request-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_post_read_request:post_read_request-entry()</tt>
*   <tt>ap*::ap_run_post_read_request:post_read_request-return(int)</tt>
*   <tt>ap*::proxy_run_post_request:post_request-dispatch-complete(char *, int)</tt>
*   <tt>ap*::proxy_run_post_request:post_request-dispatch-invoke(char *)</tt>
*   <tt>ap*::proxy_run_post_request:post_request-entry()</tt>
*   <tt>ap*::proxy_run_post_request:post_request-return(int)</tt>
*   <tt>ap*::ap_run_pre_config:pre_config-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_pre_config:pre_config-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_pre_config:pre_config-entry()</tt>
*   <tt>ap*::ap_run_pre_config:pre_config-return(int)</tt>
*   <tt>ap*::ap_run_pre_connection:pre_connection-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_pre_connection:pre_connection-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_pre_connection:pre_connection-entry()</tt>
*   <tt>ap*::ap_run_pre_connection:pre_connection-return(int)</tt>
*   <tt>ap*::ap_run_pre_mpm:pre_mpm-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_pre_mpm:pre_mpm-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_pre_mpm:pre_mpm-entry()</tt>
*   <tt>ap*::ap_run_pre_mpm:pre_mpm-return(int)</tt>
*   <tt>ap*::proxy_run_pre_request:pre_request-dispatch-complete(char *, int)</tt>
*   <tt>ap*::proxy_run_pre_request:pre_request-dispatch-invoke(char *)</tt>
*   <tt>ap*::proxy_run_pre_request:pre_request-entry()</tt>
*   <tt>ap*::proxy_run_pre_request:pre_request-return(int)</tt>
*   <tt>ap*::ap_run_process_connection:process_connection-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_process_connection:process_connection-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_process_connection:process_connection-entry()</tt>
*   <tt>ap*::ap_run_process_connection:process_connection-return(int)</tt>
*   <tt>ap*::ap_run_quick_handler:quick_handler-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_quick_handler:quick_handler-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_quick_handler:quick_handler-entry()</tt>
*   <tt>ap*::ap_run_quick_handler:quick_handler-return(int)</tt>
*   <tt>ap*::proxy_run_scheme_handler:scheme_handler-dispatch-complete(char *, int)</tt>
*   <tt>ap*::proxy_run_scheme_handler:scheme_handler-dispatch-invoke(char *)</tt>
*   <tt>ap*::proxy_run_scheme_handler:scheme_handler-entry()</tt>
*   <tt>ap*::proxy_run_scheme_handler:scheme_handler-return(int)</tt>
*   <tt>ap*::ap_run_test_config:test_config-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_test_config:test_config-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_test_config:test_config-entry()</tt>
*   <tt>ap*::ap_run_test_config:test_config-return(int)</tt>
*   <tt>ap*::ap_run_translate_name:translate_name-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_translate_name:translate_name-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_translate_name:translate_name-entry()</tt>
*   <tt>ap*::ap_run_translate_name:translate_name-return(int)</tt>
*   <tt>ap*::ap_run_type_checker:type_checker-dispatch-complete(char *, int)</tt>
*   <tt>ap*::ap_run_type_checker:type_checker-dispatch-invoke(char *)</tt>
*   <tt>ap*::ap_run_type_checker:type_checker-entry()</tt>
*   <tt>ap*::ap_run_type_checker:type_checker-return(int)</tt>

