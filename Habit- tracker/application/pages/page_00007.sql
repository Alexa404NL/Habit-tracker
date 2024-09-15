prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Edit Habit'
,p_alias=>'EDIT-TASK'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Habit'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(38716341699142360276)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38762188605506517602)
,p_plug_name=>'Edit Habit'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38716358343329360283)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'DONY_HABITS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38762189650617517612)
,p_plug_name=>'Buttons'
,p_title=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38716356955954360283)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38762189753213517613)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38762189650617517612)
,p_button_name=>'APPLY_CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(38717897607923360347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Change'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38794157977321657034)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38762189650617517612)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(38717897607923360347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_confirm_message=>unistr('\00BFAre you sure you''d like to delete this habit?')
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38762189860523517614)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38762189650617517612)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(38717897607923360347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762188850951517604)
,p_name=>'ID_T'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762188986897517605)
,p_name=>'TASK_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_prompt=>'Task Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(38717895122833360345)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762189031544517606)
,p_name=>'FREQUENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_prompt=>'Frequency'
,p_source=>'FREQUENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Monday;Monday,Tuesday;Tuesday,Wednesday;Wednesday,Thursday;Thursday,Friday;Friday,Saturday;Saturday,Sunday;Sunday'
,p_field_template=>wwv_flow_imp.id(38717895122833360345)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'4'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762189106827517607)
,p_name=>'GOAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_prompt=>'Goal'
,p_source=>'GOAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(38717895122833360345)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762189258146517608)
,p_name=>'DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(38717895122833360345)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762193049720517646)
,p_name=>'COLOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_prompt=>'Color'
,p_source=>'COLOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_COLOR_PICKER'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(38717895122833360345)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762193136023517647)
,p_name=>'START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(38717895122833360345)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38762193250134517648)
,p_name=>'END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_item_source_plug_id=>wwv_flow_imp.id(38762188605506517602)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(38717895122833360345)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38762189342697517609)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(38762188605506517602)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Fetch'
,p_attribute_01=>'TABLE'
,p_attribute_03=>'DONY_HABITS'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_internal_uid=>38762189342697517609
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38919027848981189645)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(38762188605506517602)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edit Habit'
,p_internal_uid=>38919027848981189645
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38762191093533517626)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'UPDATE'
,p_attribute_02=>'DONY_HABITS'
,p_attribute_03=>'ID_T'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'nu'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38762189753213517613)
,p_process_success_message=>'Suc'
,p_internal_uid=>38762191093533517626
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38762191678863517632)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'deleate'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'nu'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38794157977321657034)
,p_process_success_message=>'bor'
,p_internal_uid=>38762191678863517632
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38964194597400720711)
,p_process_sequence=>35
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_EVENTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_curr_date  DATE;',
'    v_end_date DATE:= :END_DATE;',
'    v_start_date DATE:= :START_DATE;',
'    v_day_name VARCHAR(10);',
'    v_day_sequence VARCHAR(200):= :FREQUENCY;',
'BEGIN',
'    DELETE FROM DONY_TRACKER',
'    WHERE HABIT_DATE > SYSDATE;',
'    COMMIT;',
'',
'    v_curr_date := v_start_date;',
'    ',
'    WHILE v_curr_date <= v_end_date',
'    LOOP',
'        v_day_name := RTRIM(TO_CHAR(v_curr_date, ''Day''));',
'        IF INSTR(v_day_sequence, v_day_name) > 0 THEN',
'            INSERT INTO DONY_TRACKER (HABIT_ID, HABIT_DATE, COUNT) VALUES (:ID_T, v_curr_date, 0);',
'        END IF;',
'        -- Increment the date',
'        v_curr_date := v_curr_date + 1;',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'oof'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38762189753213517613)
,p_process_success_message=>'nice'
,p_internal_uid=>38964194597400720711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38762191752045517633)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'exit'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>38762191752045517633
);
wwv_flow_imp.component_end;
end;
/
