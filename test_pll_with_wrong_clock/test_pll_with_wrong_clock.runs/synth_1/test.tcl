# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.cache/wt [current_project]
set_property parent.project_path C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/new/clk_divider.vhd
  C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/new/test.vhd
}
read_ip -quiet C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly.xci
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly.xdc]
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly_ooc.xdc]

read_ip -quiet C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise.xci
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise.xdc]
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise_ooc.xdc]

read_ip -quiet C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre.xci
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre.xdc]
set_property used_in_implementation false [get_files -all c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/constrs_1/new/consts.xdc
set_property used_in_implementation false [get_files C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/constrs_1/new/consts.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top test -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef test.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file test_utilization_synth.rpt -pb test_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
