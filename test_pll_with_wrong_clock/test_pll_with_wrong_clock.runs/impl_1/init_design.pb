
p
Command: %s
53*	vivadotcl2?
+link_design -top test -part xc7z020clg400-12default:defaultZ4-113h px� 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px� 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly.dcp2default:default2
	cw_poorly2default:defaultZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre.dcp2default:default2
cw_pre2default:defaultZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise.dcp2default:default2

cw_precise2default:defaultZ1-454h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
142default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.12default:defaultZ1-479h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2/
cw_poorly/inst/clkin1_ibufg2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt20
cw_precise/inst/clkin1_ibufg2default:defaultZ31-32h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored by %s but preserved for implementation tool.
528*constraints2 
IBUF_LOW_PWR2default:default2'
cw_poorly/clk_in12default:default2 
IBUF_LOW_PWR2default:default2
Vivado2default:default2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly/clk_wiz_poorly.edf2default:default2
2642default:default8@Z18-550h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored by %s but preserved for implementation tool.
528*constraints2 
IBUF_LOW_PWR2default:default2(
cw_precise/clk_in12default:default2 
IBUF_LOW_PWR2default:default2
Vivado2default:default2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise/clk_wiz_precise.edf2default:default2
2642default:default8@Z18-550h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly_board.xdc2default:default2$
cw_poorly/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly_board.xdc2default:default2$
cw_poorly/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly.xdc2default:default2$
cw_poorly/inst	2default:default8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly.xdc2default:default2
572default:default8@Z38-35h px� 
�
Deriving generated clocks
2*timing2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly.xdc2default:default2
572default:default8@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:122default:default2
00:00:142default:default2
1201.8282default:default2
560.3482default:defaultZ17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_poorly/clk_wiz_poorly.xdc2default:default2$
cw_poorly/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise_board.xdc2default:default2%
cw_precise/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise_board.xdc2default:default2%
cw_precise/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise.xdc2default:default2%
cw_precise/inst	2default:default8Z20-848h px� 
�
Deriving generated clocks
2*timing2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise.xdc2default:default2
572default:default8@Z38-2h px� 
�
c%s contains time %s which will be rounded to %s to ensure it is an integer multiple of 1 picosecond1787*	planAhead2!
-input_jitter2default:default2
0.1346802default:default2
0.1352default:default2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise.xdc2default:default2
572default:default8@Z12-2489h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_precise/clk_wiz_precise.xdc2default:default2%
cw_precise/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre_board.xdc2default:default2!
cw_pre/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre_board.xdc2default:default2!
cw_pre/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre.xdc2default:default2!
cw_pre/inst	2default:default8Z20-848h px� 
�
Deriving generated clocks
2*timing2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre.xdc2default:default2
572default:default8@Z38-2h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/sources_1/ip/clk_wiz_pre/clk_wiz_pre.xdc2default:default2!
cw_pre/inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/constrs_1/new/consts.xdc2default:default8Z20-179h px� 
�
�%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default21
VIRTUAL_cd_poorly/clk_o_reg_02default:default2�
�C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/constrs_1/new/consts.xdc2default:default2
172default:default8@Z18-483h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/rinel/Desktop/computer_architecture_project/test_pll_with_wrong_clock/test_pll_with_wrong_clock.srcs/constrs_1/new/consts.xdc2default:default8Z20-178h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
152default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px� 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:222default:default2
00:00:262default:default2
1201.8282default:default2
921.6022default:defaultZ17-268h px� 


End Record