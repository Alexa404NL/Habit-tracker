prompt --workspace/credentials/app_9500_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 9500 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38423973878489448962
,p_default_application_id=>220901
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MASCOTASMARAVILLAHACKMTY2024'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(38679204295230105147)
,p_name=>'App 9500 Push Notifications Credentials'
,p_static_id=>'App_9500_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
