prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38423973878489448962
,p_default_application_id=>220901
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MASCOTASMARAVILLAHACKMTY2024'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Calendar'
,p_alias=>'CALENDAR'
,p_step_title=>'Calendar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38768074754247668447)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38717836499242360316)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(38716320240765360264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(38717899272815360347)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38768075493291668448)
,p_plug_name=>'Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(38717824030928360310)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    DONY_TRACKER.HABIT_ID AS HABIT,',
'    DONY_TRACKER.HABIT_DATE AS HABIT_DATE,',
'    DONY_HABITS.NAME AS HABIT_NAME,',
'    DONY_HABITS.END_DATE AS END_DATE,',
'    DONY_HABITS.START_DATE AS START_DATE',
'',
'FROM ',
'    DONY_TRACKER',
'JOIN ',
'    DONY_HABITS ',
'ON ',
'    DONY_TRACKER.HABIT_ID = DONY_HABITS.ID;',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'HABIT_NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'HABIT_DATE',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'HABIT',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'HABIT_DATE',
  'supplemental_information', '&HABIT_DESCRIPTION.')).to_clob
);
wwv_flow_imp.component_end;
end;
/
