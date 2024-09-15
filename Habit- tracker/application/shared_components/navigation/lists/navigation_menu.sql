prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38423973878489448962
,p_default_application_id=>220901
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MASCOTASMARAVILLAHACKMTY2024'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38716320767761360265)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15569983459897
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38768074384379668447)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38798667748988491153)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Daily Task'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38981833349622183002)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'All Habits'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp.component_end;
end;
/
