# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M00_AXI_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox

  ipgui::add_param $IPINST -name "HASH_TABLE_ADDR_WIDTH"
  ipgui::add_param $IPINST -name "HASH_TABLE_DATA_WIDTH"
  ipgui::add_param $IPINST -name "HASH_TABLE_OP_WIDTH"
  ipgui::add_param $IPINST -name "HASH_TABLE_OTYPE_WIDTH"
  ipgui::add_param $IPINST -name "BUFFER_SIZE"
  ipgui::add_param $IPINST -name "NUM_LOCKS"
  ipgui::add_param $IPINST -name "HASH_TABLE_KEY_WIDTH"

}

proc update_PARAM_VALUE.BUFFER_SIZE { PARAM_VALUE.BUFFER_SIZE } {
	# Procedure called to update BUFFER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFER_SIZE { PARAM_VALUE.BUFFER_SIZE } {
	# Procedure called to validate BUFFER_SIZE
	return true
}

proc update_PARAM_VALUE.HASH_TABLE_ADDR_WIDTH { PARAM_VALUE.HASH_TABLE_ADDR_WIDTH } {
	# Procedure called to update HASH_TABLE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HASH_TABLE_ADDR_WIDTH { PARAM_VALUE.HASH_TABLE_ADDR_WIDTH } {
	# Procedure called to validate HASH_TABLE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.HASH_TABLE_DATA_WIDTH { PARAM_VALUE.HASH_TABLE_DATA_WIDTH } {
	# Procedure called to update HASH_TABLE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HASH_TABLE_DATA_WIDTH { PARAM_VALUE.HASH_TABLE_DATA_WIDTH } {
	# Procedure called to validate HASH_TABLE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.HASH_TABLE_KEY_WIDTH { PARAM_VALUE.HASH_TABLE_KEY_WIDTH } {
	# Procedure called to update HASH_TABLE_KEY_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HASH_TABLE_KEY_WIDTH { PARAM_VALUE.HASH_TABLE_KEY_WIDTH } {
	# Procedure called to validate HASH_TABLE_KEY_WIDTH
	return true
}

proc update_PARAM_VALUE.HASH_TABLE_OP_WIDTH { PARAM_VALUE.HASH_TABLE_OP_WIDTH } {
	# Procedure called to update HASH_TABLE_OP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HASH_TABLE_OP_WIDTH { PARAM_VALUE.HASH_TABLE_OP_WIDTH } {
	# Procedure called to validate HASH_TABLE_OP_WIDTH
	return true
}

proc update_PARAM_VALUE.HASH_TABLE_OTYPE_WIDTH { PARAM_VALUE.HASH_TABLE_OTYPE_WIDTH } {
	# Procedure called to update HASH_TABLE_OTYPE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HASH_TABLE_OTYPE_WIDTH { PARAM_VALUE.HASH_TABLE_OTYPE_WIDTH } {
	# Procedure called to validate HASH_TABLE_OTYPE_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_LOCKS { PARAM_VALUE.NUM_LOCKS } {
	# Procedure called to update NUM_LOCKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_LOCKS { PARAM_VALUE.NUM_LOCKS } {
	# Procedure called to validate NUM_LOCKS
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M00_AXI_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M00_AXI_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.HASH_TABLE_ADDR_WIDTH { MODELPARAM_VALUE.HASH_TABLE_ADDR_WIDTH PARAM_VALUE.HASH_TABLE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HASH_TABLE_ADDR_WIDTH}] ${MODELPARAM_VALUE.HASH_TABLE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.HASH_TABLE_DATA_WIDTH { MODELPARAM_VALUE.HASH_TABLE_DATA_WIDTH PARAM_VALUE.HASH_TABLE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HASH_TABLE_DATA_WIDTH}] ${MODELPARAM_VALUE.HASH_TABLE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.HASH_TABLE_OP_WIDTH { MODELPARAM_VALUE.HASH_TABLE_OP_WIDTH PARAM_VALUE.HASH_TABLE_OP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HASH_TABLE_OP_WIDTH}] ${MODELPARAM_VALUE.HASH_TABLE_OP_WIDTH}
}

proc update_MODELPARAM_VALUE.HASH_TABLE_OTYPE_WIDTH { MODELPARAM_VALUE.HASH_TABLE_OTYPE_WIDTH PARAM_VALUE.HASH_TABLE_OTYPE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HASH_TABLE_OTYPE_WIDTH}] ${MODELPARAM_VALUE.HASH_TABLE_OTYPE_WIDTH}
}

proc update_MODELPARAM_VALUE.BUFFER_SIZE { MODELPARAM_VALUE.BUFFER_SIZE PARAM_VALUE.BUFFER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_SIZE}] ${MODELPARAM_VALUE.BUFFER_SIZE}
}

proc update_MODELPARAM_VALUE.NUM_LOCKS { MODELPARAM_VALUE.NUM_LOCKS PARAM_VALUE.NUM_LOCKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_LOCKS}] ${MODELPARAM_VALUE.NUM_LOCKS}
}

proc update_MODELPARAM_VALUE.HASH_TABLE_KEY_WIDTH { MODELPARAM_VALUE.HASH_TABLE_KEY_WIDTH PARAM_VALUE.HASH_TABLE_KEY_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HASH_TABLE_KEY_WIDTH}] ${MODELPARAM_VALUE.HASH_TABLE_KEY_WIDTH}
}

