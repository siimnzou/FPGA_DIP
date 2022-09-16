# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "CR_MIN"
  ipgui::add_param $IPINST -name "CB_MAX"
  ipgui::add_param $IPINST -name "CB_MIN"
  ipgui::add_param $IPINST -name "CR_MAX"

}

proc update_PARAM_VALUE.CB_MAX { PARAM_VALUE.CB_MAX } {
	# Procedure called to update CB_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CB_MAX { PARAM_VALUE.CB_MAX } {
	# Procedure called to validate CB_MAX
	return true
}

proc update_PARAM_VALUE.CB_MIN { PARAM_VALUE.CB_MIN } {
	# Procedure called to update CB_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CB_MIN { PARAM_VALUE.CB_MIN } {
	# Procedure called to validate CB_MIN
	return true
}

proc update_PARAM_VALUE.CR_MAX { PARAM_VALUE.CR_MAX } {
	# Procedure called to update CR_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CR_MAX { PARAM_VALUE.CR_MAX } {
	# Procedure called to validate CR_MAX
	return true
}

proc update_PARAM_VALUE.CR_MIN { PARAM_VALUE.CR_MIN } {
	# Procedure called to update CR_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CR_MIN { PARAM_VALUE.CR_MIN } {
	# Procedure called to validate CR_MIN
	return true
}


proc update_MODELPARAM_VALUE.CB_MAX { MODELPARAM_VALUE.CB_MAX PARAM_VALUE.CB_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CB_MAX}] ${MODELPARAM_VALUE.CB_MAX}
}

proc update_MODELPARAM_VALUE.CB_MIN { MODELPARAM_VALUE.CB_MIN PARAM_VALUE.CB_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CB_MIN}] ${MODELPARAM_VALUE.CB_MIN}
}

proc update_MODELPARAM_VALUE.CR_MAX { MODELPARAM_VALUE.CR_MAX PARAM_VALUE.CR_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CR_MAX}] ${MODELPARAM_VALUE.CR_MAX}
}

proc update_MODELPARAM_VALUE.CR_MIN { MODELPARAM_VALUE.CR_MIN PARAM_VALUE.CR_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CR_MIN}] ${MODELPARAM_VALUE.CR_MIN}
}

