# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "MAX_PKT_LENGTH"
  ipgui::add_param $IPINST -name "C_s_axis_TDATA_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axis_TDATA_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axis_START_COUNT"

}

proc update_PARAM_VALUE.C_m_axis_START_COUNT { PARAM_VALUE.C_m_axis_START_COUNT } {
	# Procedure called to update C_m_axis_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axis_START_COUNT { PARAM_VALUE.C_m_axis_START_COUNT } {
	# Procedure called to validate C_m_axis_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_m_axis_TDATA_WIDTH { PARAM_VALUE.C_m_axis_TDATA_WIDTH } {
	# Procedure called to update C_m_axis_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axis_TDATA_WIDTH { PARAM_VALUE.C_m_axis_TDATA_WIDTH } {
	# Procedure called to validate C_m_axis_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axis_TDATA_WIDTH { PARAM_VALUE.C_s_axis_TDATA_WIDTH } {
	# Procedure called to update C_s_axis_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axis_TDATA_WIDTH { PARAM_VALUE.C_s_axis_TDATA_WIDTH } {
	# Procedure called to validate C_s_axis_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.MAX_PKT_LENGTH { PARAM_VALUE.MAX_PKT_LENGTH } {
	# Procedure called to update MAX_PKT_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_PKT_LENGTH { PARAM_VALUE.MAX_PKT_LENGTH } {
	# Procedure called to validate MAX_PKT_LENGTH
	return true
}


proc update_MODELPARAM_VALUE.MAX_PKT_LENGTH { MODELPARAM_VALUE.MAX_PKT_LENGTH PARAM_VALUE.MAX_PKT_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_PKT_LENGTH}] ${MODELPARAM_VALUE.MAX_PKT_LENGTH}
}

proc update_MODELPARAM_VALUE.C_s_axis_TDATA_WIDTH { MODELPARAM_VALUE.C_s_axis_TDATA_WIDTH PARAM_VALUE.C_s_axis_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axis_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_s_axis_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axis_TDATA_WIDTH { MODELPARAM_VALUE.C_m_axis_TDATA_WIDTH PARAM_VALUE.C_m_axis_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axis_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_m_axis_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axis_START_COUNT { MODELPARAM_VALUE.C_m_axis_START_COUNT PARAM_VALUE.C_m_axis_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axis_START_COUNT}] ${MODELPARAM_VALUE.C_m_axis_START_COUNT}
}

