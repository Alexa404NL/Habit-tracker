prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 220901
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38423973878489448962
,p_default_application_id=>220901
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MASCOTASMARAVILLAHACKMTY2024'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000249494441545847ED953F6813511CC7BFAF77B9A48DC53435945A9214F34F93331042115D9C842E8AD0411C2A0EA208B6832022';
wwv_flow_imp.g_varchar2_table(2) := '4E0515C4450445C5410A2A082E19747070155B834DDAA4E612D3A40DB692D884364D72697292571C020E97A34711EE2D8F078FF7FDF079EFF77B64F2EE53097B388806A019D00CFCD7061AB52DDA41187D8FE24EA2B80F34C40A46FC5EB4BAD86C240E86';
wwv_flow_imp.g_varchar2_table(3) := '332882500420D6AAE05DC3E8EFDB4F430BEB452C24B3D071FA8E211401948B05D8AD436D6199E51C8CA67EF5016AD50A26C6CFC2696F07109656F0F855089CBEB3ABE8D8002BD571EFC61588F53AA6DF7D004070616C143A96C5AD07CFD1ECD27564A163';
wwv_flow_imp.g_varchar2_table(4) := '00B7D5824BE74E63ADB08ECFE1791A7622781416B309CFDE8490CAE5D50538C63B30367A92867C998B83108211FF61BA7EFBFE136663697501026E2BCE9F39F5CF90D7A18FF89658560FA0BA55C690C5849B57C769C846B942E75E63379DEF3F99462E5F';
wwv_flow_imp.g_varchar2_table(5) := '82A1C7281B42F61B68D5BECB368862A984DBD72ED2002193030168454892843B8F5EA2CF6C4232FB537635C80630304D04F823C8ADFEC2F1800F41DEDD063013FD8E99B93806072CF81A89419418591664031CE835C075C88E6653423812C5D4F5CB48AF';
wwv_flow_imp.g_varchar2_table(6) := 'AC5203B68303987AF802413F0FD24590482DA1B0595307A075EAFCA28080D70D8FD34E01168434A28B29F83CCE9DABF991417EA3BAFB008E611BE289247E6F56D1106B08F85C34241C13C0EAF430EFEB86D7E340329DDD7D008865801034080786656970';
wwv_flow_imp.g_varchar2_table(7) := '5DDCD1FCF7136A6CD7C148DB80D40438799520FB0DC8F2A9609306A019D00CECB9813F98E30A7074ADBF0A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(38718011789977360476)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
