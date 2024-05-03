# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "fifo_len" -parent ${Page_0}


}

proc update_PARAM_VALUE.fifo_len { PARAM_VALUE.fifo_len } {
	# Procedure called to update fifo_len when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.fifo_len { PARAM_VALUE.fifo_len } {
	# Procedure called to validate fifo_len
	return true
}


proc update_MODELPARAM_VALUE.fifo_len { MODELPARAM_VALUE.fifo_len PARAM_VALUE.fifo_len } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.fifo_len}] ${MODELPARAM_VALUE.fifo_len}
}

