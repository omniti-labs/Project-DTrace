#pragma D option quiet

ap*::ap_run_access_checker:access_checker-entry
/progenyof(9049)/{
  @phase["access_checker"] = count();
  self->access_checker_starttime = timestamp;
  self->access_checker_vstarttime = vtimestamp;
}
ap*::ap_run_access_checker:access_checker-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["access_checker", self->module] = count();
}
ap*::ap_run_access_checker:access_checker-dispatch-complete
/self->module != 0/
{
  @module_wc["access_checker", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["access_checker", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_access_checker:access_checker-return
/self->access_checker_starttime/
{
  @phase_wc["access_checker"] = sum(((timestamp < self->access_checker_starttime) ? 0 : (timestamp - self->access_checker_starttime))/1000);
  @phase_vt["access_checker"] = sum(((vtimestamp < self->access_checker_vstarttime) ? 0 : (vtimestamp - self->access_checker_vstarttime))/1000);
  self->access_checker_starttime = 0;
  self->access_checker_vstarttime = 0;
}
ap*::ap_run_auth_checker:auth_checker-entry
/progenyof(9049)/{
  @phase["auth_checker"] = count();
  self->auth_checker_starttime = timestamp;
  self->auth_checker_vstarttime = vtimestamp;
}
ap*::ap_run_auth_checker:auth_checker-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["auth_checker", self->module] = count();
}
ap*::ap_run_auth_checker:auth_checker-dispatch-complete
/self->module != 0/
{
  @module_wc["auth_checker", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["auth_checker", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_auth_checker:auth_checker-return
/self->auth_checker_starttime/
{
  @phase_wc["auth_checker"] = sum(((timestamp < self->auth_checker_starttime) ? 0 : (timestamp - self->auth_checker_starttime))/1000);
  @phase_vt["auth_checker"] = sum(((vtimestamp < self->auth_checker_vstarttime) ? 0 : (vtimestamp - self->auth_checker_vstarttime))/1000);
  self->auth_checker_starttime = 0;
  self->auth_checker_vstarttime = 0;
}
ap*::ap_run_check_user_id:check_user_id-entry
/progenyof(9049)/{
  @phase["check_user_id"] = count();
  self->check_user_id_starttime = timestamp;
  self->check_user_id_vstarttime = vtimestamp;
}
ap*::ap_run_check_user_id:check_user_id-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["check_user_id", self->module] = count();
}
ap*::ap_run_check_user_id:check_user_id-dispatch-complete
/self->module != 0/
{
  @module_wc["check_user_id", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["check_user_id", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_check_user_id:check_user_id-return
/self->check_user_id_starttime/
{
  @phase_wc["check_user_id"] = sum(((timestamp < self->check_user_id_starttime) ? 0 : (timestamp - self->check_user_id_starttime))/1000);
  @phase_vt["check_user_id"] = sum(((vtimestamp < self->check_user_id_vstarttime) ? 0 : (vtimestamp - self->check_user_id_vstarttime))/1000);
  self->check_user_id_starttime = 0;
  self->check_user_id_vstarttime = 0;
}
ap*::ap_run_child_init:child_init-entry
/progenyof(9049)/{
  @phase["child_init"] = count();
  self->child_init_starttime = timestamp;
  self->child_init_vstarttime = vtimestamp;
}
ap*::ap_run_child_init:child_init-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["child_init", self->module] = count();
}
ap*::ap_run_child_init:child_init-dispatch-complete
/self->module != 0/
{
  @module_wc["child_init", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["child_init", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_child_init:child_init-return
/self->child_init_starttime/
{
  @phase_wc["child_init"] = sum(((timestamp < self->child_init_starttime) ? 0 : (timestamp - self->child_init_starttime))/1000);
  @phase_vt["child_init"] = sum(((vtimestamp < self->child_init_vstarttime) ? 0 : (vtimestamp - self->child_init_vstarttime))/1000);
  self->child_init_starttime = 0;
  self->child_init_vstarttime = 0;
}
ap*::ap_run_create_connection:create_connection-entry
/progenyof(9049)/{
  @phase["create_connection"] = count();
  self->create_connection_starttime = timestamp;
  self->create_connection_vstarttime = vtimestamp;
}
ap*::ap_run_create_connection:create_connection-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["create_connection", self->module] = count();
}
ap*::ap_run_create_connection:create_connection-dispatch-complete
/self->module != 0/
{
  @module_wc["create_connection", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["create_connection", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_create_connection:create_connection-return
/self->create_connection_starttime/
{
  @phase_wc["create_connection"] = sum(((timestamp < self->create_connection_starttime) ? 0 : (timestamp - self->create_connection_starttime))/1000);
  @phase_vt["create_connection"] = sum(((vtimestamp < self->create_connection_vstarttime) ? 0 : (vtimestamp - self->create_connection_vstarttime))/1000);
  self->create_connection_starttime = 0;
  self->create_connection_vstarttime = 0;
}
ap*::ap_run_create_request:create_request-entry
/progenyof(9049)/{
  @phase["create_request"] = count();
  self->create_request_starttime = timestamp;
  self->create_request_vstarttime = vtimestamp;
}
ap*::ap_run_create_request:create_request-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["create_request", self->module] = count();
}
ap*::ap_run_create_request:create_request-dispatch-complete
/self->module != 0/
{
  @module_wc["create_request", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["create_request", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_create_request:create_request-return
/self->create_request_starttime/
{
  @phase_wc["create_request"] = sum(((timestamp < self->create_request_starttime) ? 0 : (timestamp - self->create_request_starttime))/1000);
  @phase_vt["create_request"] = sum(((vtimestamp < self->create_request_vstarttime) ? 0 : (vtimestamp - self->create_request_vstarttime))/1000);
  self->create_request_starttime = 0;
  self->create_request_vstarttime = 0;
}
ap*::ap_run_default_port:default_port-entry
/progenyof(9049)/{
  @phase["default_port"] = count();
  self->default_port_starttime = timestamp;
  self->default_port_vstarttime = vtimestamp;
}
ap*::ap_run_default_port:default_port-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["default_port", self->module] = count();
}
ap*::ap_run_default_port:default_port-dispatch-complete
/self->module != 0/
{
  @module_wc["default_port", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["default_port", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_default_port:default_port-return
/self->default_port_starttime/
{
  @phase_wc["default_port"] = sum(((timestamp < self->default_port_starttime) ? 0 : (timestamp - self->default_port_starttime))/1000);
  @phase_vt["default_port"] = sum(((vtimestamp < self->default_port_vstarttime) ? 0 : (vtimestamp - self->default_port_vstarttime))/1000);
  self->default_port_starttime = 0;
  self->default_port_vstarttime = 0;
}
ap*::ap_run_error_log:error_log-entry
/progenyof(9049)/{
  @phase["error_log"] = count();
  self->error_log_starttime = timestamp;
  self->error_log_vstarttime = vtimestamp;
}
ap*::ap_run_error_log:error_log-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["error_log", self->module] = count();
}
ap*::ap_run_error_log:error_log-dispatch-complete
/self->module != 0/
{
  @module_wc["error_log", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["error_log", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_error_log:error_log-return
/self->error_log_starttime/
{
  @phase_wc["error_log"] = sum(((timestamp < self->error_log_starttime) ? 0 : (timestamp - self->error_log_starttime))/1000);
  @phase_vt["error_log"] = sum(((vtimestamp < self->error_log_vstarttime) ? 0 : (vtimestamp - self->error_log_vstarttime))/1000);
  self->error_log_starttime = 0;
  self->error_log_vstarttime = 0;
}
ap*::ap_run_fixups:fixups-entry
/progenyof(9049)/{
  @phase["fixups"] = count();
  self->fixups_starttime = timestamp;
  self->fixups_vstarttime = vtimestamp;
}
ap*::ap_run_fixups:fixups-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["fixups", self->module] = count();
}
ap*::ap_run_fixups:fixups-dispatch-complete
/self->module != 0/
{
  @module_wc["fixups", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["fixups", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_fixups:fixups-return
/self->fixups_starttime/
{
  @phase_wc["fixups"] = sum(((timestamp < self->fixups_starttime) ? 0 : (timestamp - self->fixups_starttime))/1000);
  @phase_vt["fixups"] = sum(((vtimestamp < self->fixups_vstarttime) ? 0 : (vtimestamp - self->fixups_vstarttime))/1000);
  self->fixups_starttime = 0;
  self->fixups_vstarttime = 0;
}
ap*::ap_run_get_mgmt_items:get_mgmt_items-entry
/progenyof(9049)/{
  @phase["get_mgmt_items"] = count();
  self->get_mgmt_items_starttime = timestamp;
  self->get_mgmt_items_vstarttime = vtimestamp;
}
ap*::ap_run_get_mgmt_items:get_mgmt_items-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["get_mgmt_items", self->module] = count();
}
ap*::ap_run_get_mgmt_items:get_mgmt_items-dispatch-complete
/self->module != 0/
{
  @module_wc["get_mgmt_items", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["get_mgmt_items", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_get_mgmt_items:get_mgmt_items-return
/self->get_mgmt_items_starttime/
{
  @phase_wc["get_mgmt_items"] = sum(((timestamp < self->get_mgmt_items_starttime) ? 0 : (timestamp - self->get_mgmt_items_starttime))/1000);
  @phase_vt["get_mgmt_items"] = sum(((vtimestamp < self->get_mgmt_items_vstarttime) ? 0 : (vtimestamp - self->get_mgmt_items_vstarttime))/1000);
  self->get_mgmt_items_starttime = 0;
  self->get_mgmt_items_vstarttime = 0;
}
ap*::ap_run_get_suexec_identity:get_suexec_identity-entry
/progenyof(9049)/{
  @phase["get_suexec_identity"] = count();
  self->get_suexec_identity_starttime = timestamp;
  self->get_suexec_identity_vstarttime = vtimestamp;
}
ap*::ap_run_get_suexec_identity:get_suexec_identity-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["get_suexec_identity", self->module] = count();
}
ap*::ap_run_get_suexec_identity:get_suexec_identity-dispatch-complete
/self->module != 0/
{
  @module_wc["get_suexec_identity", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["get_suexec_identity", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_get_suexec_identity:get_suexec_identity-return
/self->get_suexec_identity_starttime/
{
  @phase_wc["get_suexec_identity"] = sum(((timestamp < self->get_suexec_identity_starttime) ? 0 : (timestamp - self->get_suexec_identity_starttime))/1000);
  @phase_vt["get_suexec_identity"] = sum(((vtimestamp < self->get_suexec_identity_vstarttime) ? 0 : (vtimestamp - self->get_suexec_identity_vstarttime))/1000);
  self->get_suexec_identity_starttime = 0;
  self->get_suexec_identity_vstarttime = 0;
}
ap*::ap_run_handler:handler-entry
/progenyof(9049)/{
  @phase["handler"] = count();
  self->handler_starttime = timestamp;
  self->handler_vstarttime = vtimestamp;
}
ap*::ap_run_handler:handler-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["handler", self->module] = count();
}
ap*::ap_run_handler:handler-dispatch-complete
/self->module != 0/
{
  @module_wc["handler", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["handler", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_handler:handler-return
/self->handler_starttime/
{
  @phase_wc["handler"] = sum(((timestamp < self->handler_starttime) ? 0 : (timestamp - self->handler_starttime))/1000);
  @phase_vt["handler"] = sum(((vtimestamp < self->handler_vstarttime) ? 0 : (vtimestamp - self->handler_vstarttime))/1000);
  self->handler_starttime = 0;
  self->handler_vstarttime = 0;
}
ap*::ap_run_header_parser:header_parser-entry
/progenyof(9049)/{
  @phase["header_parser"] = count();
  self->header_parser_starttime = timestamp;
  self->header_parser_vstarttime = vtimestamp;
}
ap*::ap_run_header_parser:header_parser-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["header_parser", self->module] = count();
}
ap*::ap_run_header_parser:header_parser-dispatch-complete
/self->module != 0/
{
  @module_wc["header_parser", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["header_parser", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_header_parser:header_parser-return
/self->header_parser_starttime/
{
  @phase_wc["header_parser"] = sum(((timestamp < self->header_parser_starttime) ? 0 : (timestamp - self->header_parser_starttime))/1000);
  @phase_vt["header_parser"] = sum(((vtimestamp < self->header_parser_vstarttime) ? 0 : (vtimestamp - self->header_parser_vstarttime))/1000);
  self->header_parser_starttime = 0;
  self->header_parser_vstarttime = 0;
}
ap*::ap_run_http_scheme:http_scheme-entry
/progenyof(9049)/{
  @phase["http_scheme"] = count();
  self->http_scheme_starttime = timestamp;
  self->http_scheme_vstarttime = vtimestamp;
}
ap*::ap_run_http_scheme:http_scheme-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["http_scheme", self->module] = count();
}
ap*::ap_run_http_scheme:http_scheme-dispatch-complete
/self->module != 0/
{
  @module_wc["http_scheme", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["http_scheme", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_http_scheme:http_scheme-return
/self->http_scheme_starttime/
{
  @phase_wc["http_scheme"] = sum(((timestamp < self->http_scheme_starttime) ? 0 : (timestamp - self->http_scheme_starttime))/1000);
  @phase_vt["http_scheme"] = sum(((vtimestamp < self->http_scheme_vstarttime) ? 0 : (vtimestamp - self->http_scheme_vstarttime))/1000);
  self->http_scheme_starttime = 0;
  self->http_scheme_vstarttime = 0;
}
ap*::ap_run_insert_error_filter:insert_error_filter-entry
/progenyof(9049)/{
  @phase["insert_error_filter"] = count();
  self->insert_error_filter_starttime = timestamp;
  self->insert_error_filter_vstarttime = vtimestamp;
}
ap*::ap_run_insert_error_filter:insert_error_filter-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["insert_error_filter", self->module] = count();
}
ap*::ap_run_insert_error_filter:insert_error_filter-dispatch-complete
/self->module != 0/
{
  @module_wc["insert_error_filter", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["insert_error_filter", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_insert_error_filter:insert_error_filter-return
/self->insert_error_filter_starttime/
{
  @phase_wc["insert_error_filter"] = sum(((timestamp < self->insert_error_filter_starttime) ? 0 : (timestamp - self->insert_error_filter_starttime))/1000);
  @phase_vt["insert_error_filter"] = sum(((vtimestamp < self->insert_error_filter_vstarttime) ? 0 : (vtimestamp - self->insert_error_filter_vstarttime))/1000);
  self->insert_error_filter_starttime = 0;
  self->insert_error_filter_vstarttime = 0;
}
ap*::ap_run_insert_filter:insert_filter-entry
/progenyof(9049)/{
  @phase["insert_filter"] = count();
  self->insert_filter_starttime = timestamp;
  self->insert_filter_vstarttime = vtimestamp;
}
ap*::ap_run_insert_filter:insert_filter-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["insert_filter", self->module] = count();
}
ap*::ap_run_insert_filter:insert_filter-dispatch-complete
/self->module != 0/
{
  @module_wc["insert_filter", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["insert_filter", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_insert_filter:insert_filter-return
/self->insert_filter_starttime/
{
  @phase_wc["insert_filter"] = sum(((timestamp < self->insert_filter_starttime) ? 0 : (timestamp - self->insert_filter_starttime))/1000);
  @phase_vt["insert_filter"] = sum(((vtimestamp < self->insert_filter_vstarttime) ? 0 : (vtimestamp - self->insert_filter_vstarttime))/1000);
  self->insert_filter_starttime = 0;
  self->insert_filter_vstarttime = 0;
}
ap*::ap_run_log_transaction:log_transaction-entry
/progenyof(9049)/{
  @phase["log_transaction"] = count();
  self->log_transaction_starttime = timestamp;
  self->log_transaction_vstarttime = vtimestamp;
}
ap*::ap_run_log_transaction:log_transaction-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["log_transaction", self->module] = count();
}
ap*::ap_run_log_transaction:log_transaction-dispatch-complete
/self->module != 0/
{
  @module_wc["log_transaction", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["log_transaction", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_log_transaction:log_transaction-return
/self->log_transaction_starttime/
{
  @phase_wc["log_transaction"] = sum(((timestamp < self->log_transaction_starttime) ? 0 : (timestamp - self->log_transaction_starttime))/1000);
  @phase_vt["log_transaction"] = sum(((vtimestamp < self->log_transaction_vstarttime) ? 0 : (vtimestamp - self->log_transaction_vstarttime))/1000);
  self->log_transaction_starttime = 0;
  self->log_transaction_vstarttime = 0;
}
ap*::ap_run_map_to_storage:map_to_storage-entry
/progenyof(9049)/{
  @phase["map_to_storage"] = count();
  self->map_to_storage_starttime = timestamp;
  self->map_to_storage_vstarttime = vtimestamp;
}
ap*::ap_run_map_to_storage:map_to_storage-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["map_to_storage", self->module] = count();
}
ap*::ap_run_map_to_storage:map_to_storage-dispatch-complete
/self->module != 0/
{
  @module_wc["map_to_storage", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["map_to_storage", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_map_to_storage:map_to_storage-return
/self->map_to_storage_starttime/
{
  @phase_wc["map_to_storage"] = sum(((timestamp < self->map_to_storage_starttime) ? 0 : (timestamp - self->map_to_storage_starttime))/1000);
  @phase_vt["map_to_storage"] = sum(((vtimestamp < self->map_to_storage_vstarttime) ? 0 : (vtimestamp - self->map_to_storage_vstarttime))/1000);
  self->map_to_storage_starttime = 0;
  self->map_to_storage_vstarttime = 0;
}
ap*::ap_run_monitor:monitor-entry
/progenyof(9049)/{
  @phase["monitor"] = count();
  self->monitor_starttime = timestamp;
  self->monitor_vstarttime = vtimestamp;
}
ap*::ap_run_monitor:monitor-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["monitor", self->module] = count();
}
ap*::ap_run_monitor:monitor-dispatch-complete
/self->module != 0/
{
  @module_wc["monitor", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["monitor", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_monitor:monitor-return
/self->monitor_starttime/
{
  @phase_wc["monitor"] = sum(((timestamp < self->monitor_starttime) ? 0 : (timestamp - self->monitor_starttime))/1000);
  @phase_vt["monitor"] = sum(((vtimestamp < self->monitor_vstarttime) ? 0 : (vtimestamp - self->monitor_vstarttime))/1000);
  self->monitor_starttime = 0;
  self->monitor_vstarttime = 0;
}
ap*::ap_run_open_logs:open_logs-entry
/progenyof(9049)/{
  @phase["open_logs"] = count();
  self->open_logs_starttime = timestamp;
  self->open_logs_vstarttime = vtimestamp;
}
ap*::ap_run_open_logs:open_logs-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["open_logs", self->module] = count();
}
ap*::ap_run_open_logs:open_logs-dispatch-complete
/self->module != 0/
{
  @module_wc["open_logs", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["open_logs", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_open_logs:open_logs-return
/self->open_logs_starttime/
{
  @phase_wc["open_logs"] = sum(((timestamp < self->open_logs_starttime) ? 0 : (timestamp - self->open_logs_starttime))/1000);
  @phase_vt["open_logs"] = sum(((vtimestamp < self->open_logs_vstarttime) ? 0 : (vtimestamp - self->open_logs_vstarttime))/1000);
  self->open_logs_starttime = 0;
  self->open_logs_vstarttime = 0;
}
ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-entry
/progenyof(9049)/{
  @phase["optional_fn_retrieve"] = count();
  self->optional_fn_retrieve_starttime = timestamp;
  self->optional_fn_retrieve_vstarttime = vtimestamp;
}
ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["optional_fn_retrieve", self->module] = count();
}
ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-dispatch-complete
/self->module != 0/
{
  @module_wc["optional_fn_retrieve", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["optional_fn_retrieve", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_optional_fn_retrieve:optional_fn_retrieve-return
/self->optional_fn_retrieve_starttime/
{
  @phase_wc["optional_fn_retrieve"] = sum(((timestamp < self->optional_fn_retrieve_starttime) ? 0 : (timestamp - self->optional_fn_retrieve_starttime))/1000);
  @phase_vt["optional_fn_retrieve"] = sum(((vtimestamp < self->optional_fn_retrieve_vstarttime) ? 0 : (vtimestamp - self->optional_fn_retrieve_vstarttime))/1000);
  self->optional_fn_retrieve_starttime = 0;
  self->optional_fn_retrieve_vstarttime = 0;
}
ap*::ap_run_post_config:post_config-entry
/progenyof(9049)/{
  @phase["post_config"] = count();
  self->post_config_starttime = timestamp;
  self->post_config_vstarttime = vtimestamp;
}
ap*::ap_run_post_config:post_config-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["post_config", self->module] = count();
}
ap*::ap_run_post_config:post_config-dispatch-complete
/self->module != 0/
{
  @module_wc["post_config", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["post_config", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_post_config:post_config-return
/self->post_config_starttime/
{
  @phase_wc["post_config"] = sum(((timestamp < self->post_config_starttime) ? 0 : (timestamp - self->post_config_starttime))/1000);
  @phase_vt["post_config"] = sum(((vtimestamp < self->post_config_vstarttime) ? 0 : (vtimestamp - self->post_config_vstarttime))/1000);
  self->post_config_starttime = 0;
  self->post_config_vstarttime = 0;
}
ap*::ap_run_post_read_request:post_read_request-entry
/progenyof(9049)/{
  @phase["post_read_request"] = count();
  self->post_read_request_starttime = timestamp;
  self->post_read_request_vstarttime = vtimestamp;
}
ap*::ap_run_post_read_request:post_read_request-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["post_read_request", self->module] = count();
}
ap*::ap_run_post_read_request:post_read_request-dispatch-complete
/self->module != 0/
{
  @module_wc["post_read_request", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["post_read_request", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_post_read_request:post_read_request-return
/self->post_read_request_starttime/
{
  @phase_wc["post_read_request"] = sum(((timestamp < self->post_read_request_starttime) ? 0 : (timestamp - self->post_read_request_starttime))/1000);
  @phase_vt["post_read_request"] = sum(((vtimestamp < self->post_read_request_vstarttime) ? 0 : (vtimestamp - self->post_read_request_vstarttime))/1000);
  self->post_read_request_starttime = 0;
  self->post_read_request_vstarttime = 0;
}
ap*::ap_run_pre_config:pre_config-entry
/progenyof(9049)/{
  @phase["pre_config"] = count();
  self->pre_config_starttime = timestamp;
  self->pre_config_vstarttime = vtimestamp;
}
ap*::ap_run_pre_config:pre_config-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["pre_config", self->module] = count();
}
ap*::ap_run_pre_config:pre_config-dispatch-complete
/self->module != 0/
{
  @module_wc["pre_config", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["pre_config", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_pre_config:pre_config-return
/self->pre_config_starttime/
{
  @phase_wc["pre_config"] = sum(((timestamp < self->pre_config_starttime) ? 0 : (timestamp - self->pre_config_starttime))/1000);
  @phase_vt["pre_config"] = sum(((vtimestamp < self->pre_config_vstarttime) ? 0 : (vtimestamp - self->pre_config_vstarttime))/1000);
  self->pre_config_starttime = 0;
  self->pre_config_vstarttime = 0;
}
ap*::ap_run_pre_connection:pre_connection-entry
/progenyof(9049)/{
  @phase["pre_connection"] = count();
  self->pre_connection_starttime = timestamp;
  self->pre_connection_vstarttime = vtimestamp;
}
ap*::ap_run_pre_connection:pre_connection-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["pre_connection", self->module] = count();
}
ap*::ap_run_pre_connection:pre_connection-dispatch-complete
/self->module != 0/
{
  @module_wc["pre_connection", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["pre_connection", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_pre_connection:pre_connection-return
/self->pre_connection_starttime/
{
  @phase_wc["pre_connection"] = sum(((timestamp < self->pre_connection_starttime) ? 0 : (timestamp - self->pre_connection_starttime))/1000);
  @phase_vt["pre_connection"] = sum(((vtimestamp < self->pre_connection_vstarttime) ? 0 : (vtimestamp - self->pre_connection_vstarttime))/1000);
  self->pre_connection_starttime = 0;
  self->pre_connection_vstarttime = 0;
}
ap*::ap_run_pre_mpm:pre_mpm-entry
/progenyof(9049)/{
  @phase["pre_mpm"] = count();
  self->pre_mpm_starttime = timestamp;
  self->pre_mpm_vstarttime = vtimestamp;
}
ap*::ap_run_pre_mpm:pre_mpm-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["pre_mpm", self->module] = count();
}
ap*::ap_run_pre_mpm:pre_mpm-dispatch-complete
/self->module != 0/
{
  @module_wc["pre_mpm", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["pre_mpm", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_pre_mpm:pre_mpm-return
/self->pre_mpm_starttime/
{
  @phase_wc["pre_mpm"] = sum(((timestamp < self->pre_mpm_starttime) ? 0 : (timestamp - self->pre_mpm_starttime))/1000);
  @phase_vt["pre_mpm"] = sum(((vtimestamp < self->pre_mpm_vstarttime) ? 0 : (vtimestamp - self->pre_mpm_vstarttime))/1000);
  self->pre_mpm_starttime = 0;
  self->pre_mpm_vstarttime = 0;
}
ap*::ap_run_process_connection:process_connection-entry
/progenyof(9049)/{
  @phase["process_connection"] = count();
  self->process_connection_starttime = timestamp;
  self->process_connection_vstarttime = vtimestamp;
}
ap*::ap_run_process_connection:process_connection-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["process_connection", self->module] = count();
}
ap*::ap_run_process_connection:process_connection-dispatch-complete
/self->module != 0/
{
  @module_wc["process_connection", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["process_connection", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_process_connection:process_connection-return
/self->process_connection_starttime/
{
  @phase_wc["process_connection"] = sum(((timestamp < self->process_connection_starttime) ? 0 : (timestamp - self->process_connection_starttime))/1000);
  @phase_vt["process_connection"] = sum(((vtimestamp < self->process_connection_vstarttime) ? 0 : (vtimestamp - self->process_connection_vstarttime))/1000);
  self->process_connection_starttime = 0;
  self->process_connection_vstarttime = 0;
}
ap*::ap_run_quick_handler:quick_handler-entry
/progenyof(9049)/{
  @phase["quick_handler"] = count();
  self->quick_handler_starttime = timestamp;
  self->quick_handler_vstarttime = vtimestamp;
}
ap*::ap_run_quick_handler:quick_handler-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["quick_handler", self->module] = count();
}
ap*::ap_run_quick_handler:quick_handler-dispatch-complete
/self->module != 0/
{
  @module_wc["quick_handler", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["quick_handler", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_quick_handler:quick_handler-return
/self->quick_handler_starttime/
{
  @phase_wc["quick_handler"] = sum(((timestamp < self->quick_handler_starttime) ? 0 : (timestamp - self->quick_handler_starttime))/1000);
  @phase_vt["quick_handler"] = sum(((vtimestamp < self->quick_handler_vstarttime) ? 0 : (vtimestamp - self->quick_handler_vstarttime))/1000);
  self->quick_handler_starttime = 0;
  self->quick_handler_vstarttime = 0;
}
ap*::ap_run_test_config:test_config-entry
/progenyof(9049)/{
  @phase["test_config"] = count();
  self->test_config_starttime = timestamp;
  self->test_config_vstarttime = vtimestamp;
}
ap*::ap_run_test_config:test_config-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["test_config", self->module] = count();
}
ap*::ap_run_test_config:test_config-dispatch-complete
/self->module != 0/
{
  @module_wc["test_config", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["test_config", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_test_config:test_config-return
/self->test_config_starttime/
{
  @phase_wc["test_config"] = sum(((timestamp < self->test_config_starttime) ? 0 : (timestamp - self->test_config_starttime))/1000);
  @phase_vt["test_config"] = sum(((vtimestamp < self->test_config_vstarttime) ? 0 : (vtimestamp - self->test_config_vstarttime))/1000);
  self->test_config_starttime = 0;
  self->test_config_vstarttime = 0;
}
ap*::ap_run_translate_name:translate_name-entry
/progenyof(9049)/{
  @phase["translate_name"] = count();
  self->translate_name_starttime = timestamp;
  self->translate_name_vstarttime = vtimestamp;
}
ap*::ap_run_translate_name:translate_name-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["translate_name", self->module] = count();
}
ap*::ap_run_translate_name:translate_name-dispatch-complete
/self->module != 0/
{
  @module_wc["translate_name", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["translate_name", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_translate_name:translate_name-return
/self->translate_name_starttime/
{
  @phase_wc["translate_name"] = sum(((timestamp < self->translate_name_starttime) ? 0 : (timestamp - self->translate_name_starttime))/1000);
  @phase_vt["translate_name"] = sum(((vtimestamp < self->translate_name_vstarttime) ? 0 : (vtimestamp - self->translate_name_vstarttime))/1000);
  self->translate_name_starttime = 0;
  self->translate_name_vstarttime = 0;
}
ap*::ap_run_type_checker:type_checker-entry
/progenyof(9049)/{
  @phase["type_checker"] = count();
  self->type_checker_starttime = timestamp;
  self->type_checker_vstarttime = vtimestamp;
}
ap*::ap_run_type_checker:type_checker-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["type_checker", self->module] = count();
}
ap*::ap_run_type_checker:type_checker-dispatch-complete
/self->module != 0/
{
  @module_wc["type_checker", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["type_checker", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::ap_run_type_checker:type_checker-return
/self->type_checker_starttime/
{
  @phase_wc["type_checker"] = sum(((timestamp < self->type_checker_starttime) ? 0 : (timestamp - self->type_checker_starttime))/1000);
  @phase_vt["type_checker"] = sum(((vtimestamp < self->type_checker_vstarttime) ? 0 : (vtimestamp - self->type_checker_vstarttime))/1000);
  self->type_checker_starttime = 0;
  self->type_checker_vstarttime = 0;
}
ap*::dav_run_find_liveprop:find_liveprop-entry
/progenyof(9049)/{
  @phase["find_liveprop"] = count();
  self->find_liveprop_starttime = timestamp;
  self->find_liveprop_vstarttime = vtimestamp;
}
ap*::dav_run_find_liveprop:find_liveprop-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["find_liveprop", self->module] = count();
}
ap*::dav_run_find_liveprop:find_liveprop-dispatch-complete
/self->module != 0/
{
  @module_wc["find_liveprop", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["find_liveprop", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::dav_run_find_liveprop:find_liveprop-return
/self->find_liveprop_starttime/
{
  @phase_wc["find_liveprop"] = sum(((timestamp < self->find_liveprop_starttime) ? 0 : (timestamp - self->find_liveprop_starttime))/1000);
  @phase_vt["find_liveprop"] = sum(((vtimestamp < self->find_liveprop_vstarttime) ? 0 : (vtimestamp - self->find_liveprop_vstarttime))/1000);
  self->find_liveprop_starttime = 0;
  self->find_liveprop_vstarttime = 0;
}
ap*::dav_run_gather_propsets:gather_propsets-entry
/progenyof(9049)/{
  @phase["gather_propsets"] = count();
  self->gather_propsets_starttime = timestamp;
  self->gather_propsets_vstarttime = vtimestamp;
}
ap*::dav_run_gather_propsets:gather_propsets-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["gather_propsets", self->module] = count();
}
ap*::dav_run_gather_propsets:gather_propsets-dispatch-complete
/self->module != 0/
{
  @module_wc["gather_propsets", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["gather_propsets", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::dav_run_gather_propsets:gather_propsets-return
/self->gather_propsets_starttime/
{
  @phase_wc["gather_propsets"] = sum(((timestamp < self->gather_propsets_starttime) ? 0 : (timestamp - self->gather_propsets_starttime))/1000);
  @phase_vt["gather_propsets"] = sum(((vtimestamp < self->gather_propsets_vstarttime) ? 0 : (vtimestamp - self->gather_propsets_vstarttime))/1000);
  self->gather_propsets_starttime = 0;
  self->gather_propsets_vstarttime = 0;
}
ap*::dav_run_insert_all_liveprops:insert_all_liveprops-entry
/progenyof(9049)/{
  @phase["insert_all_liveprops"] = count();
  self->insert_all_liveprops_starttime = timestamp;
  self->insert_all_liveprops_vstarttime = vtimestamp;
}
ap*::dav_run_insert_all_liveprops:insert_all_liveprops-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["insert_all_liveprops", self->module] = count();
}
ap*::dav_run_insert_all_liveprops:insert_all_liveprops-dispatch-complete
/self->module != 0/
{
  @module_wc["insert_all_liveprops", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["insert_all_liveprops", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::dav_run_insert_all_liveprops:insert_all_liveprops-return
/self->insert_all_liveprops_starttime/
{
  @phase_wc["insert_all_liveprops"] = sum(((timestamp < self->insert_all_liveprops_starttime) ? 0 : (timestamp - self->insert_all_liveprops_starttime))/1000);
  @phase_vt["insert_all_liveprops"] = sum(((vtimestamp < self->insert_all_liveprops_vstarttime) ? 0 : (vtimestamp - self->insert_all_liveprops_vstarttime))/1000);
  self->insert_all_liveprops_starttime = 0;
  self->insert_all_liveprops_vstarttime = 0;
}
ap*::proxy_run_canon_handler:canon_handler-entry
/progenyof(9049)/{
  @phase["canon_handler"] = count();
  self->canon_handler_starttime = timestamp;
  self->canon_handler_vstarttime = vtimestamp;
}
ap*::proxy_run_canon_handler:canon_handler-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["canon_handler", self->module] = count();
}
ap*::proxy_run_canon_handler:canon_handler-dispatch-complete
/self->module != 0/
{
  @module_wc["canon_handler", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["canon_handler", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::proxy_run_canon_handler:canon_handler-return
/self->canon_handler_starttime/
{
  @phase_wc["canon_handler"] = sum(((timestamp < self->canon_handler_starttime) ? 0 : (timestamp - self->canon_handler_starttime))/1000);
  @phase_vt["canon_handler"] = sum(((vtimestamp < self->canon_handler_vstarttime) ? 0 : (vtimestamp - self->canon_handler_vstarttime))/1000);
  self->canon_handler_starttime = 0;
  self->canon_handler_vstarttime = 0;
}
ap*::proxy_run_post_request:post_request-entry
/progenyof(9049)/{
  @phase["post_request"] = count();
  self->post_request_starttime = timestamp;
  self->post_request_vstarttime = vtimestamp;
}
ap*::proxy_run_post_request:post_request-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["post_request", self->module] = count();
}
ap*::proxy_run_post_request:post_request-dispatch-complete
/self->module != 0/
{
  @module_wc["post_request", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["post_request", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::proxy_run_post_request:post_request-return
/self->post_request_starttime/
{
  @phase_wc["post_request"] = sum(((timestamp < self->post_request_starttime) ? 0 : (timestamp - self->post_request_starttime))/1000);
  @phase_vt["post_request"] = sum(((vtimestamp < self->post_request_vstarttime) ? 0 : (vtimestamp - self->post_request_vstarttime))/1000);
  self->post_request_starttime = 0;
  self->post_request_vstarttime = 0;
}
ap*::proxy_run_pre_request:pre_request-entry
/progenyof(9049)/{
  @phase["pre_request"] = count();
  self->pre_request_starttime = timestamp;
  self->pre_request_vstarttime = vtimestamp;
}
ap*::proxy_run_pre_request:pre_request-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["pre_request", self->module] = count();
}
ap*::proxy_run_pre_request:pre_request-dispatch-complete
/self->module != 0/
{
  @module_wc["pre_request", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["pre_request", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::proxy_run_pre_request:pre_request-return
/self->pre_request_starttime/
{
  @phase_wc["pre_request"] = sum(((timestamp < self->pre_request_starttime) ? 0 : (timestamp - self->pre_request_starttime))/1000);
  @phase_vt["pre_request"] = sum(((vtimestamp < self->pre_request_vstarttime) ? 0 : (vtimestamp - self->pre_request_vstarttime))/1000);
  self->pre_request_starttime = 0;
  self->pre_request_vstarttime = 0;
}
ap*::proxy_run_scheme_handler:scheme_handler-entry
/progenyof(9049)/{
  @phase["scheme_handler"] = count();
  self->scheme_handler_starttime = timestamp;
  self->scheme_handler_vstarttime = vtimestamp;
}
ap*::proxy_run_scheme_handler:scheme_handler-dispatch-invoke
/progenyof(9049)/{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["scheme_handler", self->module] = count();
}
ap*::proxy_run_scheme_handler:scheme_handler-dispatch-complete
/self->module != 0/
{
  @module_wc["scheme_handler", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["scheme_handler", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::proxy_run_scheme_handler:scheme_handler-return
/self->scheme_handler_starttime/
{
  @phase_wc["scheme_handler"] = sum(((timestamp < self->scheme_handler_starttime) ? 0 : (timestamp - self->scheme_handler_starttime))/1000);
  @phase_vt["scheme_handler"] = sum(((vtimestamp < self->scheme_handler_vstarttime) ? 0 : (vtimestamp - self->scheme_handler_vstarttime))/1000);
  self->scheme_handler_starttime = 0;
  self->scheme_handler_vstarttime = 0;
}
END{
  printa("pc:%s:%@d\n", @phase);
  printa("pwc:%s:%@d\n", @phase_wc);
  printa("pvt:%s:%@d\n", @phase_vt);
  printa("mc:%s:%s:%@d\n", @module);
  printa("mwc:%s:%s:%@d\n", @module_wc);
  printa("mvt:%s:%s:%@d\n", @module_vt);
}
