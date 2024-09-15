prompt --application/shared_components/plugins/template_component/responsive_number_counting
begin
--   Manifest
--     PLUGIN: RESPONSIVE_NUMBER_COUNTING
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38423973878489448962
,p_default_application_id=>220901
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MASCOTASMARAVILLAHACKMTY2024'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(38962132491655340897)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'RESPONSIVE_NUMBER_COUNTING'
,p_display_name=>'Responsive Number Counting'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','RESPONSIVE_NUMBER_COUNTING'),'')
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.tc_icon {',
'  color: teal;',
'}',
'',
'.tc_row {',
'  display: block;  ',
'}',
'',
'.tc_col {',
'  display: flex;',
'  flex-direction: column;',
'  justify-content: center;',
'  align-items: center;',
'  padding-right: 15px;',
'  padding-left: 15px;',
'}',
'',
'.tc_div {',
'    display: grid;',
'    grid-template-columns: 1fr;',
'}',
'',
'@media',
' (min-width: 1140px) {',
'    .tc_div {',
'        grid-template-columns: 1fr 1fr 1fr 1fr;',
'    }',
'}',
'',
'@media',
' (min-width: 600px) and (max-width: 1139px) {',
'    .tc_div {',
'        grid-template-columns: 1fr 1fr;',
'    }',
'}',
''))
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'    <div class="tc_col"> ',
'        <span class="tc_icon #ICON# fa-5x"></span>',
'        <h2 data-max="#VALUE#">+ #TEXT#</h2>',
'    </div>',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="tc_div">#APEX$ROWS#</div>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="tc_row" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</div>',
''))
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>15569954950894
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(38962132700483340913)
,p_plugin_id=>wwv_flow_imp.id(38962132491655340897)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(38962133126757340914)
,p_plugin_id=>wwv_flow_imp.id(38962132491655340897)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TEXT'
,p_prompt=>'Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(38962133546430340914)
,p_plugin_id=>wwv_flow_imp.id(38962132491655340897)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
