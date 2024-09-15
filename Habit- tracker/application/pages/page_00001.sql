prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Daily Task'
,p_alias=>'DAILY-TASK1'
,p_step_title=>'Daily Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38798668299791491154)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38717836499242360316)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(38716320240765360264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(38717899272815360347)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38804253843032634706)
,p_plug_name=>'Habits'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38716356955954360283)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38798668939853491155)
,p_plug_name=>'Daily Tasks'
,p_parent_plug_id=>wwv_flow_imp.id(38804253843032634706)
,p_icon_css_classes=>'fa-asl-interpreting'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38716358343329360283)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    DONY_TRACKER.HABIT_ID AS HABIT,',
'    DONY_TRACKER.HABIT_DATE AS HABIT_DATE,',
'    DONY_TRACKER.COUNT AS COUNT,',
'    DONY_HABITS.NAME AS HABIT_NAME,',
'    DONY_HABITS.ICON AS ICON,',
'    DONY_HABITS.DESCRIPTION AS DESCRIPTION,',
'    DONY_HABITS.COLOR AS COLOR,',
'    DONY_HABITS.GOAL AS GOAL,',
'    DONY_HABITS.FREQUENCY AS FREQUENCY,',
'    DONY_HABITS.START_DATE AS START_DATE,',
'    DONY_HABITS.END_DATE AS END_DATE,',
'    ''background-color:'' || COLOR AS lol',
'FROM ',
'    DONY_TRACKER',
'JOIN ',
'    DONY_HABITS ',
'ON ',
'    DONY_TRACKER.HABIT_ID = DONY_HABITS.ID',
'WHERE ',
'    TRUNC(DONY_TRACKER.HABIT_DATE) = TRUNC(SYSDATE);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(38798669491691491156)
,p_region_id=>wwv_flow_imp.id(38798668939853491155)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'HABIT_NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPTION'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'COUNT'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'HABIT_NAME'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(38762190838274517624)
,p_card_id=>wwv_flow_imp.id(38798669491691491156)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::ID_T,TASK_NAME,FREQUENCY,GOAL,COLOR,START_DATE,END_DATE,DESCRIPTION:&HABIT.,&HABIT_NAME.,&FREQUENCY.,&GOAL.,&COLOR.,&START_DATE.,&END_DATE.,&DESCRIPTION.'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(38941572632702091021)
,p_card_id=>wwv_flow_imp.id(38798669491691491156)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>'Check'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::COUNT,ID:&COUNT.,&HABIT.'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38804253681290634704)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38804253843032634706)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(38717897774134360347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38798670591925491156)
,p_name=>'ORDER_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38798668939853491155)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NAME'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38804253357963634701)
,p_name=>'FILTRO_DIAS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38798668939853491155)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38762190224293517618)
,p_name=>'Dialogue Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(38798668939853491155)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38762190351918517619)
,p_event_id=>wwv_flow_imp.id(38762190224293517618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38798668939853491155)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38941571464668091009)
,p_name=>'Diag Close'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38804253681290634704)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38941571553950091010)
,p_event_id=>wwv_flow_imp.id(38941571464668091009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38798668939853491155)
);
wwv_flow_imp.component_end;
end;
/
