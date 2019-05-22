# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.cache/wt} [current_project]
set_property parent.project_path {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.xpr} [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth.xci}}
set_property is_locked true [get_files {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth.xci}}]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.runs/rate10thousandth_synth_1} -new_name rate10thousandth -ip [get_ips rate10thousandth]]

if { $cached_ip eq {} } {

synth_design -top rate10thousandth -part xc7a100tcsg324-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix rate10thousandth_ rate10thousandth.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rate10thousandth_stub.v
 lappend ipCachedFiles rate10thousandth_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rate10thousandth_stub.vhdl
 lappend ipCachedFiles rate10thousandth_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rate10thousandth_sim_netlist.v
 lappend ipCachedFiles rate10thousandth_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rate10thousandth_sim_netlist.vhdl
 lappend ipCachedFiles rate10thousandth_sim_netlist.vhdl

 config_ip_cache -add -dcp rate10thousandth.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips rate10thousandth]
}

rename_ref -prefix_all rate10thousandth_

write_checkpoint -force -noxdef rate10thousandth.dcp

catch { report_utilization -file rate10thousandth_utilization_synth.rpt -pb rate10thousandth_utilization_synth.pb }

if { [catch {
  file copy -force {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.runs/rate10thousandth_synth_1/rate10thousandth.dcp} {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.runs/rate10thousandth_synth_1/rate10thousandth.dcp} {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.runs/rate10thousandth_synth_1/rate10thousandth_stub.v} {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.runs/rate10thousandth_synth_1/rate10thousandth_stub.vhdl} {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.runs/rate10thousandth_synth_1/rate10thousandth_sim_netlist.v} {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.runs/rate10thousandth_synth_1/rate10thousandth_sim_netlist.vhdl} {w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.ip_user_files/ip/rate10thousandth}]} {
  catch { 
    file copy -force {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_stub.v}} {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.ip_user_files/ip/rate10thousandth}
  }
}

if {[file isdir {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.ip_user_files/ip/rate10thousandth}]} {
  catch { 
    file copy -force {{w:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_stub.vhdl}} {W:/Desktop/ELEC 3500 LABS/stopwatch_project/stopwatch_project.ip_user_files/ip/rate10thousandth}
  }
}
