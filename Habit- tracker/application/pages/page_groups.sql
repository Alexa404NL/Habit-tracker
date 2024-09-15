prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 220901
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38423973878489448962
,p_default_application_id=>220901
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MASCOTASMARAVILLAHACKMTY2024'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(38718014580371360480)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(38721236637856472997)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
