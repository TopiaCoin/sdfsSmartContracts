	.text
	.file	"secrataContainer.bc"
	.hidden	_ZeqRK11checksum256S1_
	.globl	_ZeqRK11checksum256S1_
	.type	_ZeqRK11checksum256S1_,@function
_ZeqRK11checksum256S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end0:
	.size	_ZeqRK11checksum256S1_, .Lfunc_end0-_ZeqRK11checksum256S1_

	.hidden	_ZeqRK11checksum160S1_
	.globl	_ZeqRK11checksum160S1_
	.type	_ZeqRK11checksum160S1_,@function
_ZeqRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end1:
	.size	_ZeqRK11checksum160S1_, .Lfunc_end1-_ZeqRK11checksum160S1_

	.hidden	_ZneRK11checksum160S1_
	.globl	_ZneRK11checksum160S1_
	.type	_ZneRK11checksum160S1_,@function
_ZneRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.const	$push2=, 0
	i32.ne  	$push3=, $pop1, $pop2
	.endfunc
.Lfunc_end2:
	.size	_ZneRK11checksum160S1_, .Lfunc_end2-_ZneRK11checksum160S1_

	.hidden	now
	.globl	now
	.type	now,@function
now:
	.result 	i32
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i32.wrap/i64	$push3=, $pop2
	.endfunc
.Lfunc_end3:
	.size	now, .Lfunc_end3-now

	.hidden	_ZN5eosio12require_authERKNS_16permission_levelE
	.globl	_ZN5eosio12require_authERKNS_16permission_levelE
	.type	_ZN5eosio12require_authERKNS_16permission_levelE,@function
_ZN5eosio12require_authERKNS_16permission_levelE:
	.param  	i32
	i64.load	$push1=, 0($0)
	i64.load	$push0=, 8($0)
	call    	require_auth2@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end4:
	.size	_ZN5eosio12require_authERKNS_16permission_levelE, .Lfunc_end4-_ZN5eosio12require_authERKNS_16permission_levelE

	.hidden	_ZN16secrataContainer9container6createEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_
	.globl	_ZN16secrataContainer9container6createEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_
	.type	_ZN16secrataContainer9container6createEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_,@function
_ZN16secrataContainer9container6createEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_:
	.param  	i32, i64, i64, i64, i32, i32, i32
	.local  	i32, i32, i32, i32
	i32.const	$push74=, 0
	i32.const	$push71=, 0
	i32.load	$push72=, __stack_pointer($pop71)
	i32.const	$push73=, 160
	i32.sub 	$push134=, $pop72, $pop73
	tee_local	$push133=, $10=, $pop134
	i32.store	__stack_pointer($pop74), $pop133
	i64.store	112($10), $1
	i64.store	104($10), $3
	i64.store	96($10), $2
	call    	require_auth@FUNCTION, $1
	i32.call	$push0=, _ZN16secrataContainer9container15workspaceExistsEo@FUNCTION, $0, $2, $3
	i32.eqz 	$push1=, $pop0
	i32.const	$push2=, .L.str
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i32.const	$push3=, 88
	i32.add 	$push132=, $10, $pop3
	tee_local	$push131=, $8=, $pop132
	i32.const	$push130=, 0
	i32.store	0($pop131), $pop130
	i64.const	$push4=, -1
	i64.store	72($10), $pop4
	i64.const	$push5=, 0
	i64.store	80($10), $pop5
	i64.load	$push129=, 0($0)
	tee_local	$push128=, $2=, $pop129
	i64.store	56($10), $pop128
	i64.store	64($10), $2
	i32.const	$push127=, 0
	i32.store8	92($10), $pop127
	i32.store	20($10), $4
	i32.store	24($10), $5
	i32.const	$push78=, 96
	i32.add 	$push79=, $10, $pop78
	i32.store	16($10), $pop79
	i32.const	$push80=, 112
	i32.add 	$push81=, $10, $pop80
	i32.store	28($10), $pop81
	i64.store	0($10), $2
	i64.call	$push6=, current_receiver@FUNCTION
	i64.eq  	$push7=, $2, $pop6
	i32.const	$push8=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i32.const	$push82=, 16
	i32.add 	$push83=, $10, $pop82
	i32.store	132($10), $pop83
	i32.const	$push84=, 56
	i32.add 	$push85=, $10, $pop84
	i32.store	128($10), $pop85
	i32.store	136($10), $10
	i32.const	$push9=, 80
	i32.call	$push126=, _Znwj@FUNCTION, $pop9
	tee_local	$push125=, $5=, $pop126
	i64.const	$push124=, 0
	i64.store	32($pop125):p2align=2, $pop124
	i64.const	$push123=, 0
	i64.store	40($5):p2align=2, $pop123
	i64.const	$push122=, 0
	i64.store	48($5):p2align=2, $pop122
	i32.const	$push86=, 56
	i32.add 	$push87=, $10, $pop86
	i32.store	64($5), $pop87
	i32.const	$push88=, 128
	i32.add 	$push89=, $10, $pop88
	call    	_ZZN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEESI_SI_E3$_0EENSA_14const_iteratorEyOT_ENKUlRSL_E_clINSA_4itemEEEDaSN_@FUNCTION, $pop89, $5
	i32.store	152($10), $5
	i64.load	$push121=, 0($5)
	tee_local	$push120=, $2=, $pop121
	i64.store	128($10), $pop120
	i32.load	$push119=, 68($5)
	tee_local	$push118=, $7=, $pop119
	i32.store	144($10), $pop118
	block   	
	block   	
	i32.const	$push11=, 84
	i32.add 	$push117=, $10, $pop11
	tee_local	$push116=, $9=, $pop117
	i32.load	$push115=, 0($pop116)
	tee_local	$push114=, $4=, $pop115
	i32.load	$push10=, 0($8)
	i32.ge_u	$push12=, $pop114, $pop10
	br_if   	0, $pop12
	i64.store	8($4), $2
	i32.store	16($4), $7
	i32.const	$push135=, 0
	i32.store	152($10), $pop135
	i32.store	0($4), $5
	i32.const	$push15=, 24
	i32.add 	$push16=, $4, $pop15
	i32.store	0($9), $pop16
	br      	1
.LBB5_2:
	end_block
	i32.const	$push13=, 80
	i32.add 	$push14=, $10, $pop13
	i32.const	$push108=, 152
	i32.add 	$push109=, $10, $pop108
	i32.const	$push110=, 128
	i32.add 	$push111=, $10, $pop110
	i32.const	$push112=, 144
	i32.add 	$push113=, $10, $pop112
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_@FUNCTION, $pop14, $pop109, $pop111, $pop113
.LBB5_3:
	end_block
	i32.load	$5=, 152($10)
	i32.const	$push136=, 0
	i32.store	152($10), $pop136
	block   	
	i32.eqz 	$push184=, $5
	br_if   	0, $pop184
	block   	
	i32.load8_u	$push17=, 44($5)
	i32.const	$push137=, 1
	i32.and 	$push18=, $pop17, $pop137
	i32.eqz 	$push185=, $pop18
	br_if   	0, $pop185
	i32.const	$push19=, 52
	i32.add 	$push20=, $5, $pop19
	i32.load	$push21=, 0($pop20)
	call    	_ZdlPv@FUNCTION, $pop21
.LBB5_6:
	end_block
	block   	
	i32.load8_u	$push22=, 32($5)
	i32.const	$push138=, 1
	i32.and 	$push23=, $pop22, $pop138
	i32.eqz 	$push186=, $pop23
	br_if   	0, $pop186
	i32.const	$push24=, 40
	i32.add 	$push25=, $5, $pop24
	i32.load	$push26=, 0($pop25)
	call    	_ZdlPv@FUNCTION, $pop26
.LBB5_8:
	end_block
	call    	_ZdlPv@FUNCTION, $5
.LBB5_9:
	end_block
	i64.const	$push27=, -1
	i64.store	32($10), $pop27
	i32.const	$push157=, 0
	i32.store	40($10), $pop157
	i64.load	$3=, 112($10)
	i64.load	$push156=, 0($0)
	tee_local	$push155=, $2=, $pop156
	i64.store	16($10), $pop155
	i64.store	24($10), $3
	i32.const	$push28=, 44
	i32.add 	$push154=, $10, $pop28
	tee_local	$push153=, $4=, $pop154
	i32.const	$push152=, 0
	i32.store	0($pop153), $pop152
	i32.const	$push29=, 48
	i32.add 	$push151=, $10, $pop29
	tee_local	$push150=, $8=, $pop151
	i32.const	$push149=, 0
	i32.store	0($pop150), $pop149
	i32.const	$push148=, 0
	i32.store16	52($10), $pop148
	i32.store	8($10), $6
	i32.const	$push90=, 112
	i32.add 	$push91=, $10, $pop90
	i32.store	4($10), $pop91
	i32.const	$push92=, 96
	i32.add 	$push93=, $10, $pop92
	i32.store	0($10), $pop93
	i64.store	152($10), $2
	i64.call	$push30=, current_receiver@FUNCTION
	i64.eq  	$push31=, $2, $pop30
	i32.const	$push32=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop31, $pop32
	i32.store	132($10), $10
	i32.const	$push94=, 16
	i32.add 	$push95=, $10, $pop94
	i32.store	128($10), $pop95
	i32.const	$push96=, 152
	i32.add 	$push97=, $10, $pop96
	i32.store	136($10), $pop97
	i32.const	$push33=, 80
	i32.call	$push147=, _Znwj@FUNCTION, $pop33
	tee_local	$push146=, $5=, $pop147
	i32.const	$push145=, 0
	i32.store	52($pop146), $pop145
	i64.const	$push34=, 0
	i64.store	44($5):p2align=2, $pop34
	i32.const	$push98=, 16
	i32.add 	$push99=, $10, $pop98
	i32.store	56($5), $pop99
	i32.const	$push100=, 128
	i32.add 	$push101=, $10, $pop100
	call    	_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEESK_SK_E3$_1EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_@FUNCTION, $pop101, $5
	i32.store	144($10), $5
	i64.load	$push144=, 0($5)
	tee_local	$push143=, $2=, $pop144
	i64.store	128($10), $pop143
	i32.load	$push142=, 60($5)
	tee_local	$push141=, $6=, $pop142
	i32.store	124($10), $pop141
	block   	
	block   	
	i32.load	$push140=, 0($4)
	tee_local	$push139=, $0=, $pop140
	i32.load	$push35=, 0($8)
	i32.ge_u	$push36=, $pop139, $pop35
	br_if   	0, $pop36
	i64.store	8($0), $2
	i32.store	16($0), $6
	i32.const	$push39=, 0
	i32.store	144($10), $pop39
	i32.store	0($0), $5
	i32.const	$push40=, 24
	i32.add 	$push41=, $0, $pop40
	i32.store	0($4), $pop41
	br      	1
.LBB5_11:
	end_block
	i32.const	$push37=, 40
	i32.add 	$push38=, $10, $pop37
	i32.const	$push102=, 144
	i32.add 	$push103=, $10, $pop102
	i32.const	$push104=, 128
	i32.add 	$push105=, $10, $pop104
	i32.const	$push106=, 124
	i32.add 	$push107=, $10, $pop106
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_@FUNCTION, $pop38, $pop103, $pop105, $pop107
.LBB5_12:
	end_block
	i32.load	$5=, 144($10)
	i32.const	$push42=, 0
	i32.store	144($10), $pop42
	block   	
	i32.eqz 	$push187=, $5
	br_if   	0, $pop187
	block   	
	i32.load8_u	$push43=, 44($5)
	i32.const	$push44=, 1
	i32.and 	$push45=, $pop43, $pop44
	i32.eqz 	$push188=, $pop45
	br_if   	0, $pop188
	i32.const	$push46=, 52
	i32.add 	$push47=, $5, $pop46
	i32.load	$push48=, 0($pop47)
	call    	_ZdlPv@FUNCTION, $pop48
.LBB5_15:
	end_block
	call    	_ZdlPv@FUNCTION, $5
.LBB5_16:
	end_block
	block   	
	i32.load	$push159=, 40($10)
	tee_local	$push158=, $4=, $pop159
	i32.eqz 	$push189=, $pop158
	br_if   	0, $pop189
	block   	
	block   	
	i32.const	$push49=, 44
	i32.add 	$push163=, $10, $pop49
	tee_local	$push162=, $6=, $pop163
	i32.load	$push161=, 0($pop162)
	tee_local	$push160=, $5=, $pop161
	i32.eq  	$push50=, $pop160, $4
	br_if   	0, $pop50
.LBB5_19:
	loop    	
	i32.const	$push167=, -24
	i32.add 	$push166=, $5, $pop167
	tee_local	$push165=, $5=, $pop166
	i32.load	$0=, 0($pop165)
	i32.const	$push164=, 0
	i32.store	0($5), $pop164
	block   	
	i32.eqz 	$push190=, $0
	br_if   	0, $pop190
	block   	
	i32.load8_u	$push51=, 44($0)
	i32.const	$push168=, 1
	i32.and 	$push52=, $pop51, $pop168
	i32.eqz 	$push191=, $pop52
	br_if   	0, $pop191
	i32.const	$push169=, 52
	i32.add 	$push53=, $0, $pop169
	i32.load	$push54=, 0($pop53)
	call    	_ZdlPv@FUNCTION, $pop54
.LBB5_22:
	end_block
	call    	_ZdlPv@FUNCTION, $0
.LBB5_23:
	end_block
	i32.ne  	$push55=, $4, $5
	br_if   	0, $pop55
	end_loop
	i32.const	$push56=, 40
	i32.add 	$push57=, $10, $pop56
	i32.load	$5=, 0($pop57)
	br      	1
.LBB5_25:
	end_block
	copy_local	$5=, $4
.LBB5_26:
	end_block
	i32.store	0($6), $4
	call    	_ZdlPv@FUNCTION, $5
.LBB5_27:
	end_block
	block   	
	i32.load	$push171=, 80($10)
	tee_local	$push170=, $4=, $pop171
	i32.eqz 	$push192=, $pop170
	br_if   	0, $pop192
	block   	
	block   	
	i32.const	$push58=, 84
	i32.add 	$push175=, $10, $pop58
	tee_local	$push174=, $6=, $pop175
	i32.load	$push173=, 0($pop174)
	tee_local	$push172=, $0=, $pop173
	i32.eq  	$push59=, $pop172, $4
	br_if   	0, $pop59
.LBB5_30:
	loop    	
	i32.const	$push179=, -24
	i32.add 	$push178=, $0, $pop179
	tee_local	$push177=, $0=, $pop178
	i32.load	$5=, 0($pop177)
	i32.const	$push176=, 0
	i32.store	0($0), $pop176
	block   	
	i32.eqz 	$push193=, $5
	br_if   	0, $pop193
	block   	
	i32.load8_u	$push60=, 44($5)
	i32.const	$push180=, 1
	i32.and 	$push61=, $pop60, $pop180
	i32.eqz 	$push194=, $pop61
	br_if   	0, $pop194
	i32.const	$push181=, 52
	i32.add 	$push62=, $5, $pop181
	i32.load	$push63=, 0($pop62)
	call    	_ZdlPv@FUNCTION, $pop63
.LBB5_33:
	end_block
	block   	
	i32.load8_u	$push64=, 32($5)
	i32.const	$push182=, 1
	i32.and 	$push65=, $pop64, $pop182
	i32.eqz 	$push195=, $pop65
	br_if   	0, $pop195
	i32.const	$push183=, 40
	i32.add 	$push66=, $5, $pop183
	i32.load	$push67=, 0($pop66)
	call    	_ZdlPv@FUNCTION, $pop67
.LBB5_35:
	end_block
	call    	_ZdlPv@FUNCTION, $5
.LBB5_36:
	end_block
	i32.ne  	$push68=, $4, $0
	br_if   	0, $pop68
	end_loop
	i32.const	$push69=, 80
	i32.add 	$push70=, $10, $pop69
	i32.load	$5=, 0($pop70)
	br      	1
.LBB5_38:
	end_block
	copy_local	$5=, $4
.LBB5_39:
	end_block
	i32.store	0($6), $4
	call    	_ZdlPv@FUNCTION, $5
.LBB5_40:
	end_block
	i32.const	$push77=, 0
	i32.const	$push75=, 160
	i32.add 	$push76=, $10, $pop75
	i32.store	__stack_pointer($pop77), $pop76
	.endfunc
.Lfunc_end5:
	.size	_ZN16secrataContainer9container6createEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_, .Lfunc_end5-_ZN16secrataContainer9container6createEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_

	.hidden	_ZN16secrataContainer9container15workspaceExistsEo
	.globl	_ZN16secrataContainer9container15workspaceExistsEo
	.type	_ZN16secrataContainer9container15workspaceExistsEo,@function
_ZN16secrataContainer9container15workspaceExistsEo:
	.param  	i32, i64, i64
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push29=, 0
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 80
	i32.sub 	$push48=, $pop27, $pop28
	tee_local	$push47=, $7=, $pop48
	i32.store	__stack_pointer($pop29), $pop47
	i64.store	72($7), $2
	i64.store	64($7), $1
	i32.const	$5=, 0
	i32.const	$push0=, 56
	i32.add 	$push1=, $7, $pop0
	i32.const	$push46=, 0
	i32.store	0($pop1), $pop46
	i64.const	$push2=, -1
	i64.store	40($7), $pop2
	i64.const	$push3=, 0
	i64.store	48($7), $pop3
	i64.load	$push45=, 0($0)
	tee_local	$push44=, $1=, $pop45
	i64.store	24($7), $pop44
	i64.store	32($7), $1
	i32.const	$push43=, 0
	i32.store8	60($7), $pop43
	i32.const	$push33=, 24
	i32.add 	$push34=, $7, $pop33
	i32.store	16($7), $pop34
	i32.const	$push35=, 8
	i32.add 	$push36=, $7, $pop35
	i32.const	$push37=, 16
	i32.add 	$push38=, $7, $pop37
	i32.const	$push39=, 64
	i32.add 	$push40=, $7, $pop39
	call    	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo@FUNCTION, $pop36, $pop38, $pop40
	block   	
	i32.load	$push42=, 12($7)
	tee_local	$push41=, $0=, $pop42
	i32.eqz 	$push63=, $pop41
	br_if   	0, $pop63
	i64.load	$push4=, 16($0)
	i64.load	$push5=, 64($7)
	i64.xor 	$push6=, $pop4, $pop5
	i32.const	$push7=, 24
	i32.add 	$push8=, $0, $pop7
	i64.load	$push9=, 0($pop8)
	i64.load	$push10=, 72($7)
	i64.xor 	$push11=, $pop9, $pop10
	i64.or  	$push12=, $pop6, $pop11
	i64.eqz 	$5=, $pop12
.LBB6_2:
	end_block
	block   	
	i32.load	$push50=, 48($7)
	tee_local	$push49=, $3=, $pop50
	i32.eqz 	$push64=, $pop49
	br_if   	0, $pop64
	block   	
	block   	
	i32.const	$push13=, 52
	i32.add 	$push54=, $7, $pop13
	tee_local	$push53=, $4=, $pop54
	i32.load	$push52=, 0($pop53)
	tee_local	$push51=, $6=, $pop52
	i32.eq  	$push14=, $pop51, $3
	br_if   	0, $pop14
.LBB6_5:
	loop    	
	i32.const	$push58=, -24
	i32.add 	$push57=, $6, $pop58
	tee_local	$push56=, $6=, $pop57
	i32.load	$0=, 0($pop56)
	i32.const	$push55=, 0
	i32.store	0($6), $pop55
	block   	
	i32.eqz 	$push65=, $0
	br_if   	0, $pop65
	block   	
	i32.load8_u	$push15=, 44($0)
	i32.const	$push59=, 1
	i32.and 	$push16=, $pop15, $pop59
	i32.eqz 	$push66=, $pop16
	br_if   	0, $pop66
	i32.const	$push60=, 52
	i32.add 	$push17=, $0, $pop60
	i32.load	$push18=, 0($pop17)
	call    	_ZdlPv@FUNCTION, $pop18
.LBB6_8:
	end_block
	block   	
	i32.load8_u	$push19=, 32($0)
	i32.const	$push61=, 1
	i32.and 	$push20=, $pop19, $pop61
	i32.eqz 	$push67=, $pop20
	br_if   	0, $pop67
	i32.const	$push62=, 40
	i32.add 	$push21=, $0, $pop62
	i32.load	$push22=, 0($pop21)
	call    	_ZdlPv@FUNCTION, $pop22
.LBB6_10:
	end_block
	call    	_ZdlPv@FUNCTION, $0
.LBB6_11:
	end_block
	i32.ne  	$push23=, $3, $6
	br_if   	0, $pop23
	end_loop
	i32.const	$push24=, 48
	i32.add 	$push25=, $7, $pop24
	i32.load	$0=, 0($pop25)
	br      	1
.LBB6_13:
	end_block
	copy_local	$0=, $3
.LBB6_14:
	end_block
	i32.store	0($4), $3
	call    	_ZdlPv@FUNCTION, $0
.LBB6_15:
	end_block
	i32.const	$push32=, 0
	i32.const	$push30=, 80
	i32.add 	$push31=, $7, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	copy_local	$push68=, $5
	.endfunc
.Lfunc_end6:
	.size	_ZN16secrataContainer9container15workspaceExistsEo, .Lfunc_end6-_ZN16secrataContainer9container15workspaceExistsEo

	.type	_ZZN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEESI_SI_E3$_0EENSA_14const_iteratorEyOT_ENKUlRSL_E_clINSA_4itemEEEDaSN_,@function
_ZZN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEESI_SI_E3$_0EENSA_14const_iteratorEyOT_ENKUlRSL_E_clINSA_4itemEEEDaSN_:
	.param  	i32, i32
	.local  	i32, i32, i64, i64, i64, i32, i32, i32
	i32.const	$push69=, 0
	i32.load	$push70=, __stack_pointer($pop69)
	i32.const	$push71=, 32
	i32.sub 	$push89=, $pop70, $pop71
	tee_local	$push88=, $8=, $pop89
	copy_local	$9=, $pop88
	i32.const	$push72=, 0
	i32.store	__stack_pointer($pop72), $8
	i32.load	$2=, 0($0)
	i32.load	$7=, 4($0)
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i64.const	$push3=, 4294967295
	i64.and 	$push4=, $pop2, $pop3
	i64.store	0($1), $pop4
	i32.load	$push87=, 0($7)
	tee_local	$push86=, $3=, $pop87
	i64.load	$6=, 0($pop86)
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.const	$push7=, 8
	i32.add 	$push8=, $3, $pop7
	i64.load	$push9=, 0($pop8)
	i64.store	0($pop6), $pop9
	i64.store	16($1), $6
	i32.const	$push10=, 32
	i32.add 	$push11=, $1, $pop10
	i32.load	$push12=, 4($7)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop11, $pop12
	i32.const	$push13=, 44
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 8($7)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop14, $pop15
	i32.load	$push16=, 12($7)
	i64.load	$push17=, 0($pop16)
	i64.store	56($1), $pop17
	i32.const	$push20=, 36
	i32.add 	$push21=, $1, $pop20
	i32.load	$push22=, 0($pop21)
	i32.load8_u	$push85=, 32($1)
	tee_local	$push84=, $7=, $pop85
	i32.const	$push83=, 1
	i32.shr_u	$push19=, $pop84, $pop83
	i32.const	$push82=, 1
	i32.and 	$push18=, $7, $pop82
	i32.select	$push81=, $pop22, $pop19, $pop18
	tee_local	$push80=, $3=, $pop81
	i32.const	$push79=, 32
	i32.add 	$7=, $pop80, $pop79
	i64.extend_u/i32	$6=, $3
.LBB7_1:
	loop    	
	i32.const	$push94=, 1
	i32.add 	$7=, $7, $pop94
	i64.const	$push93=, 7
	i64.shr_u	$push92=, $6, $pop93
	tee_local	$push91=, $6=, $pop92
	i64.const	$push90=, 0
	i64.ne  	$push23=, $pop91, $pop90
	br_if   	0, $pop23
	end_loop
	i32.const	$push28=, 48
	i32.add 	$push29=, $1, $pop28
	i32.load	$push30=, 0($pop29)
	i32.const	$push24=, 44
	i32.add 	$push25=, $1, $pop24
	i32.load8_u	$push100=, 0($pop25)
	tee_local	$push99=, $3=, $pop100
	i32.const	$push98=, 1
	i32.shr_u	$push27=, $pop99, $pop98
	i32.const	$push97=, 1
	i32.and 	$push26=, $3, $pop97
	i32.select	$push96=, $pop30, $pop27, $pop26
	tee_local	$push95=, $3=, $pop96
	i32.add 	$7=, $pop95, $7
	i64.extend_u/i32	$6=, $3
.LBB7_3:
	loop    	
	i32.const	$push105=, 1
	i32.add 	$7=, $7, $pop105
	i64.const	$push104=, 7
	i64.shr_u	$push103=, $6, $pop104
	tee_local	$push102=, $6=, $pop103
	i64.const	$push101=, 0
	i64.ne  	$push31=, $pop102, $pop101
	br_if   	0, $pop31
	end_loop
	block   	
	block   	
	i32.const	$push32=, 513
	i32.lt_u	$push33=, $7, $pop32
	br_if   	0, $pop33
	i32.call	$8=, malloc@FUNCTION, $7
	br      	1
.LBB7_6:
	end_block
	i32.const	$push68=, 0
	i32.const	$push34=, 15
	i32.add 	$push35=, $7, $pop34
	i32.const	$push36=, -16
	i32.and 	$push37=, $pop35, $pop36
	i32.sub 	$push107=, $8, $pop37
	tee_local	$push106=, $8=, $pop107
	copy_local	$push78=, $pop106
	i32.store	__stack_pointer($pop68), $pop78
.LBB7_7:
	end_block
	i32.store	4($9), $8
	i32.store	0($9), $8
	i32.add 	$push38=, $8, $7
	i32.store	8($9), $pop38
	i32.call	$drop=, _ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE@FUNCTION, $9, $1
	i64.load	$push39=, 8($2)
	i64.const	$push42=, -1932312156840787968
	i32.load	$push40=, 8($0)
	i64.load	$push41=, 0($pop40)
	i64.load	$push109=, 0($1)
	tee_local	$push108=, $6=, $pop109
	i32.call	$push43=, db_store_i64@FUNCTION, $pop39, $pop42, $pop41, $pop108, $8, $7
	i32.store	68($1), $pop43
	block   	
	i32.const	$push44=, 513
	i32.lt_u	$push45=, $7, $pop44
	br_if   	0, $pop45
	call    	free@FUNCTION, $8
.LBB7_9:
	end_block
	block   	
	i64.load	$push46=, 16($2)
	i64.lt_u	$push47=, $6, $pop46
	br_if   	0, $pop47
	i32.const	$push54=, 16
	i32.add 	$push55=, $2, $pop54
	i64.const	$push52=, -2
	i64.const	$push50=, 1
	i64.add 	$push51=, $6, $pop50
	i64.const	$push48=, -3
	i64.gt_u	$push49=, $6, $pop48
	i64.select	$push53=, $pop52, $pop51, $pop49
	i64.store	0($pop55), $pop53
.LBB7_11:
	end_block
	i32.const	$push56=, 8
	i32.add 	$push57=, $2, $pop56
	i64.load	$6=, 0($pop57)
	i32.const	$push110=, 8
	i32.add 	$push58=, $0, $pop110
	i32.load	$push59=, 0($pop58)
	i64.load	$4=, 0($pop59)
	i64.load	$5=, 0($1)
	i32.const	$push60=, 24
	i32.add 	$push61=, $1, $pop60
	i64.load	$push62=, 0($pop61)
	i64.store	24($9), $pop62
	i32.const	$push63=, 16
	i32.add 	$push64=, $1, $pop63
	i64.load	$push65=, 0($pop64)
	i64.store	16($9), $pop65
	i64.const	$push66=, -1932312156840787968
	i32.const	$push76=, 16
	i32.add 	$push77=, $9, $pop76
	i32.call	$push67=, db_idx128_store@FUNCTION, $6, $pop66, $4, $5, $pop77
	i32.store	72($1), $pop67
	i32.const	$push75=, 0
	i32.const	$push73=, 32
	i32.add 	$push74=, $9, $pop73
	i32.store	__stack_pointer($pop75), $pop74
	.endfunc
.Lfunc_end7:
	.size	_ZZN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEESI_SI_E3$_0EENSA_14const_iteratorEyOT_ENKUlRSL_E_clINSA_4itemEEEDaSN_, .Lfunc_end7-_ZZN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSC_11char_traitsIcEENSC_9allocatorIcEEEESI_SI_E3$_0EENSA_14const_iteratorEyOT_ENKUlRSL_E_clINSA_4itemEEEDaSN_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push54=, 0($0)
	tee_local	$push53=, $6=, $pop54
	i32.sub 	$push1=, $pop0, $pop53
	i32.const	$push52=, 24
	i32.div_s	$push51=, $pop1, $pop52
	tee_local	$push50=, $4=, $pop51
	i32.const	$push2=, 1
	i32.add 	$push49=, $pop50, $pop2
	tee_local	$push48=, $5=, $pop49
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop48, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push57=, 24
	i32.div_s	$push56=, $pop6, $pop57
	tee_local	$push55=, $6=, $pop56
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop55, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push61=, $6, $pop9
	tee_local	$push60=, $7=, $pop61
	i32.lt_u	$push10=, $7, $5
	i32.select	$push59=, $5, $pop60, $pop10
	tee_local	$push58=, $7=, $pop59
	i32.eqz 	$push91=, $pop58
	br_if   	1, $pop91
.LBB8_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB8_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB8_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB8_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push70=, 0
	i32.store	0($1), $pop70
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push69=, $6, $pop14
	tee_local	$push68=, $1=, $pop69
	i32.store	0($pop68), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push67=, 24
	i32.mul 	$push17=, $7, $pop67
	i32.add 	$4=, $6, $pop17
	i32.const	$push66=, 24
	i32.add 	$5=, $1, $pop66
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push65=, 0($pop19)
	tee_local	$push64=, $6=, $pop65
	i32.load	$push63=, 0($0)
	tee_local	$push62=, $7=, $pop63
	i32.eq  	$push20=, $pop64, $pop62
	br_if   	0, $pop20
.LBB8_8:
	loop    	
	i32.const	$push82=, -24
	i32.add 	$push81=, $6, $pop82
	tee_local	$push80=, $2=, $pop81
	i32.load	$3=, 0($pop80)
	i32.const	$push79=, 0
	i32.store	0($2), $pop79
	i32.const	$push78=, -24
	i32.add 	$push21=, $1, $pop78
	i32.store	0($pop21), $3
	i32.const	$push77=, -8
	i32.add 	$push22=, $1, $pop77
	i32.const	$push76=, -8
	i32.add 	$push23=, $6, $pop76
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push75=, -12
	i32.add 	$push25=, $1, $pop75
	i32.const	$push74=, -12
	i32.add 	$push26=, $6, $pop74
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push73=, -16
	i32.add 	$push28=, $1, $pop73
	i32.const	$push72=, -16
	i32.add 	$push29=, $6, $pop72
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push71=, -24
	i32.add 	$1=, $1, $pop71
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB8_10:
	end_block
	copy_local	$6=, $7
.LBB8_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB8_13:
	loop    	
	i32.const	$push86=, -24
	i32.add 	$push85=, $7, $pop86
	tee_local	$push84=, $7=, $pop85
	i32.load	$1=, 0($pop84)
	i32.const	$push83=, 0
	i32.store	0($7), $pop83
	block   	
	i32.eqz 	$push92=, $1
	br_if   	0, $pop92
	block   	
	i32.load8_u	$push39=, 44($1)
	i32.const	$push87=, 1
	i32.and 	$push40=, $pop39, $pop87
	i32.eqz 	$push93=, $pop40
	br_if   	0, $pop93
	i32.const	$push88=, 52
	i32.add 	$push41=, $1, $pop88
	i32.load	$push42=, 0($pop41)
	call    	_ZdlPv@FUNCTION, $pop42
.LBB8_16:
	end_block
	block   	
	i32.load8_u	$push43=, 32($1)
	i32.const	$push89=, 1
	i32.and 	$push44=, $pop43, $pop89
	i32.eqz 	$push94=, $pop44
	br_if   	0, $pop94
	i32.const	$push90=, 40
	i32.add 	$push45=, $1, $pop90
	i32.load	$push46=, 0($pop45)
	call    	_ZdlPv@FUNCTION, $pop46
.LBB8_18:
	end_block
	call    	_ZdlPv@FUNCTION, $1
.LBB8_19:
	end_block
	i32.ne  	$push47=, $6, $7
	br_if   	0, $pop47
.LBB8_20:
	end_loop
	end_block
	block   	
	i32.eqz 	$push95=, $6
	br_if   	0, $pop95
	call    	_ZdlPv@FUNCTION, $6
.LBB8_22:
	end_block
	.endfunc
.Lfunc_end8:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_, .Lfunc_end8-_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_

	.text
	.type	_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEESK_SK_E3$_1EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_,@function
_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEESK_SK_E3$_1EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_:
	.param  	i32, i32
	.local  	i32, i32, i64, i64, i32, i64, i32, i32
	i32.const	$push64=, 0
	i32.load	$push65=, __stack_pointer($pop64)
	i32.const	$push66=, 32
	i32.sub 	$push86=, $pop65, $pop66
	tee_local	$push85=, $8=, $pop86
	copy_local	$9=, $pop85
	i32.const	$push67=, 0
	i32.store	__stack_pointer($pop67), $8
	i32.load	$2=, 0($0)
	i32.load	$6=, 4($0)
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i64.const	$push3=, 4294967295
	i64.and 	$push4=, $pop2, $pop3
	i64.store	0($1), $pop4
	i32.load	$push84=, 0($6)
	tee_local	$push83=, $3=, $pop84
	i64.load	$7=, 0($pop83)
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.const	$push7=, 8
	i32.add 	$push8=, $3, $pop7
	i64.load	$push9=, 0($pop8)
	i64.store	0($pop6), $pop9
	i64.store	16($1), $7
	i32.load	$push10=, 4($6)
	i64.load	$push11=, 0($pop10)
	i64.store	32($1), $pop11
	i32.const	$push82=, 1
	i32.store8	40($1), $pop82
	i32.const	$push12=, 44
	i32.add 	$push13=, $1, $pop12
	i32.load	$push14=, 8($6)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop13, $pop14
	i32.const	$push17=, 48
	i32.add 	$push18=, $1, $pop17
	i32.load	$push19=, 0($pop18)
	i32.load8_u	$push81=, 44($1)
	tee_local	$push80=, $6=, $pop81
	i32.const	$push79=, 1
	i32.shr_u	$push16=, $pop80, $pop79
	i32.const	$push78=, 1
	i32.and 	$push15=, $6, $pop78
	i32.select	$push77=, $pop19, $pop16, $pop15
	tee_local	$push76=, $3=, $pop77
	i32.const	$push20=, 33
	i32.add 	$6=, $pop76, $pop20
	i64.extend_u/i32	$7=, $3
.LBB9_1:
	loop    	
	i32.const	$push91=, 1
	i32.add 	$6=, $6, $pop91
	i64.const	$push90=, 7
	i64.shr_u	$push89=, $7, $pop90
	tee_local	$push88=, $7=, $pop89
	i64.const	$push87=, 0
	i64.ne  	$push21=, $pop88, $pop87
	br_if   	0, $pop21
	end_loop
	block   	
	block   	
	i32.const	$push22=, 513
	i32.lt_u	$push23=, $6, $pop22
	br_if   	0, $pop23
	i32.call	$8=, malloc@FUNCTION, $6
	br      	1
.LBB9_4:
	end_block
	i32.const	$push63=, 0
	i32.const	$push24=, 15
	i32.add 	$push25=, $6, $pop24
	i32.const	$push26=, -16
	i32.and 	$push27=, $pop25, $pop26
	i32.sub 	$push93=, $8, $pop27
	tee_local	$push92=, $8=, $pop93
	copy_local	$push75=, $pop92
	i32.store	__stack_pointer($pop63), $pop75
.LBB9_5:
	end_block
	i32.store	4($9), $8
	i32.store	0($9), $8
	i32.add 	$push28=, $8, $6
	i32.store	8($9), $pop28
	i32.call	$drop=, _ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE@FUNCTION, $9, $1
	i64.load	$push29=, 8($2)
	i64.const	$push32=, -7880044396883394560
	i32.load	$push30=, 8($0)
	i64.load	$push31=, 0($pop30)
	i64.load	$push95=, 0($1)
	tee_local	$push94=, $7=, $pop95
	i32.call	$push33=, db_store_i64@FUNCTION, $pop29, $pop32, $pop31, $pop94, $8, $6
	i32.store	60($1), $pop33
	block   	
	i32.const	$push34=, 513
	i32.lt_u	$push35=, $6, $pop34
	br_if   	0, $pop35
	call    	free@FUNCTION, $8
.LBB9_7:
	end_block
	block   	
	i64.load	$push36=, 16($2)
	i64.lt_u	$push37=, $7, $pop36
	br_if   	0, $pop37
	i32.const	$push44=, 16
	i32.add 	$push45=, $2, $pop44
	i64.const	$push42=, -2
	i64.const	$push40=, 1
	i64.add 	$push41=, $7, $pop40
	i64.const	$push38=, -3
	i64.gt_u	$push39=, $7, $pop38
	i64.select	$push43=, $pop42, $pop41, $pop39
	i64.store	0($pop45), $pop43
.LBB9_9:
	end_block
	i32.const	$push46=, 8
	i32.add 	$push100=, $2, $pop46
	tee_local	$push99=, $6=, $pop100
	i64.load	$7=, 0($pop99)
	i32.const	$push98=, 8
	i32.add 	$push47=, $0, $pop98
	i32.load	$push97=, 0($pop47)
	tee_local	$push96=, $8=, $pop97
	i64.load	$4=, 0($pop96)
	i64.load	$5=, 0($1)
	i32.const	$push48=, 24
	i32.add 	$push49=, $1, $pop48
	i64.load	$push50=, 0($pop49)
	i64.store	24($9), $pop50
	i32.const	$push51=, 16
	i32.add 	$push52=, $1, $pop51
	i64.load	$push53=, 0($pop52)
	i64.store	16($9), $pop53
	i64.const	$push54=, -7880044396883394560
	i32.const	$push71=, 16
	i32.add 	$push72=, $9, $pop71
	i32.call	$push55=, db_idx128_store@FUNCTION, $7, $pop54, $4, $5, $pop72
	i32.store	64($1), $pop55
	i64.load	$7=, 0($8)
	i64.load	$4=, 0($6)
	i64.load	$5=, 0($1)
	i32.const	$push56=, 32
	i32.add 	$push57=, $1, $pop56
	i64.load	$push58=, 0($pop57)
	i64.store	16($9), $pop58
	i32.const	$push61=, 68
	i32.add 	$push62=, $1, $pop61
	i64.const	$push59=, -7880044396883394559
	i32.const	$push73=, 16
	i32.add 	$push74=, $9, $pop73
	i32.call	$push60=, db_idx64_store@FUNCTION, $4, $pop59, $7, $5, $pop74
	i32.store	0($pop62), $pop60
	i32.const	$push70=, 0
	i32.const	$push68=, 32
	i32.add 	$push69=, $9, $pop68
	i32.store	__stack_pointer($pop70), $pop69
	.endfunc
.Lfunc_end9:
	.size	_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEESK_SK_E3$_1EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_, .Lfunc_end9-_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6createEyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEESK_SK_E3$_1EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push50=, 0($0)
	tee_local	$push49=, $6=, $pop50
	i32.sub 	$push1=, $pop0, $pop49
	i32.const	$push48=, 24
	i32.div_s	$push47=, $pop1, $pop48
	tee_local	$push46=, $4=, $pop47
	i32.const	$push2=, 1
	i32.add 	$push45=, $pop46, $pop2
	tee_local	$push44=, $5=, $pop45
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop44, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push53=, 24
	i32.div_s	$push52=, $pop6, $pop53
	tee_local	$push51=, $6=, $pop52
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop51, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push57=, $6, $pop9
	tee_local	$push56=, $7=, $pop57
	i32.lt_u	$push10=, $7, $5
	i32.select	$push55=, $5, $pop56, $pop10
	tee_local	$push54=, $7=, $pop55
	i32.eqz 	$push85=, $pop54
	br_if   	1, $pop85
.LBB10_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB10_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB10_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB10_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push66=, 0
	i32.store	0($1), $pop66
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push65=, $6, $pop14
	tee_local	$push64=, $1=, $pop65
	i32.store	0($pop64), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push63=, 24
	i32.mul 	$push17=, $7, $pop63
	i32.add 	$4=, $6, $pop17
	i32.const	$push62=, 24
	i32.add 	$5=, $1, $pop62
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push61=, 0($pop19)
	tee_local	$push60=, $6=, $pop61
	i32.load	$push59=, 0($0)
	tee_local	$push58=, $7=, $pop59
	i32.eq  	$push20=, $pop60, $pop58
	br_if   	0, $pop20
.LBB10_8:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $6, $pop78
	tee_local	$push76=, $2=, $pop77
	i32.load	$3=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($2), $pop75
	i32.const	$push74=, -24
	i32.add 	$push21=, $1, $pop74
	i32.store	0($pop21), $3
	i32.const	$push73=, -8
	i32.add 	$push22=, $1, $pop73
	i32.const	$push72=, -8
	i32.add 	$push23=, $6, $pop72
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push71=, -12
	i32.add 	$push25=, $1, $pop71
	i32.const	$push70=, -12
	i32.add 	$push26=, $6, $pop70
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push69=, -16
	i32.add 	$push28=, $1, $pop69
	i32.const	$push68=, -16
	i32.add 	$push29=, $6, $pop68
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push67=, -24
	i32.add 	$1=, $1, $pop67
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB10_10:
	end_block
	copy_local	$6=, $7
.LBB10_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB10_13:
	loop    	
	i32.const	$push82=, -24
	i32.add 	$push81=, $7, $pop82
	tee_local	$push80=, $7=, $pop81
	i32.load	$1=, 0($pop80)
	i32.const	$push79=, 0
	i32.store	0($7), $pop79
	block   	
	i32.eqz 	$push86=, $1
	br_if   	0, $pop86
	block   	
	i32.load8_u	$push39=, 44($1)
	i32.const	$push83=, 1
	i32.and 	$push40=, $pop39, $pop83
	i32.eqz 	$push87=, $pop40
	br_if   	0, $pop87
	i32.const	$push84=, 52
	i32.add 	$push41=, $1, $pop84
	i32.load	$push42=, 0($pop41)
	call    	_ZdlPv@FUNCTION, $pop42
.LBB10_16:
	end_block
	call    	_ZdlPv@FUNCTION, $1
.LBB10_17:
	end_block
	i32.ne  	$push43=, $6, $7
	br_if   	0, $pop43
.LBB10_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push88=, $6
	br_if   	0, $pop88
	call    	_ZdlPv@FUNCTION, $6
.LBB10_20:
	end_block
	.endfunc
.Lfunc_end10:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_, .Lfunc_end10-_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_

	.section	.text._ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE,"axG",@progbits,_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE,comdat
	.hidden	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE
	.weak	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE
	.type	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE,@function
_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push11=, 15
	i32.gt_s	$push12=, $pop10, $pop11
	i32.const	$push49=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop12, $pop49
	i32.load	$push15=, 4($0)
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push48=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop15, $pop14, $pop48
	i32.load	$push16=, 4($0)
	i32.const	$push47=, 16
	i32.add 	$push46=, $pop16, $pop47
	tee_local	$push45=, $2=, $pop46
	i32.store	4($0), $pop45
	i32.load	$push17=, 8($0)
	i32.sub 	$push18=, $pop17, $2
	i32.const	$push44=, 7
	i32.gt_s	$push19=, $pop18, $pop44
	i32.const	$push43=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop19, $pop43
	i32.load	$push22=, 4($0)
	i32.const	$push20=, 32
	i32.add 	$push21=, $1, $pop20
	i32.const	$push42=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop22, $pop21, $pop42
	i32.load	$push23=, 4($0)
	i32.const	$push41=, 8
	i32.add 	$push40=, $pop23, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.store	4($0), $pop39
	i32.load	$push24=, 8($0)
	i32.sub 	$push25=, $pop24, $2
	i32.const	$push26=, 0
	i32.gt_s	$push27=, $pop25, $pop26
	i32.const	$push38=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop27, $pop38
	i32.load	$push30=, 4($0)
	i32.const	$push28=, 40
	i32.add 	$push29=, $1, $pop28
	i32.const	$push31=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop29, $pop31
	i32.load	$push32=, 4($0)
	i32.const	$push37=, 1
	i32.add 	$push33=, $pop32, $pop37
	i32.store	4($0), $pop33
	i32.const	$push34=, 44
	i32.add 	$push35=, $1, $pop34
	i32.call	$push36=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop35
	.endfunc
.Lfunc_end11:
	.size	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE, .Lfunc_end11-_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push31=, 0
	i32.const	$push28=, 0
	i32.load	$push29=, __stack_pointer($pop28)
	i32.const	$push30=, 16
	i32.sub 	$push42=, $pop29, $pop30
	tee_local	$push41=, $8=, $pop42
	i32.store	__stack_pointer($pop31), $pop41
	i32.load	$push2=, 4($1)
	i32.load8_u	$push40=, 0($1)
	tee_local	$push39=, $5=, $pop40
	i32.const	$push38=, 1
	i32.shr_u	$push1=, $pop39, $pop38
	i32.const	$push37=, 1
	i32.and 	$push0=, $5, $pop37
	i32.select	$push3=, $pop2, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$4=, $0, $pop7
	i32.const	$push11=, 4
	i32.add 	$5=, $0, $pop11
.LBB12_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $7, $pop56
	tee_local	$push54=, $7=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push52=, $pop54, $pop53
	tee_local	$push51=, $3=, $pop52
	i32.const	$push50=, 7
	i32.shl 	$push5=, $pop51, $pop50
	i32.const	$push49=, 127
	i32.and 	$push4=, $2, $pop49
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($8), $pop6
	i32.load	$push8=, 0($4)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push48=, 0
	i32.gt_s	$push10=, $pop9, $pop48
	i32.const	$push47=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop10, $pop47
	i32.load	$push12=, 0($5)
	i32.const	$push35=, 15
	i32.add 	$push36=, $8, $pop35
	i32.const	$push46=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop36, $pop46
	i32.load	$push13=, 0($5)
	i32.const	$push45=, 1
	i32.add 	$push44=, $pop13, $pop45
	tee_local	$push43=, $6=, $pop44
	i32.store	0($5), $pop43
	br_if   	0, $3
	end_loop
	block   	
	i32.const	$push65=, 4
	i32.add 	$push15=, $1, $pop65
	i32.load	$push16=, 0($pop15)
	i32.load8_u	$push64=, 0($1)
	tee_local	$push63=, $5=, $pop64
	i32.const	$push62=, 1
	i32.shr_u	$push14=, $pop63, $pop62
	i32.const	$push61=, 1
	i32.and 	$push60=, $5, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.select	$push58=, $pop16, $pop14, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.eqz 	$push70=, $pop57
	br_if   	0, $pop70
	i32.load	$3=, 8($1)
	i32.const	$push17=, 8
	i32.add 	$push18=, $0, $pop17
	i32.load	$push19=, 0($pop18)
	i32.sub 	$push20=, $pop19, $6
	i32.ge_s	$push21=, $pop20, $5
	i32.const	$push22=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push69=, 4
	i32.add 	$push68=, $0, $pop69
	tee_local	$push67=, $6=, $pop68
	i32.load	$push25=, 0($pop67)
	i32.const	$push66=, 1
	i32.add 	$push23=, $1, $pop66
	i32.select	$push24=, $3, $pop23, $2
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop24, $5
	i32.load	$push26=, 0($6)
	i32.add 	$push27=, $pop26, $5
	i32.store	0($6), $pop27
.LBB12_4:
	end_block
	i32.const	$push34=, 0
	i32.const	$push32=, 16
	i32.add 	$push33=, $8, $pop32
	i32.store	__stack_pointer($pop34), $pop33
	copy_local	$push71=, $0
	.endfunc
.Lfunc_end12:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE, .Lfunc_end12-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE

	.section	.text._ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE,"axG",@progbits,_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE,comdat
	.hidden	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE
	.weak	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE
	.type	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE,@function
_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop8, $pop43
	tee_local	$push41=, $2=, $pop42
	i32.store	4($0), $pop41
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push11=, 15
	i32.gt_s	$push12=, $pop10, $pop11
	i32.const	$push40=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop12, $pop40
	i32.load	$push15=, 4($0)
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push39=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop15, $pop14, $pop39
	i32.load	$push16=, 4($0)
	i32.const	$push38=, 16
	i32.add 	$push17=, $pop16, $pop38
	i32.store	4($0), $pop17
	i32.const	$push20=, 32
	i32.add 	$push21=, $1, $pop20
	i32.call	$push22=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop21
	i32.const	$push18=, 44
	i32.add 	$push19=, $1, $pop18
	i32.call	$push37=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop22, $pop19
	tee_local	$push36=, $0=, $pop37
	i32.load	$push24=, 8($pop36)
	i32.load	$push23=, 4($0)
	i32.sub 	$push25=, $pop24, $pop23
	i32.const	$push35=, 7
	i32.gt_s	$push26=, $pop25, $pop35
	i32.const	$push34=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop26, $pop34
	i32.load	$push27=, 4($0)
	i32.const	$push28=, 56
	i32.add 	$push29=, $1, $pop28
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop29, $pop33
	i32.load	$push30=, 4($0)
	i32.const	$push32=, 8
	i32.add 	$push31=, $pop30, $pop32
	i32.store	4($0), $pop31
	copy_local	$push44=, $0
	.endfunc
.Lfunc_end13:
	.size	_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE, .Lfunc_end13-_ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container9workspaceE

	.section	.text._ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo,"axG",@progbits,_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo,comdat
	.hidden	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo
	.weak	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo
	.type	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo,@function
_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo:
	.param  	i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i32, i32
	i32.const	$push36=, 0
	i32.const	$push33=, 0
	i32.load	$push34=, __stack_pointer($pop33)
	i32.const	$push35=, 32
	i32.sub 	$push48=, $pop34, $pop35
	tee_local	$push47=, $10=, $pop48
	i32.store	__stack_pointer($pop36), $pop47
	i64.const	$push0=, 0
	i64.store	24($10), $pop0
	i32.const	$push1=, 8
	i32.add 	$push2=, $2, $pop1
	i64.load	$push3=, 0($pop2)
	i64.store	8($10), $pop3
	i64.load	$push4=, 0($2)
	i64.store	0($10), $pop4
	i32.const	$2=, 0
	block   	
	i32.load	$push46=, 0($1)
	tee_local	$push45=, $8=, $pop46
	i64.load	$push6=, 0($pop45)
	i64.load	$push5=, 8($8)
	i64.const	$push7=, -1932312156840787968
	i32.const	$push40=, 24
	i32.add 	$push41=, $10, $pop40
	i32.call	$push44=, db_idx128_lowerbound@FUNCTION, $pop6, $pop5, $pop7, $10, $pop41
	tee_local	$push43=, $3=, $pop44
	i32.const	$push42=, 0
	i32.lt_s	$push8=, $pop43, $pop42
	br_if   	0, $pop8
	i64.load	$5=, 24($10)
	block   	
	i32.load	$push54=, 0($1)
	tee_local	$push53=, $4=, $pop54
	i32.const	$push9=, 28
	i32.add 	$push10=, $pop53, $pop9
	i32.load	$push52=, 0($pop10)
	tee_local	$push51=, $9=, $pop52
	i32.load	$push50=, 24($4)
	tee_local	$push49=, $6=, $pop50
	i32.eq  	$push11=, $pop51, $pop49
	br_if   	0, $pop11
	i32.const	$push55=, -24
	i32.add 	$2=, $9, $pop55
	i32.const	$push12=, 0
	i32.sub 	$7=, $pop12, $6
.LBB14_3:
	loop    	
	i32.load	$push13=, 0($2)
	i64.load	$push14=, 0($pop13)
	i64.eq  	$push15=, $pop14, $5
	br_if   	1, $pop15
	copy_local	$9=, $2
	i32.const	$push59=, -24
	i32.add 	$push58=, $2, $pop59
	tee_local	$push57=, $8=, $pop58
	copy_local	$2=, $pop57
	i32.add 	$push16=, $8, $7
	i32.const	$push56=, -24
	i32.ne  	$push17=, $pop16, $pop56
	br_if   	0, $pop17
.LBB14_5:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push18=, $9, $6
	br_if   	0, $pop18
	i32.const	$push19=, -24
	i32.add 	$push20=, $9, $pop19
	i32.load	$push61=, 0($pop20)
	tee_local	$push60=, $2=, $pop61
	i32.load	$push21=, 64($pop60)
	i32.eq  	$push22=, $pop21, $4
	i32.const	$push23=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	br      	1
.LBB14_7:
	end_block
	i64.load	$push25=, 0($4)
	i64.load	$push24=, 8($4)
	i64.const	$push26=, -1932312156840787968
	i32.call	$push27=, db_find_i64@FUNCTION, $pop25, $pop24, $pop26, $5
	i32.call	$push63=, _ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $4, $pop27
	tee_local	$push62=, $2=, $pop63
	i32.load	$push28=, 64($pop62)
	i32.eq  	$push29=, $pop28, $4
	i32.const	$push30=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop29, $pop30
.LBB14_8:
	end_block
	i32.const	$push31=, 72
	i32.add 	$push32=, $2, $pop31
	i32.store	0($pop32), $3
.LBB14_9:
	end_block
	i32.store	4($0), $2
	i32.store	0($0), $1
	i32.const	$push39=, 0
	i32.const	$push37=, 32
	i32.add 	$push38=, $10, $pop37
	i32.store	__stack_pointer($pop39), $pop38
	.endfunc
.Lfunc_end14:
	.size	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo, .Lfunc_end14-_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo

	.section	.text._ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push52=, 0
	i32.load	$push53=, __stack_pointer($pop52)
	i32.const	$push54=, 48
	i32.sub 	$push73=, $pop53, $pop54
	tee_local	$push72=, $9=, $pop73
	copy_local	$8=, $pop72
	i32.const	$push55=, 0
	i32.store	__stack_pointer($pop55), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push71=, 0($pop3)
	tee_local	$push70=, $7=, $pop71
	i32.load	$push69=, 24($0)
	tee_local	$push68=, $2=, $pop69
	i32.eq  	$push4=, $pop70, $pop68
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push74=, -24
	i32.add 	$6=, $7, $pop74
.LBB15_2:
	loop    	
	i32.const	$push75=, 16
	i32.add 	$push6=, $6, $pop75
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push79=, -24
	i32.add 	$push78=, $6, $pop79
	tee_local	$push77=, $4=, $pop78
	copy_local	$6=, $pop77
	i32.add 	$push9=, $4, $3
	i32.const	$push76=, -24
	i32.ne  	$push10=, $pop9, $pop76
	br_if   	0, $pop10
.LBB15_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB15_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push82=, 0
	i32.call	$push81=, db_get_i64@FUNCTION, $1, $pop14, $pop82
	tee_local	$push80=, $6=, $pop81
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop80, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.15
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB15_8:
	end_block
	i32.const	$push51=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push84=, $9, $pop25
	tee_local	$push83=, $4=, $pop84
	copy_local	$push67=, $pop83
	i32.store	__stack_pointer($pop51), $pop67
.LBB15_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB15_11:
	end_block
	i32.const	$push29=, 80
	i32.call	$push96=, _Znwj@FUNCTION, $pop29
	tee_local	$push95=, $6=, $pop96
	i64.const	$push30=, 0
	i64.store	32($pop95):p2align=2, $pop30
	i64.const	$push94=, 0
	i64.store	40($6):p2align=2, $pop94
	i64.const	$push93=, 0
	i64.store	48($6):p2align=2, $pop93
	i32.store	64($6), $0
	i32.const	$push59=, 32
	i32.add 	$push60=, $8, $pop59
	i32.call	$drop=, _ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE@FUNCTION, $pop60, $6
	i32.const	$push31=, -1
	i32.store	72($6), $pop31
	i32.store	68($6), $1
	i32.store	24($8), $6
	i64.load	$push92=, 0($6)
	tee_local	$push91=, $5=, $pop92
	i64.store	16($8), $pop91
	i32.load	$push90=, 68($6)
	tee_local	$push89=, $7=, $pop90
	i32.store	12($8), $pop89
	block   	
	block   	
	i32.const	$push35=, 28
	i32.add 	$push88=, $0, $pop35
	tee_local	$push87=, $1=, $pop88
	i32.load	$push86=, 0($pop87)
	tee_local	$push85=, $4=, $pop86
	i32.const	$push32=, 32
	i32.add 	$push33=, $0, $pop32
	i32.load	$push34=, 0($pop33)
	i32.ge_u	$push36=, $pop85, $pop34
	br_if   	0, $pop36
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push37=, 0
	i32.store	24($8), $pop37
	i32.store	0($4), $6
	i32.const	$push38=, 24
	i32.add 	$push39=, $4, $pop38
	i32.store	0($1), $pop39
	br      	1
.LBB15_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push61=, 24
	i32.add 	$push62=, $8, $pop61
	i32.const	$push63=, 16
	i32.add 	$push64=, $8, $pop63
	i32.const	$push65=, 12
	i32.add 	$push66=, $8, $pop65
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEEEE8item_ptrENS_9allocatorISD_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSC_4itemENS_14default_deleteISJ_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop62, $pop64, $pop66
.LBB15_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push40=, 0
	i32.store	24($8), $pop40
	i32.eqz 	$push99=, $4
	br_if   	0, $pop99
	block   	
	i32.load8_u	$push41=, 44($4)
	i32.const	$push97=, 1
	i32.and 	$push42=, $pop41, $pop97
	i32.eqz 	$push100=, $pop42
	br_if   	0, $pop100
	i32.const	$push43=, 52
	i32.add 	$push44=, $4, $pop43
	i32.load	$push45=, 0($pop44)
	call    	_ZdlPv@FUNCTION, $pop45
.LBB15_17:
	end_block
	block   	
	i32.load8_u	$push46=, 32($4)
	i32.const	$push98=, 1
	i32.and 	$push47=, $pop46, $pop98
	i32.eqz 	$push101=, $pop47
	br_if   	0, $pop101
	i32.const	$push48=, 40
	i32.add 	$push49=, $4, $pop48
	i32.load	$push50=, 0($pop49)
	call    	_ZdlPv@FUNCTION, $pop50
.LBB15_19:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB15_20:
	end_block
	i32.const	$push58=, 0
	i32.const	$push56=, 48
	i32.add 	$push57=, $8, $pop56
	i32.store	__stack_pointer($pop58), $pop57
	copy_local	$push102=, $6
	.endfunc
.Lfunc_end15:
	.size	_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl, .Lfunc_end15-_ZNK5eosio11multi_indexILy16514431916868763648EN16secrataContainer9container9workspaceEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEEEE31load_object_by_primary_iteratorEl

	.section	.text._ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE,"axG",@progbits,_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE,comdat
	.hidden	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE
	.weak	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE
	.type	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE,@function
_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop8, $pop43
	tee_local	$push41=, $2=, $pop42
	i32.store	4($0), $pop41
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push11=, 15
	i32.gt_u	$push12=, $pop10, $pop11
	i32.const	$push40=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop12, $pop40
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 4($0)
	i32.const	$push39=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop39
	i32.load	$push16=, 4($0)
	i32.const	$push38=, 16
	i32.add 	$push17=, $pop16, $pop38
	i32.store	4($0), $pop17
	i32.const	$push20=, 32
	i32.add 	$push21=, $1, $pop20
	i32.call	$push22=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop21
	i32.const	$push18=, 44
	i32.add 	$push19=, $1, $pop18
	i32.call	$push37=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop22, $pop19
	tee_local	$push36=, $0=, $pop37
	i32.load	$push24=, 8($pop36)
	i32.load	$push23=, 4($0)
	i32.sub 	$push25=, $pop24, $pop23
	i32.const	$push35=, 7
	i32.gt_u	$push26=, $pop25, $pop35
	i32.const	$push34=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop26, $pop34
	i32.const	$push28=, 56
	i32.add 	$push29=, $1, $pop28
	i32.load	$push27=, 4($0)
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop29, $pop27, $pop33
	i32.load	$push30=, 4($0)
	i32.const	$push32=, 8
	i32.add 	$push31=, $pop30, $pop32
	i32.store	4($0), $pop31
	copy_local	$push44=, $0
	.endfunc
.Lfunc_end16:
	.size	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE, .Lfunc_end16-_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container9workspaceE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push38=, 0
	i32.const	$push35=, 0
	i32.load	$push36=, __stack_pointer($pop35)
	i32.const	$push37=, 32
	i32.sub 	$push51=, $pop36, $pop37
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop38), $pop50
	i32.const	$push49=, 0
	i32.store	24($7), $pop49
	i64.const	$push48=, 0
	i64.store	16($7), $pop48
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop43
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push47=, 20($7)
	tee_local	$push46=, $5=, $pop47
	i32.load	$push45=, 16($7)
	tee_local	$push44=, $4=, $pop45
	i32.ne  	$push0=, $pop46, $pop44
	br_if   	0, $pop0
	i32.load8_u	$push25=, 0($1)
	i32.const	$push26=, 1
	i32.and 	$push27=, $pop25, $pop26
	br_if   	1, $pop27
	i32.const	$push31=, 0
	i32.store16	0($1), $pop31
	i32.const	$push32=, 8
	i32.add 	$4=, $1, $pop32
	br      	2
.LBB17_3:
	end_block
	i32.const	$push1=, 8
	i32.add 	$push2=, $7, $pop1
	i32.const	$push55=, 0
	i32.store	0($pop2), $pop55
	i64.const	$push54=, 0
	i64.store	0($7), $pop54
	i32.sub 	$push53=, $5, $4
	tee_local	$push52=, $2=, $pop53
	i32.const	$push3=, -16
	i32.ge_u	$push4=, $pop52, $pop3
	br_if   	7, $pop4
	i32.const	$push5=, 11
	i32.ge_u	$push6=, $2, $pop5
	br_if   	2, $pop6
	i32.const	$push12=, 1
	i32.shl 	$push13=, $2, $pop12
	i32.store8	0($7), $pop13
	i32.const	$push56=, 1
	i32.or  	$6=, $7, $pop56
	br_if   	3, $2
	br      	4
.LBB17_6:
	end_block
	i32.load	$push28=, 8($1)
	i32.const	$push29=, 0
	i32.store8	0($pop28), $pop29
	i32.const	$push57=, 0
	i32.store	4($1), $pop57
	i32.const	$push30=, 8
	i32.add 	$4=, $1, $pop30
.LBB17_7:
	end_block
	i32.const	$push33=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop33
	i32.const	$push60=, 0
	i32.store	0($4), $pop60
	i64.const	$push34=, 0
	i64.store	0($1):p2align=2, $pop34
	i32.load	$push59=, 16($7)
	tee_local	$push58=, $4=, $pop59
	br_if   	3, $pop58
	br      	4
.LBB17_8:
	end_block
	i32.const	$push7=, 16
	i32.add 	$push8=, $2, $pop7
	i32.const	$push9=, -16
	i32.and 	$push62=, $pop8, $pop9
	tee_local	$push61=, $5=, $pop62
	i32.call	$6=, _Znwj@FUNCTION, $pop61
	i32.const	$push10=, 1
	i32.or  	$push11=, $5, $pop10
	i32.store	0($7), $pop11
	i32.store	8($7), $6
	i32.store	4($7), $2
.LBB17_9:
	end_block
	copy_local	$3=, $2
	copy_local	$5=, $6
.LBB17_10:
	loop    	
	i32.load8_u	$push14=, 0($4)
	i32.store8	0($5), $pop14
	i32.const	$push67=, 1
	i32.add 	$5=, $5, $pop67
	i32.const	$push66=, 1
	i32.add 	$4=, $4, $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $3, $pop65
	tee_local	$push63=, $3=, $pop64
	br_if   	0, $pop63
	end_loop
	i32.add 	$6=, $6, $2
.LBB17_12:
	end_block
	i32.const	$push68=, 0
	i32.store8	0($6), $pop68
	block   	
	block   	
	i32.load8_u	$push15=, 0($1)
	i32.const	$push16=, 1
	i32.and 	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.const	$push69=, 0
	i32.store16	0($1), $pop69
	br      	1
.LBB17_14:
	end_block
	i32.load	$push18=, 8($1)
	i32.const	$push71=, 0
	i32.store8	0($pop18), $pop71
	i32.const	$push70=, 0
	i32.store	4($1), $pop70
.LBB17_15:
	end_block
	i32.const	$push19=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop19
	i32.const	$push20=, 8
	i32.add 	$push21=, $1, $pop20
	i32.const	$push74=, 8
	i32.add 	$push22=, $7, $pop74
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i64.load	$push24=, 0($7)
	i64.store	0($1):p2align=2, $pop24
	i32.load	$push73=, 16($7)
	tee_local	$push72=, $4=, $pop73
	i32.eqz 	$push75=, $pop72
	br_if   	1, $pop75
.LBB17_16:
	end_block
	i32.store	20($7), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB17_17:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return  	$0
.LBB17_18:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $7
	unreachable
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE, .Lfunc_end17-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB18_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop2, $pop37
	i32.load	$push36=, 0($3)
	tee_local	$push35=, $5=, $pop36
	i32.load8_u	$4=, 0($pop35)
	i32.const	$push34=, 1
	i32.add 	$push33=, $5, $pop34
	tee_local	$push32=, $5=, $pop33
	i32.store	0($3), $pop32
	i32.const	$push31=, 127
	i32.and 	$push4=, $4, $pop31
	i32.const	$push30=, 255
	i32.and 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	i32.shl 	$push5=, $pop4, $pop28
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push27=, 7
	i32.add 	$7=, $7, $pop27
	i32.const	$push26=, 7
	i32.shr_u	$push7=, $4, $pop26
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push45=, $6
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 4($1)
	tee_local	$push42=, $7=, $pop43
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $4=, $pop41
	i32.sub 	$push39=, $pop42, $pop40
	tee_local	$push38=, $2=, $pop39
	i32.le_u	$push8=, $pop44, $pop38
	br_if   	0, $pop8
	i32.sub 	$push12=, $3, $2
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $pop12
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.load	$5=, 0($pop14)
	i32.const	$push46=, 4
	i32.add 	$push15=, $1, $pop46
	i32.load	$7=, 0($pop15)
	i32.load	$4=, 0($1)
	br      	1
.LBB18_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB18_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 4
	i32.add 	$push50=, $0, $pop22
	tee_local	$push49=, $7=, $pop50
	i32.load	$push23=, 0($pop49)
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop23, $5
	i32.load	$push24=, 0($7)
	i32.add 	$push25=, $pop24, $5
	i32.store	0($7), $pop25
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end18:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end18-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push19=, 8($0)
	tee_local	$push18=, $2=, $pop19
	i32.load	$push17=, 4($0)
	tee_local	$push16=, $6=, $pop17
	i32.sub 	$push0=, $pop18, $pop16
	i32.ge_u	$push1=, $pop0, $1
	br_if   	0, $pop1
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $5=, $pop25
	i32.sub 	$push23=, $6, $pop24
	tee_local	$push22=, $3=, $pop23
	i32.add 	$push21=, $pop22, $1
	tee_local	$push20=, $4=, $pop21
	i32.const	$push4=, -1
	i32.le_s	$push5=, $pop20, $pop4
	br_if   	2, $pop5
	i32.const	$6=, 2147483647
	block   	
	i32.sub 	$push27=, $2, $5
	tee_local	$push26=, $2=, $pop27
	i32.const	$push6=, 1073741822
	i32.gt_u	$push7=, $pop26, $pop6
	br_if   	0, $pop7
	i32.const	$push8=, 1
	i32.shl 	$push31=, $2, $pop8
	tee_local	$push30=, $6=, $pop31
	i32.lt_u	$push9=, $6, $4
	i32.select	$push29=, $4, $pop30, $pop9
	tee_local	$push28=, $6=, $pop29
	i32.eqz 	$push52=, $pop28
	br_if   	2, $pop52
.LBB19_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB19_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB19_6:
	loop    	
	i32.const	$push51=, 0
	i32.store8	0($6), $pop51
	i32.load	$push3=, 0($0)
	i32.const	$push50=, 1
	i32.add 	$push49=, $pop3, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.store	0($0), $pop48
	i32.const	$push47=, -1
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $1=, $pop46
	br_if   	0, $pop45
	br      	4
.LBB19_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB19_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB19_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB19_10:
	loop    	
	i32.const	$push38=, 0
	i32.store8	0($6), $pop38
	i32.const	$push37=, 1
	i32.add 	$6=, $6, $pop37
	i32.const	$push36=, -1
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $1=, $pop35
	br_if   	0, $pop34
	end_loop
	i32.const	$push10=, 4
	i32.add 	$push44=, $0, $pop10
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.load	$push42=, 0($0)
	tee_local	$push41=, $1=, $pop42
	i32.sub 	$push40=, $pop11, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.sub 	$5=, $5, $pop39
	block   	
	i32.const	$push12=, 1
	i32.lt_s	$push13=, $2, $pop12
	br_if   	0, $pop13
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB19_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push14=, 8
	i32.add 	$push15=, $0, $pop14
	i32.store	0($pop15), $4
	i32.eqz 	$push53=, $1
	br_if   	0, $pop53
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB19_15:
	end_block
	.endfunc
.Lfunc_end19:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end19-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.text
	.hidden	_ZN16secrataContainer9container6updateEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.globl	_ZN16secrataContainer9container6updateEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.type	_ZN16secrataContainer9container6updateEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE,@function
_ZN16secrataContainer9container6updateEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE:
	.param  	i32, i64, i64, i64, i32
	i32.call	$push0=, _ZN16secrataContainer9container15workspaceExistsEo@FUNCTION, $0, $2, $3
	i32.eqz 	$push1=, $pop0
	i32.const	$push2=, .L.str
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	.endfunc
.Lfunc_end20:
	.size	_ZN16secrataContainer9container6updateEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE, .Lfunc_end20-_ZN16secrataContainer9container6updateEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE

	.hidden	_ZN16secrataContainer9container6inviteEyyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.globl	_ZN16secrataContainer9container6inviteEyyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.type	_ZN16secrataContainer9container6inviteEyyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE,@function
_ZN16secrataContainer9container6inviteEyyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE:
	.param  	i32, i64, i64, i64, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push73=, 0
	i32.const	$push70=, 0
	i32.load	$push71=, __stack_pointer($pop70)
	i32.const	$push72=, 144
	i32.sub 	$push117=, $pop71, $pop72
	tee_local	$push116=, $9=, $pop117
	i32.store	__stack_pointer($pop73), $pop116
	i64.store	96($9), $2
	i64.store	88($9), $4
	i64.store	80($9), $3
	call    	require_auth@FUNCTION, $1
	i32.call	$push0=, _ZN16secrataContainer9container15workspaceExistsEo@FUNCTION, $0, $3, $4
	i32.const	$push1=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop0, $pop1
	i32.call	$push2=, _ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo@FUNCTION, $0, $1, $3, $4
	i32.const	$push3=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.const	$push4=, 72
	i32.add 	$push115=, $9, $pop4
	tee_local	$push114=, $6=, $pop115
	i32.const	$push113=, 0
	i32.store	0($pop114), $pop113
	i64.store	48($9), $1
	i64.const	$push5=, -1
	i64.store	56($9), $pop5
	i64.const	$push112=, 0
	i64.store	64($9), $pop112
	i64.load	$push6=, 0($0)
	i64.store	40($9), $pop6
	i32.const	$push111=, 0
	i32.store16	76($9), $pop111
	i32.const	$push77=, 40
	i32.add 	$push78=, $9, $pop77
	i32.store	32($9), $pop78
	i32.const	$push79=, 24
	i32.add 	$push80=, $9, $pop79
	i32.const	$push81=, 32
	i32.add 	$push82=, $9, $pop81
	i32.const	$push83=, 80
	i32.add 	$push84=, $9, $pop83
	call    	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo@FUNCTION, $pop80, $pop82, $pop84
	block   	
	block   	
	block   	
	block   	
	i32.load	$push110=, 28($9)
	tee_local	$push109=, $0=, $pop110
	i32.eqz 	$push148=, $pop109
	br_if   	0, $pop148
.LBB21_2:
	block   	
	loop    	
	i64.load	$push7=, 16($0)
	i64.load	$push8=, 80($9)
	i64.xor 	$push9=, $pop7, $pop8
	i32.const	$push119=, 24
	i32.add 	$push10=, $0, $pop119
	i64.load	$push11=, 0($pop10)
	i64.load	$push12=, 88($9)
	i64.xor 	$push13=, $pop11, $pop12
	i64.or  	$push14=, $pop9, $pop13
	i64.const	$push118=, 0
	i64.ne  	$push15=, $pop14, $pop118
	br_if   	1, $pop15
	i64.load	$push16=, 32($0)
	i64.load	$push17=, 96($9)
	i64.eq  	$push18=, $pop16, $pop17
	br_if   	1, $pop18
	i32.const	$push107=, 24
	i32.add 	$push108=, $9, $pop107
	i32.call	$drop=, _ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv@FUNCTION, $pop108
	i32.load	$push121=, 28($9)
	tee_local	$push120=, $0=, $pop121
	br_if   	0, $pop120
	br      	2
.LBB21_5:
	end_loop
	end_block
	block   	
	i64.load	$push19=, 32($0)
	i64.load	$push20=, 96($9)
	i64.ne  	$push21=, $pop19, $pop20
	br_if   	0, $pop21
	i32.load8_u	$push22=, 40($0)
	i32.const	$push23=, 2
	i32.ne  	$push24=, $pop22, $pop23
	br_if   	0, $pop24
	i32.store	112($9), $5
	i32.const	$push39=, 1
	i32.const	$push38=, .L.str.19
	call    	eosio_assert@FUNCTION, $pop39, $pop38
	i32.load	$push40=, 32($9)
	i32.const	$push105=, 112
	i32.add 	$push106=, $9, $pop105
	call    	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_2EEvRKS3_yOT_@FUNCTION, $pop40, $0, $1, $pop106
	i32.load	$push123=, 64($9)
	tee_local	$push122=, $6=, $pop123
	br_if   	3, $pop122
	br      	4
.LBB21_8:
	end_block
	i64.load	$push25=, 32($0)
	i64.load	$push26=, 96($9)
	i64.eq  	$push27=, $pop25, $pop26
	br_if   	1, $pop27
	i64.load	$push28=, 16($0)
	i64.load	$push29=, 80($9)
	i64.xor 	$push30=, $pop28, $pop29
	i32.const	$push31=, 24
	i32.add 	$push32=, $0, $pop31
	i64.load	$push33=, 0($pop32)
	i64.load	$push34=, 88($9)
	i64.xor 	$push35=, $pop33, $pop34
	i64.or  	$push36=, $pop30, $pop35
	i64.eqz 	$push37=, $pop36
	br_if   	1, $pop37
.LBB21_10:
	end_block
	i32.store	16($9), $5
	i32.const	$push85=, 96
	i32.add 	$push86=, $9, $pop85
	i32.store	12($9), $pop86
	i32.const	$push87=, 80
	i32.add 	$push88=, $9, $pop87
	i32.store	8($9), $pop88
	i64.store	136($9), $1
	i64.load	$push41=, 40($9)
	i64.call	$push42=, current_receiver@FUNCTION
	i64.eq  	$push43=, $pop41, $pop42
	i32.const	$push44=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop43, $pop44
	i32.const	$push89=, 8
	i32.add 	$push90=, $9, $pop89
	i32.store	116($9), $pop90
	i32.const	$push91=, 40
	i32.add 	$push92=, $9, $pop91
	i32.store	112($9), $pop92
	i32.const	$push93=, 136
	i32.add 	$push94=, $9, $pop93
	i32.store	120($9), $pop94
	i32.const	$push45=, 80
	i32.call	$push135=, _Znwj@FUNCTION, $pop45
	tee_local	$push134=, $0=, $pop135
	i32.const	$push133=, 0
	i32.store	52($pop134), $pop133
	i64.const	$push132=, 0
	i64.store	44($0):p2align=2, $pop132
	i32.const	$push95=, 40
	i32.add 	$push96=, $9, $pop95
	i32.store	56($0), $pop96
	i32.const	$push97=, 112
	i32.add 	$push98=, $9, $pop97
	call    	_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_3EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_@FUNCTION, $pop98, $0
	i32.store	128($9), $0
	i64.load	$push131=, 0($0)
	tee_local	$push130=, $1=, $pop131
	i64.store	112($9), $pop130
	i32.load	$push129=, 60($0)
	tee_local	$push128=, $8=, $pop129
	i32.store	108($9), $pop128
	block   	
	block   	
	i32.const	$push47=, 68
	i32.add 	$push127=, $9, $pop47
	tee_local	$push126=, $7=, $pop127
	i32.load	$push125=, 0($pop126)
	tee_local	$push124=, $5=, $pop125
	i32.load	$push46=, 0($6)
	i32.ge_u	$push48=, $pop124, $pop46
	br_if   	0, $pop48
	i64.store	8($5), $1
	i32.store	16($5), $8
	i32.const	$push51=, 0
	i32.store	128($9), $pop51
	i32.store	0($5), $0
	i32.const	$push52=, 24
	i32.add 	$push53=, $5, $pop52
	i32.store	0($7), $pop53
	br      	1
.LBB21_12:
	end_block
	i32.const	$push49=, 64
	i32.add 	$push50=, $9, $pop49
	i32.const	$push99=, 128
	i32.add 	$push100=, $9, $pop99
	i32.const	$push101=, 112
	i32.add 	$push102=, $9, $pop101
	i32.const	$push103=, 108
	i32.add 	$push104=, $9, $pop103
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_@FUNCTION, $pop50, $pop100, $pop102, $pop104
.LBB21_13:
	end_block
	i32.load	$0=, 128($9)
	i32.const	$push54=, 0
	i32.store	128($9), $pop54
	i32.eqz 	$push149=, $0
	br_if   	0, $pop149
	block   	
	i32.load8_u	$push55=, 44($0)
	i32.const	$push56=, 1
	i32.and 	$push57=, $pop55, $pop56
	i32.eqz 	$push150=, $pop57
	br_if   	0, $pop150
	i32.const	$push58=, 52
	i32.add 	$push59=, $0, $pop58
	i32.load	$push60=, 0($pop59)
	call    	_ZdlPv@FUNCTION, $pop60
.LBB21_16:
	end_block
	call    	_ZdlPv@FUNCTION, $0
.LBB21_17:
	end_block
	i32.load	$push137=, 64($9)
	tee_local	$push136=, $6=, $pop137
	i32.eqz 	$push151=, $pop136
	br_if   	1, $pop151
.LBB21_18:
	end_block
	block   	
	block   	
	i32.const	$push61=, 68
	i32.add 	$push141=, $9, $pop61
	tee_local	$push140=, $8=, $pop141
	i32.load	$push139=, 0($pop140)
	tee_local	$push138=, $0=, $pop139
	i32.eq  	$push62=, $pop138, $6
	br_if   	0, $pop62
.LBB21_20:
	loop    	
	i32.const	$push145=, -24
	i32.add 	$push144=, $0, $pop145
	tee_local	$push143=, $0=, $pop144
	i32.load	$5=, 0($pop143)
	i32.const	$push142=, 0
	i32.store	0($0), $pop142
	block   	
	i32.eqz 	$push152=, $5
	br_if   	0, $pop152
	block   	
	i32.load8_u	$push63=, 44($5)
	i32.const	$push146=, 1
	i32.and 	$push64=, $pop63, $pop146
	i32.eqz 	$push153=, $pop64
	br_if   	0, $pop153
	i32.const	$push147=, 52
	i32.add 	$push65=, $5, $pop147
	i32.load	$push66=, 0($pop65)
	call    	_ZdlPv@FUNCTION, $pop66
.LBB21_23:
	end_block
	call    	_ZdlPv@FUNCTION, $5
.LBB21_24:
	end_block
	i32.ne  	$push67=, $6, $0
	br_if   	0, $pop67
	end_loop
	i32.const	$push68=, 64
	i32.add 	$push69=, $9, $pop68
	i32.load	$0=, 0($pop69)
	br      	1
.LBB21_26:
	end_block
	copy_local	$0=, $6
.LBB21_27:
	end_block
	i32.store	0($8), $6
	call    	_ZdlPv@FUNCTION, $0
.LBB21_28:
	end_block
	i32.const	$push76=, 0
	i32.const	$push74=, 144
	i32.add 	$push75=, $9, $pop74
	i32.store	__stack_pointer($pop76), $pop75
	.endfunc
.Lfunc_end21:
	.size	_ZN16secrataContainer9container6inviteEyyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE, .Lfunc_end21-_ZN16secrataContainer9container6inviteEyyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE

	.hidden	_ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo
	.globl	_ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo
	.type	_ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo,@function
_ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo:
	.param  	i32, i64, i64, i64
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 80
	i32.sub 	$push47=, $pop25, $pop26
	tee_local	$push46=, $8=, $pop47
	i32.store	__stack_pointer($pop27), $pop46
	i64.store	72($8), $3
	i64.store	64($8), $2
	i32.const	$7=, 0
	i32.const	$push0=, 56
	i32.add 	$push1=, $8, $pop0
	i32.const	$push45=, 0
	i32.store	0($pop1), $pop45
	i64.const	$push2=, -1
	i64.store	40($8), $pop2
	i64.const	$push44=, 0
	i64.store	48($8), $pop44
	i64.load	$push43=, 0($0)
	tee_local	$push42=, $2=, $pop43
	i64.store	24($8), $pop42
	i64.store	32($8), $2
	i32.const	$push41=, 0
	i32.store16	60($8), $pop41
	i32.const	$push31=, 24
	i32.add 	$push32=, $8, $pop31
	i32.store	16($8), $pop32
	i32.const	$push33=, 8
	i32.add 	$push34=, $8, $pop33
	i32.const	$push35=, 16
	i32.add 	$push36=, $8, $pop35
	i32.const	$push37=, 64
	i32.add 	$push38=, $8, $pop37
	call    	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo@FUNCTION, $pop34, $pop36, $pop38
.LBB22_1:
	block   	
	loop    	
	i32.load	$push49=, 12($8)
	tee_local	$push48=, $0=, $pop49
	i32.eqz 	$push66=, $pop48
	br_if   	1, $pop66
	i64.load	$push3=, 16($0)
	i64.load	$push4=, 64($8)
	i64.xor 	$push5=, $pop3, $pop4
	i32.const	$push51=, 24
	i32.add 	$push6=, $0, $pop51
	i64.load	$push7=, 0($pop6)
	i64.load	$push8=, 72($8)
	i64.xor 	$push9=, $pop7, $pop8
	i64.or  	$push10=, $pop5, $pop9
	i64.const	$push50=, 0
	i64.ne  	$push11=, $pop10, $pop50
	br_if   	1, $pop11
	i64.load	$push53=, 32($0)
	tee_local	$push52=, $2=, $pop53
	i64.eq  	$7=, $pop52, $1
	i32.const	$push39=, 8
	i32.add 	$push40=, $8, $pop39
	i32.call	$drop=, _ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv@FUNCTION, $pop40
	i64.ne  	$push12=, $2, $1
	br_if   	0, $pop12
.LBB22_4:
	end_loop
	end_block
	block   	
	i32.load	$push55=, 48($8)
	tee_local	$push54=, $4=, $pop55
	i32.eqz 	$push67=, $pop54
	br_if   	0, $pop67
	block   	
	block   	
	i32.const	$push13=, 52
	i32.add 	$push59=, $8, $pop13
	tee_local	$push58=, $6=, $pop59
	i32.load	$push57=, 0($pop58)
	tee_local	$push56=, $0=, $pop57
	i32.eq  	$push14=, $pop56, $4
	br_if   	0, $pop14
.LBB22_7:
	loop    	
	i32.const	$push63=, -24
	i32.add 	$push62=, $0, $pop63
	tee_local	$push61=, $0=, $pop62
	i32.load	$5=, 0($pop61)
	i32.const	$push60=, 0
	i32.store	0($0), $pop60
	block   	
	i32.eqz 	$push68=, $5
	br_if   	0, $pop68
	block   	
	i32.load8_u	$push15=, 44($5)
	i32.const	$push64=, 1
	i32.and 	$push16=, $pop15, $pop64
	i32.eqz 	$push69=, $pop16
	br_if   	0, $pop69
	i32.const	$push65=, 52
	i32.add 	$push17=, $5, $pop65
	i32.load	$push18=, 0($pop17)
	call    	_ZdlPv@FUNCTION, $pop18
.LBB22_10:
	end_block
	call    	_ZdlPv@FUNCTION, $5
.LBB22_11:
	end_block
	i32.ne  	$push19=, $4, $0
	br_if   	0, $pop19
	end_loop
	i32.const	$push20=, 48
	i32.add 	$push21=, $8, $pop20
	i32.load	$0=, 0($pop21)
	br      	1
.LBB22_13:
	end_block
	copy_local	$0=, $4
.LBB22_14:
	end_block
	i32.store	0($6), $4
	call    	_ZdlPv@FUNCTION, $0
.LBB22_15:
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 80
	i32.add 	$push29=, $8, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	i32.const	$push22=, 255
	i32.and 	$push23=, $7, $pop22
	.endfunc
.Lfunc_end22:
	.size	_ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo, .Lfunc_end22-_ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo

	.section	.text._ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo,"axG",@progbits,_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo,comdat
	.hidden	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo
	.weak	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo
	.type	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo,@function
_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo:
	.param  	i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i32, i32
	i32.const	$push34=, 0
	i32.const	$push31=, 0
	i32.load	$push32=, __stack_pointer($pop31)
	i32.const	$push33=, 32
	i32.sub 	$push46=, $pop32, $pop33
	tee_local	$push45=, $10=, $pop46
	i32.store	__stack_pointer($pop34), $pop45
	i64.const	$push0=, 0
	i64.store	24($10), $pop0
	i32.const	$push1=, 8
	i32.add 	$push2=, $2, $pop1
	i64.load	$push3=, 0($pop2)
	i64.store	8($10), $pop3
	i64.load	$push4=, 0($2)
	i64.store	0($10), $pop4
	i32.const	$2=, 0
	block   	
	i32.load	$push44=, 0($1)
	tee_local	$push43=, $8=, $pop44
	i64.load	$push6=, 0($pop43)
	i64.load	$push5=, 8($8)
	i64.const	$push7=, -7880044396883394560
	i32.const	$push38=, 24
	i32.add 	$push39=, $10, $pop38
	i32.call	$push42=, db_idx128_lowerbound@FUNCTION, $pop6, $pop5, $pop7, $10, $pop39
	tee_local	$push41=, $3=, $pop42
	i32.const	$push40=, 0
	i32.lt_s	$push8=, $pop41, $pop40
	br_if   	0, $pop8
	i64.load	$5=, 24($10)
	block   	
	i32.load	$push52=, 0($1)
	tee_local	$push51=, $4=, $pop52
	i32.const	$push9=, 28
	i32.add 	$push10=, $pop51, $pop9
	i32.load	$push50=, 0($pop10)
	tee_local	$push49=, $9=, $pop50
	i32.load	$push48=, 24($4)
	tee_local	$push47=, $6=, $pop48
	i32.eq  	$push11=, $pop49, $pop47
	br_if   	0, $pop11
	i32.const	$push53=, -24
	i32.add 	$2=, $9, $pop53
	i32.const	$push12=, 0
	i32.sub 	$7=, $pop12, $6
.LBB23_3:
	loop    	
	i32.load	$push13=, 0($2)
	i64.load	$push14=, 0($pop13)
	i64.eq  	$push15=, $pop14, $5
	br_if   	1, $pop15
	copy_local	$9=, $2
	i32.const	$push57=, -24
	i32.add 	$push56=, $2, $pop57
	tee_local	$push55=, $8=, $pop56
	copy_local	$2=, $pop55
	i32.add 	$push16=, $8, $7
	i32.const	$push54=, -24
	i32.ne  	$push17=, $pop16, $pop54
	br_if   	0, $pop17
.LBB23_5:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push18=, $9, $6
	br_if   	0, $pop18
	i32.const	$push19=, -24
	i32.add 	$push20=, $9, $pop19
	i32.load	$push59=, 0($pop20)
	tee_local	$push58=, $2=, $pop59
	i32.load	$push21=, 56($pop58)
	i32.eq  	$push22=, $pop21, $4
	i32.const	$push23=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	br      	1
.LBB23_7:
	end_block
	i64.load	$push25=, 0($4)
	i64.load	$push24=, 8($4)
	i64.const	$push26=, -7880044396883394560
	i32.call	$push27=, db_find_i64@FUNCTION, $pop25, $pop24, $pop26, $5
	i32.call	$push61=, _ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $4, $pop27
	tee_local	$push60=, $2=, $pop61
	i32.load	$push28=, 56($pop60)
	i32.eq  	$push29=, $pop28, $4
	i32.const	$push30=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop29, $pop30
.LBB23_8:
	end_block
	i32.store	64($2), $3
.LBB23_9:
	end_block
	i32.store	4($0), $2
	i32.store	0($0), $1
	i32.const	$push37=, 0
	i32.const	$push35=, 32
	i32.add 	$push36=, $10, $pop35
	i32.store	__stack_pointer($pop37), $pop36
	.endfunc
.Lfunc_end23:
	.size	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo, .Lfunc_end23-_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo

	.section	.text._ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv,"axG",@progbits,_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv,comdat
	.hidden	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv
	.weak	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv
	.type	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv,@function
_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i64, i32, i32, i32, i32, i32, i32
	i32.const	$push43=, 0
	i32.const	$push40=, 0
	i32.load	$push41=, __stack_pointer($pop40)
	i32.const	$push42=, 16
	i32.sub 	$push53=, $pop41, $pop42
	tee_local	$push52=, $9=, $pop53
	i32.store	__stack_pointer($pop43), $pop52
	i32.const	$7=, 0
	i32.load	$push0=, 4($0)
	i32.const	$push51=, 0
	i32.ne  	$push1=, $pop0, $pop51
	i32.const	$push2=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	block   	
	i32.load	$push50=, 4($0)
	tee_local	$push49=, $8=, $pop50
	i32.load	$push48=, 64($pop49)
	tee_local	$push47=, $6=, $pop48
	i32.const	$push3=, -1
	i32.ne  	$push4=, $pop47, $pop3
	br_if   	0, $pop4
	i32.load	$push6=, 0($0)
	i32.load	$push55=, 0($pop6)
	tee_local	$push54=, $6=, $pop55
	i64.load	$push8=, 0($pop54)
	i64.load	$push7=, 8($6)
	i64.const	$push9=, -7880044396883394560
	i64.load	$push5=, 0($8)
	i32.call	$6=, db_idx128_find_primary@FUNCTION, $pop8, $pop7, $pop9, $9, $pop5
	i32.const	$push10=, 4
	i32.add 	$push11=, $0, $pop10
	i32.load	$push12=, 0($pop11)
	i32.store	64($pop12), $6
.LBB24_2:
	end_block
	i64.const	$push13=, 0
	i64.store	0($9), $pop13
	block   	
	i32.call	$push58=, db_idx128_next@FUNCTION, $6, $9
	tee_local	$push57=, $1=, $pop58
	i32.const	$push56=, 0
	i32.lt_s	$push14=, $pop57, $pop56
	br_if   	0, $pop14
	i64.load	$3=, 0($9)
	block   	
	i32.load	$push15=, 0($0)
	i32.load	$push64=, 0($pop15)
	tee_local	$push63=, $2=, $pop64
	i32.const	$push16=, 28
	i32.add 	$push17=, $pop63, $pop16
	i32.load	$push62=, 0($pop17)
	tee_local	$push61=, $8=, $pop62
	i32.load	$push60=, 24($2)
	tee_local	$push59=, $4=, $pop60
	i32.eq  	$push18=, $pop61, $pop59
	br_if   	0, $pop18
	i32.const	$push65=, -24
	i32.add 	$7=, $8, $pop65
	i32.const	$push19=, 0
	i32.sub 	$5=, $pop19, $4
.LBB24_5:
	loop    	
	i32.load	$push20=, 0($7)
	i64.load	$push21=, 0($pop20)
	i64.eq  	$push22=, $pop21, $3
	br_if   	1, $pop22
	copy_local	$8=, $7
	i32.const	$push69=, -24
	i32.add 	$push68=, $7, $pop69
	tee_local	$push67=, $6=, $pop68
	copy_local	$7=, $pop67
	i32.add 	$push23=, $6, $5
	i32.const	$push66=, -24
	i32.ne  	$push24=, $pop23, $pop66
	br_if   	0, $pop24
.LBB24_7:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push25=, $8, $4
	br_if   	0, $pop25
	i32.const	$push26=, -24
	i32.add 	$push27=, $8, $pop26
	i32.load	$push71=, 0($pop27)
	tee_local	$push70=, $7=, $pop71
	i32.load	$push28=, 56($pop70)
	i32.eq  	$push29=, $pop28, $2
	i32.const	$push30=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop29, $pop30
	br      	1
.LBB24_9:
	end_block
	i32.const	$7=, 0
	i64.load	$push32=, 0($2)
	i64.load	$push31=, 8($2)
	i64.const	$push33=, -7880044396883394560
	i32.call	$push74=, db_find_i64@FUNCTION, $pop32, $pop31, $pop33, $3
	tee_local	$push73=, $6=, $pop74
	i32.const	$push72=, 0
	i32.lt_s	$push34=, $pop73, $pop72
	br_if   	0, $pop34
	i32.call	$push76=, _ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $6
	tee_local	$push75=, $7=, $pop76
	i32.load	$push35=, 56($pop75)
	i32.eq  	$push36=, $pop35, $2
	i32.const	$push37=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop36, $pop37
.LBB24_11:
	end_block
	i32.store	64($7), $1
.LBB24_12:
	end_block
	i32.const	$push38=, 4
	i32.add 	$push39=, $0, $pop38
	i32.store	0($pop39), $7
	i32.const	$push46=, 0
	i32.const	$push44=, 16
	i32.add 	$push45=, $9, $pop44
	i32.store	__stack_pointer($pop46), $pop45
	copy_local	$push77=, $0
	.endfunc
.Lfunc_end24:
	.size	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv, .Lfunc_end24-_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv

	.text
	.type	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_2EEvRKS3_yOT_,@function
_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_2EEvRKS3_yOT_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32, i64, i32, i32
	i32.const	$push81=, 0
	i32.const	$push78=, 0
	i32.load	$push79=, __stack_pointer($pop78)
	i32.const	$push80=, 80
	i32.sub 	$push112=, $pop79, $pop80
	tee_local	$push111=, $7=, $pop112
	i32.store	__stack_pointer($pop81), $pop111
	i32.load	$push0=, 56($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i32.const	$push7=, 0
	i32.store8	40($1), $pop7
	copy_local	$push110=, $7
	tee_local	$push109=, $8=, $pop110
	i32.const	$push8=, 24
	i32.add 	$push9=, $1, $pop8
	i64.load	$push10=, 0($pop9)
	i64.store	24($pop109), $pop10
	i32.const	$push11=, 16
	i32.add 	$push12=, $1, $pop11
	i64.load	$push13=, 0($pop12)
	i64.store	16($8), $pop13
	i32.const	$push14=, 32
	i32.add 	$push15=, $1, $pop14
	i64.load	$push16=, 0($pop15)
	i64.store	32($8), $pop16
	i64.load	$4=, 0($1)
	i32.const	$push17=, 44
	i32.add 	$push18=, $1, $pop17
	i32.load	$push19=, 0($3)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop18, $pop19
	i64.load	$push20=, 0($1)
	i64.eq  	$push21=, $4, $pop20
	i32.const	$push22=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push25=, 48
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 0($pop26)
	i32.load8_u	$push108=, 44($1)
	tee_local	$push107=, $3=, $pop108
	i32.const	$push106=, 1
	i32.shr_u	$push24=, $pop107, $pop106
	i32.const	$push105=, 1
	i32.and 	$push23=, $3, $pop105
	i32.select	$push104=, $pop27, $pop24, $pop23
	tee_local	$push103=, $5=, $pop104
	i32.const	$push28=, 33
	i32.add 	$3=, $pop103, $pop28
	i64.extend_u/i32	$6=, $5
	i32.const	$push85=, 16
	i32.add 	$push86=, $8, $pop85
	i32.const	$push102=, 16
	i32.add 	$5=, $pop86, $pop102
.LBB25_1:
	loop    	
	i32.const	$push117=, 1
	i32.add 	$3=, $3, $pop117
	i64.const	$push116=, 7
	i64.shr_u	$push115=, $6, $pop116
	tee_local	$push114=, $6=, $pop115
	i64.const	$push113=, 0
	i64.ne  	$push29=, $pop114, $pop113
	br_if   	0, $pop29
	end_loop
	block   	
	block   	
	i32.const	$push30=, 513
	i32.lt_u	$push31=, $3, $pop30
	br_if   	0, $pop31
	i32.call	$7=, malloc@FUNCTION, $3
	br      	1
.LBB25_4:
	end_block
	i32.const	$push77=, 0
	i32.const	$push32=, 15
	i32.add 	$push33=, $3, $pop32
	i32.const	$push34=, -16
	i32.and 	$push35=, $pop33, $pop34
	i32.sub 	$push119=, $7, $pop35
	tee_local	$push118=, $7=, $pop119
	copy_local	$push101=, $pop118
	i32.store	__stack_pointer($pop77), $pop101
.LBB25_5:
	end_block
	i32.store	4($8), $7
	i32.store	0($8), $7
	i32.add 	$push36=, $7, $3
	i32.store	8($8), $pop36
	i32.call	$drop=, _ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE@FUNCTION, $8, $1
	i32.const	$push37=, 60
	i32.add 	$push38=, $1, $pop37
	i32.load	$push39=, 0($pop38)
	call    	db_update_i64@FUNCTION, $pop39, $2, $7, $3
	block   	
	i32.const	$push40=, 513
	i32.lt_u	$push41=, $3, $pop40
	br_if   	0, $pop41
	call    	free@FUNCTION, $7
.LBB25_7:
	end_block
	block   	
	i64.load	$push42=, 16($0)
	i64.lt_u	$push43=, $4, $pop42
	br_if   	0, $pop43
	i32.const	$push50=, 16
	i32.add 	$push51=, $0, $pop50
	i64.const	$push48=, -2
	i64.const	$push46=, 1
	i64.add 	$push47=, $4, $pop46
	i64.const	$push44=, -3
	i64.gt_u	$push45=, $4, $pop44
	i64.select	$push49=, $pop48, $pop47, $pop45
	i64.store	0($pop51), $pop49
.LBB25_9:
	end_block
	i32.const	$push52=, 24
	i32.add 	$push53=, $1, $pop52
	i64.load	$push54=, 0($pop53)
	i64.store	72($8), $pop54
	i32.const	$push55=, 16
	i32.add 	$push56=, $1, $pop55
	i64.load	$push57=, 0($pop56)
	i64.store	64($8), $pop57
	block   	
	i32.const	$push87=, 16
	i32.add 	$push88=, $8, $pop87
	i32.const	$push89=, 64
	i32.add 	$push90=, $8, $pop89
	i32.const	$push120=, 16
	i32.call	$push58=, memcmp@FUNCTION, $pop88, $pop90, $pop120
	i32.eqz 	$push131=, $pop58
	br_if   	0, $pop131
	block   	
	i32.load	$push122=, 64($1)
	tee_local	$push121=, $3=, $pop122
	i32.const	$push59=, -1
	i32.gt_s	$push60=, $pop121, $pop59
	br_if   	0, $pop60
	i32.const	$push64=, 64
	i32.add 	$push65=, $1, $pop64
	i64.load	$push62=, 0($0)
	i64.load	$push61=, 8($0)
	i64.const	$push63=, -7880044396883394560
	i32.const	$push97=, 48
	i32.add 	$push98=, $8, $pop97
	i32.call	$push124=, db_idx128_find_primary@FUNCTION, $pop62, $pop61, $pop63, $pop98, $4
	tee_local	$push123=, $3=, $pop124
	i32.store	0($pop65), $pop123
.LBB25_12:
	end_block
	i32.const	$push99=, 64
	i32.add 	$push100=, $8, $pop99
	call    	db_idx128_update@FUNCTION, $3, $2, $pop100
.LBB25_13:
	end_block
	i32.const	$push66=, 32
	i32.add 	$push67=, $1, $pop66
	i64.load	$push68=, 0($pop67)
	i64.store	64($8), $pop68
	block   	
	i32.const	$push91=, 64
	i32.add 	$push92=, $8, $pop91
	i32.const	$push69=, 8
	i32.call	$push70=, memcmp@FUNCTION, $5, $pop92, $pop69
	i32.eqz 	$push132=, $pop70
	br_if   	0, $pop132
	block   	
	i32.const	$push71=, 68
	i32.add 	$push128=, $1, $pop71
	tee_local	$push127=, $1=, $pop128
	i32.load	$push126=, 0($pop127)
	tee_local	$push125=, $3=, $pop126
	i32.const	$push72=, -1
	i32.gt_s	$push73=, $pop125, $pop72
	br_if   	0, $pop73
	i64.load	$push75=, 0($0)
	i64.load	$push74=, 8($0)
	i64.const	$push76=, -7880044396883394559
	i32.const	$push93=, 48
	i32.add 	$push94=, $8, $pop93
	i32.call	$push130=, db_idx64_find_primary@FUNCTION, $pop75, $pop74, $pop76, $pop94, $4
	tee_local	$push129=, $3=, $pop130
	i32.store	0($1), $pop129
.LBB25_16:
	end_block
	i32.const	$push95=, 64
	i32.add 	$push96=, $8, $pop95
	call    	db_idx64_update@FUNCTION, $3, $2, $pop96
.LBB25_17:
	end_block
	i32.const	$push84=, 0
	i32.const	$push82=, 80
	i32.add 	$push83=, $8, $pop82
	i32.store	__stack_pointer($pop84), $pop83
	.endfunc
.Lfunc_end25:
	.size	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_2EEvRKS3_yOT_, .Lfunc_end25-_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_2EEvRKS3_yOT_

	.type	_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_3EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_,@function
_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_3EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_:
	.param  	i32, i32
	.local  	i32, i32, i64, i64, i32, i64, i32, i32
	i32.const	$push65=, 0
	i32.load	$push66=, __stack_pointer($pop65)
	i32.const	$push67=, 32
	i32.sub 	$push86=, $pop66, $pop67
	tee_local	$push85=, $8=, $pop86
	copy_local	$9=, $pop85
	i32.const	$push68=, 0
	i32.store	__stack_pointer($pop68), $8
	i32.load	$2=, 0($0)
	i32.load	$6=, 4($0)
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i64.const	$push3=, 4294967295
	i64.and 	$push4=, $pop2, $pop3
	i64.store	0($1), $pop4
	i32.load	$push84=, 0($6)
	tee_local	$push83=, $3=, $pop84
	i64.load	$7=, 0($pop83)
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.const	$push7=, 8
	i32.add 	$push8=, $3, $pop7
	i64.load	$push9=, 0($pop8)
	i64.store	0($pop6), $pop9
	i64.store	16($1), $7
	i32.load	$push10=, 4($6)
	i64.load	$push11=, 0($pop10)
	i64.store	32($1), $pop11
	i32.const	$push12=, 0
	i32.store8	40($1), $pop12
	i32.const	$push13=, 44
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 8($6)
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_@FUNCTION, $pop14, $pop15
	i32.const	$push18=, 48
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.load8_u	$push82=, 44($1)
	tee_local	$push81=, $6=, $pop82
	i32.const	$push80=, 1
	i32.shr_u	$push17=, $pop81, $pop80
	i32.const	$push79=, 1
	i32.and 	$push16=, $6, $pop79
	i32.select	$push78=, $pop20, $pop17, $pop16
	tee_local	$push77=, $3=, $pop78
	i32.const	$push21=, 33
	i32.add 	$6=, $pop77, $pop21
	i64.extend_u/i32	$7=, $3
.LBB26_1:
	loop    	
	i32.const	$push91=, 1
	i32.add 	$6=, $6, $pop91
	i64.const	$push90=, 7
	i64.shr_u	$push89=, $7, $pop90
	tee_local	$push88=, $7=, $pop89
	i64.const	$push87=, 0
	i64.ne  	$push22=, $pop88, $pop87
	br_if   	0, $pop22
	end_loop
	block   	
	block   	
	i32.const	$push23=, 513
	i32.lt_u	$push24=, $6, $pop23
	br_if   	0, $pop24
	i32.call	$8=, malloc@FUNCTION, $6
	br      	1
.LBB26_4:
	end_block
	i32.const	$push64=, 0
	i32.const	$push25=, 15
	i32.add 	$push26=, $6, $pop25
	i32.const	$push27=, -16
	i32.and 	$push28=, $pop26, $pop27
	i32.sub 	$push93=, $8, $pop28
	tee_local	$push92=, $8=, $pop93
	copy_local	$push76=, $pop92
	i32.store	__stack_pointer($pop64), $pop76
.LBB26_5:
	end_block
	i32.store	4($9), $8
	i32.store	0($9), $8
	i32.add 	$push29=, $8, $6
	i32.store	8($9), $pop29
	i32.call	$drop=, _ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE@FUNCTION, $9, $1
	i64.load	$push30=, 8($2)
	i64.const	$push33=, -7880044396883394560
	i32.load	$push31=, 8($0)
	i64.load	$push32=, 0($pop31)
	i64.load	$push95=, 0($1)
	tee_local	$push94=, $7=, $pop95
	i32.call	$push34=, db_store_i64@FUNCTION, $pop30, $pop33, $pop32, $pop94, $8, $6
	i32.store	60($1), $pop34
	block   	
	i32.const	$push35=, 513
	i32.lt_u	$push36=, $6, $pop35
	br_if   	0, $pop36
	call    	free@FUNCTION, $8
.LBB26_7:
	end_block
	block   	
	i64.load	$push37=, 16($2)
	i64.lt_u	$push38=, $7, $pop37
	br_if   	0, $pop38
	i32.const	$push45=, 16
	i32.add 	$push46=, $2, $pop45
	i64.const	$push43=, -2
	i64.const	$push41=, 1
	i64.add 	$push42=, $7, $pop41
	i64.const	$push39=, -3
	i64.gt_u	$push40=, $7, $pop39
	i64.select	$push44=, $pop43, $pop42, $pop40
	i64.store	0($pop46), $pop44
.LBB26_9:
	end_block
	i32.const	$push47=, 8
	i32.add 	$push100=, $2, $pop47
	tee_local	$push99=, $6=, $pop100
	i64.load	$7=, 0($pop99)
	i32.const	$push98=, 8
	i32.add 	$push48=, $0, $pop98
	i32.load	$push97=, 0($pop48)
	tee_local	$push96=, $8=, $pop97
	i64.load	$4=, 0($pop96)
	i64.load	$5=, 0($1)
	i32.const	$push49=, 24
	i32.add 	$push50=, $1, $pop49
	i64.load	$push51=, 0($pop50)
	i64.store	24($9), $pop51
	i32.const	$push52=, 16
	i32.add 	$push53=, $1, $pop52
	i64.load	$push54=, 0($pop53)
	i64.store	16($9), $pop54
	i64.const	$push55=, -7880044396883394560
	i32.const	$push72=, 16
	i32.add 	$push73=, $9, $pop72
	i32.call	$push56=, db_idx128_store@FUNCTION, $7, $pop55, $4, $5, $pop73
	i32.store	64($1), $pop56
	i64.load	$7=, 0($8)
	i64.load	$4=, 0($6)
	i64.load	$5=, 0($1)
	i32.const	$push57=, 32
	i32.add 	$push58=, $1, $pop57
	i64.load	$push59=, 0($pop58)
	i64.store	16($9), $pop59
	i32.const	$push62=, 68
	i32.add 	$push63=, $1, $pop62
	i64.const	$push60=, -7880044396883394559
	i32.const	$push74=, 16
	i32.add 	$push75=, $9, $pop74
	i32.call	$push61=, db_idx64_store@FUNCTION, $4, $pop60, $7, $5, $pop75
	i32.store	0($pop63), $pop61
	i32.const	$push71=, 0
	i32.const	$push69=, 32
	i32.add 	$push70=, $9, $pop69
	i32.store	__stack_pointer($pop71), $pop70
	.endfunc
.Lfunc_end26:
	.size	_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_3EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_, .Lfunc_end26-_ZZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE7emplaceIZNS2_6inviteEyyoNSt3__112basic_stringIcNSE_11char_traitsIcEENSE_9allocatorIcEEEEE3$_3EENSC_14const_iteratorEyOT_ENKUlRSN_E_clINSC_4itemEEEDaSP_

	.section	.text._ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 48
	i32.sub 	$push68=, $pop48, $pop49
	tee_local	$push67=, $9=, $pop68
	copy_local	$8=, $pop67
	i32.const	$push50=, 0
	i32.store	__stack_pointer($pop50), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push66=, 0($pop3)
	tee_local	$push65=, $7=, $pop66
	i32.load	$push64=, 24($0)
	tee_local	$push63=, $2=, $pop64
	i32.eq  	$push4=, $pop65, $pop63
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push69=, -24
	i32.add 	$6=, $7, $pop69
.LBB27_2:
	loop    	
	i32.const	$push70=, 16
	i32.add 	$push6=, $6, $pop70
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $4=, $pop73
	copy_local	$6=, $pop72
	i32.add 	$push9=, $4, $3
	i32.const	$push71=, -24
	i32.ne  	$push10=, $pop9, $pop71
	br_if   	0, $pop10
.LBB27_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB27_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push77=, 0
	i32.call	$push76=, db_get_i64@FUNCTION, $1, $pop14, $pop77
	tee_local	$push75=, $6=, $pop76
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop75, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.15
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB27_8:
	end_block
	i32.const	$push46=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push79=, $9, $pop25
	tee_local	$push78=, $4=, $pop79
	copy_local	$push62=, $pop78
	i32.store	__stack_pointer($pop46), $pop62
.LBB27_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB27_11:
	end_block
	i32.const	$push29=, 80
	i32.call	$push91=, _Znwj@FUNCTION, $pop29
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 0
	i32.store	52($pop90), $pop89
	i64.const	$push30=, 0
	i64.store	44($6):p2align=2, $pop30
	i32.store	56($6), $0
	i32.const	$push54=, 32
	i32.add 	$push55=, $8, $pop54
	i32.call	$drop=, _ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE@FUNCTION, $pop55, $6
	i32.const	$push31=, -1
	i32.store	64($6), $pop31
	i32.store	60($6), $1
	i32.const	$push88=, -1
	i32.store	68($6), $pop88
	i32.store	24($8), $6
	i64.load	$push87=, 0($6)
	tee_local	$push86=, $5=, $pop87
	i64.store	16($8), $pop86
	i32.load	$push85=, 60($6)
	tee_local	$push84=, $7=, $pop85
	i32.store	12($8), $pop84
	block   	
	block   	
	i32.const	$push35=, 28
	i32.add 	$push83=, $0, $pop35
	tee_local	$push82=, $1=, $pop83
	i32.load	$push81=, 0($pop82)
	tee_local	$push80=, $4=, $pop81
	i32.const	$push32=, 32
	i32.add 	$push33=, $0, $pop32
	i32.load	$push34=, 0($pop33)
	i32.ge_u	$push36=, $pop80, $pop34
	br_if   	0, $pop36
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push92=, 0
	i32.store	24($8), $pop92
	i32.store	0($4), $6
	i32.const	$push37=, 24
	i32.add 	$push38=, $4, $pop37
	i32.store	0($1), $pop38
	br      	1
.LBB27_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push56=, 24
	i32.add 	$push57=, $8, $pop56
	i32.const	$push58=, 16
	i32.add 	$push59=, $8, $pop58
	i32.const	$push60=, 12
	i32.add 	$push61=, $8, $pop60
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS1_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS5_oXadL_ZNKS5_8get_guidEvEEEEEENS6_ILy4590722025357574144ENS9_IS5_yXadL_ZNKS5_8get_userEvEEEEEEEE8item_ptrENS_9allocatorISF_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSE_4itemENS_14default_deleteISL_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop57, $pop59, $pop61
.LBB27_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push39=, 0
	i32.store	24($8), $pop39
	i32.eqz 	$push93=, $4
	br_if   	0, $pop93
	block   	
	i32.load8_u	$push40=, 44($4)
	i32.const	$push41=, 1
	i32.and 	$push42=, $pop40, $pop41
	i32.eqz 	$push94=, $pop42
	br_if   	0, $pop94
	i32.const	$push43=, 52
	i32.add 	$push44=, $4, $pop43
	i32.load	$push45=, 0($pop44)
	call    	_ZdlPv@FUNCTION, $pop45
.LBB27_17:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB27_18:
	end_block
	i32.const	$push53=, 0
	i32.const	$push51=, 48
	i32.add 	$push52=, $8, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	copy_local	$push95=, $6
	.endfunc
.Lfunc_end27:
	.size	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl, .Lfunc_end27-_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE31load_object_by_primary_iteratorEl

	.section	.text._ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE,"axG",@progbits,_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE,comdat
	.hidden	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE
	.weak	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE
	.type	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE,@function
_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push50=, 8
	i32.add 	$push49=, $pop8, $pop50
	tee_local	$push48=, $2=, $pop49
	i32.store	4($0), $pop48
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push11=, 15
	i32.gt_u	$push12=, $pop10, $pop11
	i32.const	$push47=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop12, $pop47
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 4($0)
	i32.const	$push46=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop46
	i32.load	$push16=, 4($0)
	i32.const	$push45=, 16
	i32.add 	$push44=, $pop16, $pop45
	tee_local	$push43=, $2=, $pop44
	i32.store	4($0), $pop43
	i32.load	$push17=, 8($0)
	i32.sub 	$push18=, $pop17, $2
	i32.const	$push42=, 7
	i32.gt_u	$push19=, $pop18, $pop42
	i32.const	$push41=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop19, $pop41
	i32.const	$push20=, 32
	i32.add 	$push21=, $1, $pop20
	i32.load	$push22=, 4($0)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop22, $pop40
	i32.load	$push23=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop23, $pop39
	tee_local	$push37=, $2=, $pop38
	i32.store	4($0), $pop37
	i32.load	$push24=, 8($0)
	i32.ne  	$push25=, $pop24, $2
	i32.const	$push36=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop25, $pop36
	i32.const	$push26=, 40
	i32.add 	$push27=, $1, $pop26
	i32.load	$push28=, 4($0)
	i32.const	$push29=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop28, $pop29
	i32.load	$push30=, 4($0)
	i32.const	$push35=, 1
	i32.add 	$push31=, $pop30, $pop35
	i32.store	4($0), $pop31
	i32.const	$push32=, 44
	i32.add 	$push33=, $1, $pop32
	i32.call	$push34=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop33
	.endfunc
.Lfunc_end28:
	.size	_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE, .Lfunc_end28-_ZN16secrataContainerrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_9container10membershipE

	.text
	.hidden	_ZN16secrataContainer9container6acceptEyo
	.globl	_ZN16secrataContainer9container6acceptEyo
	.type	_ZN16secrataContainer9container6acceptEyo,@function
_ZN16secrataContainer9container6acceptEyo:
	.param  	i32, i64, i64, i64
	.local  	i64, i32, i32, i32, i32
	i32.const	$push52=, 0
	i32.const	$push49=, 0
	i32.load	$push50=, __stack_pointer($pop49)
	i32.const	$push51=, 96
	i32.sub 	$push76=, $pop50, $pop51
	tee_local	$push75=, $8=, $pop76
	i32.store	__stack_pointer($pop52), $pop75
	i64.store	72($8), $3
	i64.store	64($8), $2
	call    	require_auth@FUNCTION, $1
	i32.call	$push0=, _ZN16secrataContainer9container15workspaceExistsEo@FUNCTION, $0, $2, $3
	i32.const	$push1=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop0, $pop1
	i32.const	$push2=, 56
	i32.add 	$push3=, $8, $pop2
	i32.const	$push4=, 0
	i32.store	0($pop3), $pop4
	i64.const	$push5=, -1
	i64.store	40($8), $pop5
	i64.const	$push6=, 0
	i64.store	48($8), $pop6
	i64.load	$push74=, 0($0)
	tee_local	$push73=, $2=, $pop74
	i64.store	24($8), $pop73
	i64.store	32($8), $2
	i32.const	$push72=, 0
	i32.store16	60($8), $pop72
	i32.const	$push56=, 24
	i32.add 	$push57=, $8, $pop56
	i32.store	16($8), $pop57
	i32.const	$push58=, 8
	i32.add 	$push59=, $8, $pop58
	i32.const	$push60=, 16
	i32.add 	$push61=, $8, $pop60
	i32.const	$push62=, 64
	i32.add 	$push63=, $8, $pop62
	call    	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo@FUNCTION, $pop59, $pop61, $pop63
	block   	
	block   	
	i32.load	$push71=, 12($8)
	tee_local	$push70=, $0=, $pop71
	i32.eqz 	$push106=, $pop70
	br_if   	0, $pop106
	i64.const	$push7=, 32
	i64.shl 	$push8=, $1, $pop7
	i64.const	$push77=, 32
	i64.shr_s	$4=, $pop8, $pop77
.LBB29_2:
	loop    	
	i64.load	$push82=, 16($0)
	tee_local	$push81=, $2=, $pop82
	i64.load	$push9=, 64($8)
	i64.xor 	$push10=, $pop81, $pop9
	i32.const	$push80=, 24
	i32.add 	$push11=, $0, $pop80
	i64.load	$push79=, 0($pop11)
	tee_local	$push78=, $3=, $pop79
	i64.load	$push12=, 72($8)
	i64.xor 	$push13=, $pop78, $pop12
	i64.or  	$push14=, $pop10, $pop13
	i64.eqz 	$push15=, $pop14
	i32.eqz 	$push107=, $pop15
	br_if   	1, $pop107
	i32.const	$push83=, 16
	i32.add 	$6=, $0, $pop83
	i64.load	$push16=, 32($0)
	i64.eq  	$push17=, $pop16, $1
	br_if   	2, $pop17
	i64.load	$2=, 0($6)
	i32.const	$push90=, 8
	i32.add 	$push18=, $6, $pop90
	i64.load	$push19=, 0($pop18)
	i64.store	88($8), $pop19
	i64.store	80($8), $2
	i32.const	$push64=, 80
	i32.add 	$push65=, $8, $pop64
	call    	printui128@FUNCTION, $pop65
	i32.const	$push89=, .L.str.3
	call    	prints@FUNCTION, $pop89
	i64.load	$2=, 64($8)
	i64.load	$push20=, 72($8)
	i64.store	88($8), $pop20
	i64.store	80($8), $2
	i32.const	$push66=, 80
	i32.add 	$push67=, $8, $pop66
	call    	printui128@FUNCTION, $pop67
	i32.const	$push88=, .L.str.4
	call    	prints@FUNCTION, $pop88
	i32.load	$push21=, 12($8)
	i64.load	$push22=, 32($pop21)
	call    	printui@FUNCTION, $pop22
	i32.const	$push87=, .L.str.3
	call    	prints@FUNCTION, $pop87
	call    	printi@FUNCTION, $4
	i32.const	$push86=, .L.str.5
	call    	prints@FUNCTION, $pop86
	i32.const	$push68=, 8
	i32.add 	$push69=, $8, $pop68
	i32.call	$drop=, _ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv@FUNCTION, $pop69
	i32.load	$push85=, 12($8)
	tee_local	$push84=, $0=, $pop85
	br_if   	0, $pop84
.LBB29_5:
	end_loop
	end_block
	i32.const	$push23=, 16
	i32.add 	$6=, $0, $pop23
	i64.load	$3=, 72($8)
	i64.load	$2=, 64($8)
.LBB29_6:
	end_block
	i32.const	$5=, 0
	block   	
	i64.load	$push24=, 0($6)
	i64.xor 	$push25=, $pop24, $2
	i32.const	$push26=, 8
	i32.add 	$push27=, $6, $pop26
	i64.load	$push28=, 0($pop27)
	i64.xor 	$push29=, $pop28, $3
	i64.or  	$push30=, $pop25, $pop29
	i64.const	$push31=, 0
	i64.ne  	$push32=, $pop30, $pop31
	br_if   	0, $pop32
	i32.const	$5=, 0
	i64.load	$push33=, 32($0)
	i64.ne  	$push34=, $pop33, $1
	br_if   	0, $pop34
	i32.load8_u	$push35=, 40($0)
	i32.eqz 	$5=, $pop35
.LBB29_9:
	end_block
	i32.const	$push36=, .L.str.6
	call    	eosio_assert@FUNCTION, $5, $pop36
	i32.load	$push95=, 12($8)
	tee_local	$push94=, $0=, $pop95
	i32.const	$push93=, 0
	i32.ne  	$push37=, $pop94, $pop93
	i32.const	$push38=, .L.str.19
	call    	eosio_assert@FUNCTION, $pop37, $pop38
	i32.load	$push39=, 16($8)
	call    	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6acceptEyoE3$_4EEvRKS3_yOT_@FUNCTION, $pop39, $0, $1
	block   	
	i32.load	$push92=, 48($8)
	tee_local	$push91=, $5=, $pop92
	i32.eqz 	$push108=, $pop91
	br_if   	0, $pop108
	block   	
	block   	
	i32.const	$push40=, 52
	i32.add 	$push99=, $8, $pop40
	tee_local	$push98=, $7=, $pop99
	i32.load	$push97=, 0($pop98)
	tee_local	$push96=, $0=, $pop97
	i32.eq  	$push41=, $pop96, $5
	br_if   	0, $pop41
.LBB29_12:
	loop    	
	i32.const	$push103=, -24
	i32.add 	$push102=, $0, $pop103
	tee_local	$push101=, $0=, $pop102
	i32.load	$6=, 0($pop101)
	i32.const	$push100=, 0
	i32.store	0($0), $pop100
	block   	
	i32.eqz 	$push109=, $6
	br_if   	0, $pop109
	block   	
	i32.load8_u	$push42=, 44($6)
	i32.const	$push104=, 1
	i32.and 	$push43=, $pop42, $pop104
	i32.eqz 	$push110=, $pop43
	br_if   	0, $pop110
	i32.const	$push105=, 52
	i32.add 	$push44=, $6, $pop105
	i32.load	$push45=, 0($pop44)
	call    	_ZdlPv@FUNCTION, $pop45
.LBB29_15:
	end_block
	call    	_ZdlPv@FUNCTION, $6
.LBB29_16:
	end_block
	i32.ne  	$push46=, $5, $0
	br_if   	0, $pop46
	end_loop
	i32.const	$push47=, 48
	i32.add 	$push48=, $8, $pop47
	i32.load	$0=, 0($pop48)
	br      	1
.LBB29_18:
	end_block
	copy_local	$0=, $5
.LBB29_19:
	end_block
	i32.store	0($7), $5
	call    	_ZdlPv@FUNCTION, $0
.LBB29_20:
	end_block
	i32.const	$push55=, 0
	i32.const	$push53=, 96
	i32.add 	$push54=, $8, $pop53
	i32.store	__stack_pointer($pop55), $pop54
	.endfunc
.Lfunc_end29:
	.size	_ZN16secrataContainer9container6acceptEyo, .Lfunc_end29-_ZN16secrataContainer9container6acceptEyo

	.type	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6acceptEyoE3$_4EEvRKS3_yOT_,@function
_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6acceptEyoE3$_4EEvRKS3_yOT_:
	.param  	i32, i32, i64
	.local  	i64, i32, i32, i64, i32, i32
	i32.const	$push75=, 0
	i32.const	$push72=, 0
	i32.load	$push73=, __stack_pointer($pop72)
	i32.const	$push74=, 80
	i32.sub 	$push108=, $pop73, $pop74
	tee_local	$push107=, $7=, $pop108
	i32.store	__stack_pointer($pop75), $pop107
	i32.load	$push0=, 56($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i32.const	$push106=, 1
	i32.store8	40($1), $pop106
	copy_local	$push105=, $7
	tee_local	$push104=, $8=, $pop105
	i32.const	$push7=, 24
	i32.add 	$push8=, $1, $pop7
	i64.load	$push9=, 0($pop8)
	i64.store	24($pop104), $pop9
	i32.const	$push10=, 16
	i32.add 	$push11=, $1, $pop10
	i64.load	$push12=, 0($pop11)
	i64.store	16($8), $pop12
	i32.const	$push13=, 32
	i32.add 	$push14=, $1, $pop13
	i64.load	$push15=, 0($pop14)
	i64.store	32($8), $pop15
	i64.load	$3=, 0($1)
	i32.const	$push103=, 1
	i32.const	$push16=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop103, $pop16
	i32.const	$push19=, 48
	i32.add 	$push20=, $1, $pop19
	i32.load	$push21=, 0($pop20)
	i32.load8_u	$push102=, 44($1)
	tee_local	$push101=, $5=, $pop102
	i32.const	$push100=, 1
	i32.shr_u	$push18=, $pop101, $pop100
	i32.const	$push99=, 1
	i32.and 	$push17=, $5, $pop99
	i32.select	$push98=, $pop21, $pop18, $pop17
	tee_local	$push97=, $4=, $pop98
	i32.const	$push22=, 33
	i32.add 	$5=, $pop97, $pop22
	i64.extend_u/i32	$6=, $4
	i32.const	$push79=, 16
	i32.add 	$push80=, $8, $pop79
	i32.const	$push96=, 16
	i32.add 	$4=, $pop80, $pop96
.LBB30_1:
	loop    	
	i32.const	$push113=, 1
	i32.add 	$5=, $5, $pop113
	i64.const	$push112=, 7
	i64.shr_u	$push111=, $6, $pop112
	tee_local	$push110=, $6=, $pop111
	i64.const	$push109=, 0
	i64.ne  	$push23=, $pop110, $pop109
	br_if   	0, $pop23
	end_loop
	block   	
	block   	
	i32.const	$push24=, 513
	i32.lt_u	$push25=, $5, $pop24
	br_if   	0, $pop25
	i32.call	$7=, malloc@FUNCTION, $5
	br      	1
.LBB30_4:
	end_block
	i32.const	$push71=, 0
	i32.const	$push26=, 15
	i32.add 	$push27=, $5, $pop26
	i32.const	$push28=, -16
	i32.and 	$push29=, $pop27, $pop28
	i32.sub 	$push115=, $7, $pop29
	tee_local	$push114=, $7=, $pop115
	copy_local	$push95=, $pop114
	i32.store	__stack_pointer($pop71), $pop95
.LBB30_5:
	end_block
	i32.store	4($8), $7
	i32.store	0($8), $7
	i32.add 	$push30=, $7, $5
	i32.store	8($8), $pop30
	i32.call	$drop=, _ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE@FUNCTION, $8, $1
	i32.const	$push31=, 60
	i32.add 	$push32=, $1, $pop31
	i32.load	$push33=, 0($pop32)
	call    	db_update_i64@FUNCTION, $pop33, $2, $7, $5
	block   	
	i32.const	$push34=, 513
	i32.lt_u	$push35=, $5, $pop34
	br_if   	0, $pop35
	call    	free@FUNCTION, $7
.LBB30_7:
	end_block
	block   	
	i64.load	$push36=, 16($0)
	i64.lt_u	$push37=, $3, $pop36
	br_if   	0, $pop37
	i32.const	$push44=, 16
	i32.add 	$push45=, $0, $pop44
	i64.const	$push42=, -2
	i64.const	$push40=, 1
	i64.add 	$push41=, $3, $pop40
	i64.const	$push38=, -3
	i64.gt_u	$push39=, $3, $pop38
	i64.select	$push43=, $pop42, $pop41, $pop39
	i64.store	0($pop45), $pop43
.LBB30_9:
	end_block
	i32.const	$push46=, 24
	i32.add 	$push47=, $1, $pop46
	i64.load	$push48=, 0($pop47)
	i64.store	72($8), $pop48
	i32.const	$push49=, 16
	i32.add 	$push50=, $1, $pop49
	i64.load	$push51=, 0($pop50)
	i64.store	64($8), $pop51
	block   	
	i32.const	$push81=, 16
	i32.add 	$push82=, $8, $pop81
	i32.const	$push83=, 64
	i32.add 	$push84=, $8, $pop83
	i32.const	$push116=, 16
	i32.call	$push52=, memcmp@FUNCTION, $pop82, $pop84, $pop116
	i32.eqz 	$push127=, $pop52
	br_if   	0, $pop127
	block   	
	i32.load	$push118=, 64($1)
	tee_local	$push117=, $5=, $pop118
	i32.const	$push53=, -1
	i32.gt_s	$push54=, $pop117, $pop53
	br_if   	0, $pop54
	i32.const	$push58=, 64
	i32.add 	$push59=, $1, $pop58
	i64.load	$push56=, 0($0)
	i64.load	$push55=, 8($0)
	i64.const	$push57=, -7880044396883394560
	i32.const	$push91=, 48
	i32.add 	$push92=, $8, $pop91
	i32.call	$push120=, db_idx128_find_primary@FUNCTION, $pop56, $pop55, $pop57, $pop92, $3
	tee_local	$push119=, $5=, $pop120
	i32.store	0($pop59), $pop119
.LBB30_12:
	end_block
	i32.const	$push93=, 64
	i32.add 	$push94=, $8, $pop93
	call    	db_idx128_update@FUNCTION, $5, $2, $pop94
.LBB30_13:
	end_block
	i32.const	$push60=, 32
	i32.add 	$push61=, $1, $pop60
	i64.load	$push62=, 0($pop61)
	i64.store	64($8), $pop62
	block   	
	i32.const	$push85=, 64
	i32.add 	$push86=, $8, $pop85
	i32.const	$push63=, 8
	i32.call	$push64=, memcmp@FUNCTION, $4, $pop86, $pop63
	i32.eqz 	$push128=, $pop64
	br_if   	0, $pop128
	block   	
	i32.const	$push65=, 68
	i32.add 	$push124=, $1, $pop65
	tee_local	$push123=, $1=, $pop124
	i32.load	$push122=, 0($pop123)
	tee_local	$push121=, $5=, $pop122
	i32.const	$push66=, -1
	i32.gt_s	$push67=, $pop121, $pop66
	br_if   	0, $pop67
	i64.load	$push69=, 0($0)
	i64.load	$push68=, 8($0)
	i64.const	$push70=, -7880044396883394559
	i32.const	$push87=, 48
	i32.add 	$push88=, $8, $pop87
	i32.call	$push126=, db_idx64_find_primary@FUNCTION, $pop69, $pop68, $pop70, $pop88, $3
	tee_local	$push125=, $5=, $pop126
	i32.store	0($1), $pop125
.LBB30_16:
	end_block
	i32.const	$push89=, 64
	i32.add 	$push90=, $8, $pop89
	call    	db_idx64_update@FUNCTION, $5, $2, $pop90
.LBB30_17:
	end_block
	i32.const	$push78=, 0
	i32.const	$push76=, 80
	i32.add 	$push77=, $8, $pop76
	i32.store	__stack_pointer($pop78), $pop77
	.endfunc
.Lfunc_end30:
	.size	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6acceptEyoE3$_4EEvRKS3_yOT_, .Lfunc_end30-_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6acceptEyoE3$_4EEvRKS3_yOT_

	.hidden	_ZN16secrataContainer9container7declineEyo
	.globl	_ZN16secrataContainer9container7declineEyo
	.type	_ZN16secrataContainer9container7declineEyo,@function
_ZN16secrataContainer9container7declineEyo:
	.param  	i32, i64, i64, i64
	.local  	i32, i32, i32, i32
	i32.const	$push48=, 0
	i32.const	$push45=, 0
	i32.load	$push46=, __stack_pointer($pop45)
	i32.const	$push47=, 80
	i32.sub 	$push70=, $pop46, $pop47
	tee_local	$push69=, $7=, $pop70
	i32.store	__stack_pointer($pop48), $pop69
	i64.store	72($7), $3
	i64.store	64($7), $2
	call    	require_auth@FUNCTION, $1
	i32.call	$push0=, _ZN16secrataContainer9container15workspaceExistsEo@FUNCTION, $0, $2, $3
	i32.const	$push1=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop0, $pop1
	i32.call	$push2=, _ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo@FUNCTION, $0, $1, $2, $3
	i32.const	$push3=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.const	$5=, 0
	i32.const	$push4=, 56
	i32.add 	$push5=, $7, $pop4
	i32.const	$push68=, 0
	i32.store	0($pop5), $pop68
	i64.const	$push6=, -1
	i64.store	40($7), $pop6
	i64.const	$push67=, 0
	i64.store	48($7), $pop67
	i64.load	$push66=, 0($0)
	tee_local	$push65=, $2=, $pop66
	i64.store	24($7), $pop65
	i64.store	32($7), $2
	i32.const	$push64=, 0
	i32.store16	60($7), $pop64
	i32.const	$push52=, 24
	i32.add 	$push53=, $7, $pop52
	i32.store	16($7), $pop53
	i32.const	$push54=, 8
	i32.add 	$push55=, $7, $pop54
	i32.const	$push56=, 16
	i32.add 	$push57=, $7, $pop56
	i32.const	$push58=, 64
	i32.add 	$push59=, $7, $pop58
	call    	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo@FUNCTION, $pop55, $pop57, $pop59
	block   	
	i32.load	$push63=, 12($7)
	tee_local	$push62=, $0=, $pop63
	i32.eqz 	$push90=, $pop62
	br_if   	0, $pop90
.LBB31_2:
	loop    	
	i64.load	$push7=, 16($0)
	i64.load	$push8=, 64($7)
	i64.xor 	$push9=, $pop7, $pop8
	i32.const	$push72=, 24
	i32.add 	$push10=, $0, $pop72
	i64.load	$push11=, 0($pop10)
	i64.load	$push12=, 72($7)
	i64.xor 	$push13=, $pop11, $pop12
	i64.or  	$push14=, $pop9, $pop13
	i64.const	$push71=, 0
	i64.ne  	$push15=, $pop14, $pop71
	br_if   	1, $pop15
	i64.load	$push16=, 32($0)
	i64.eq  	$push17=, $pop16, $1
	br_if   	1, $pop17
	i32.const	$push60=, 8
	i32.add 	$push61=, $7, $pop60
	i32.call	$drop=, _ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv@FUNCTION, $pop61
	i32.load	$push74=, 12($7)
	tee_local	$push73=, $0=, $pop74
	br_if   	0, $pop73
.LBB31_5:
	end_loop
	end_block
	block   	
	i64.load	$push18=, 16($0)
	i64.load	$push19=, 64($7)
	i64.xor 	$push20=, $pop18, $pop19
	i32.const	$push21=, 24
	i32.add 	$push22=, $0, $pop21
	i64.load	$push23=, 0($pop22)
	i64.load	$push24=, 72($7)
	i64.xor 	$push25=, $pop23, $pop24
	i64.or  	$push26=, $pop20, $pop25
	i64.const	$push75=, 0
	i64.ne  	$push27=, $pop26, $pop75
	br_if   	0, $pop27
	i64.load	$push28=, 32($0)
	i64.ne  	$push29=, $pop28, $1
	br_if   	0, $pop29
	i32.load8_u	$push30=, 40($0)
	i32.eqz 	$5=, $pop30
.LBB31_8:
	end_block
	i32.const	$push31=, .L.str.6
	call    	eosio_assert@FUNCTION, $5, $pop31
	i32.load	$push79=, 12($7)
	tee_local	$push78=, $0=, $pop79
	i32.const	$push32=, 0
	i32.ne  	$push33=, $pop78, $pop32
	i32.const	$push34=, .L.str.19
	call    	eosio_assert@FUNCTION, $pop33, $pop34
	i32.load	$push35=, 16($7)
	call    	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_7declineEyoE3$_5EEvRKS3_yOT_@FUNCTION, $pop35, $0, $1
	block   	
	i32.load	$push77=, 48($7)
	tee_local	$push76=, $4=, $pop77
	i32.eqz 	$push91=, $pop76
	br_if   	0, $pop91
	block   	
	block   	
	i32.const	$push36=, 52
	i32.add 	$push83=, $7, $pop36
	tee_local	$push82=, $6=, $pop83
	i32.load	$push81=, 0($pop82)
	tee_local	$push80=, $0=, $pop81
	i32.eq  	$push37=, $pop80, $4
	br_if   	0, $pop37
.LBB31_11:
	loop    	
	i32.const	$push87=, -24
	i32.add 	$push86=, $0, $pop87
	tee_local	$push85=, $0=, $pop86
	i32.load	$5=, 0($pop85)
	i32.const	$push84=, 0
	i32.store	0($0), $pop84
	block   	
	i32.eqz 	$push92=, $5
	br_if   	0, $pop92
	block   	
	i32.load8_u	$push38=, 44($5)
	i32.const	$push88=, 1
	i32.and 	$push39=, $pop38, $pop88
	i32.eqz 	$push93=, $pop39
	br_if   	0, $pop93
	i32.const	$push89=, 52
	i32.add 	$push40=, $5, $pop89
	i32.load	$push41=, 0($pop40)
	call    	_ZdlPv@FUNCTION, $pop41
.LBB31_14:
	end_block
	call    	_ZdlPv@FUNCTION, $5
.LBB31_15:
	end_block
	i32.ne  	$push42=, $4, $0
	br_if   	0, $pop42
	end_loop
	i32.const	$push43=, 48
	i32.add 	$push44=, $7, $pop43
	i32.load	$0=, 0($pop44)
	br      	1
.LBB31_17:
	end_block
	copy_local	$0=, $4
.LBB31_18:
	end_block
	i32.store	0($6), $4
	call    	_ZdlPv@FUNCTION, $0
.LBB31_19:
	end_block
	i32.const	$push51=, 0
	i32.const	$push49=, 80
	i32.add 	$push50=, $7, $pop49
	i32.store	__stack_pointer($pop51), $pop50
	.endfunc
.Lfunc_end31:
	.size	_ZN16secrataContainer9container7declineEyo, .Lfunc_end31-_ZN16secrataContainer9container7declineEyo

	.type	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_7declineEyoE3$_5EEvRKS3_yOT_,@function
_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_7declineEyoE3$_5EEvRKS3_yOT_:
	.param  	i32, i32, i64
	.local  	i64, i32, i32, i64, i32, i32
	i32.const	$push81=, 0
	i32.const	$push78=, 0
	i32.load	$push79=, __stack_pointer($pop78)
	i32.const	$push80=, 80
	i32.sub 	$push112=, $pop79, $pop80
	tee_local	$push111=, $7=, $pop112
	i32.store	__stack_pointer($pop81), $pop111
	i32.load	$push0=, 56($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i32.const	$push7=, 2
	i32.store8	40($1), $pop7
	copy_local	$push110=, $7
	tee_local	$push109=, $8=, $pop110
	i32.const	$push8=, 24
	i32.add 	$push9=, $1, $pop8
	i64.load	$push10=, 0($pop9)
	i64.store	24($pop109), $pop10
	i32.const	$push11=, 16
	i32.add 	$push12=, $1, $pop11
	i64.load	$push13=, 0($pop12)
	i64.store	16($8), $pop13
	i32.const	$push14=, 32
	i32.add 	$push15=, $1, $pop14
	i64.load	$push16=, 0($pop15)
	i64.store	32($8), $pop16
	i64.load	$3=, 0($1)
	i32.const	$push17=, 44
	i32.add 	$push18=, $1, $pop17
	i32.const	$push19=, .L.str.23
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc@FUNCTION, $pop18, $pop19
	i64.load	$push20=, 0($1)
	i64.eq  	$push21=, $3, $pop20
	i32.const	$push22=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push25=, 48
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 0($pop26)
	i32.load8_u	$push108=, 44($1)
	tee_local	$push107=, $5=, $pop108
	i32.const	$push106=, 1
	i32.shr_u	$push24=, $pop107, $pop106
	i32.const	$push105=, 1
	i32.and 	$push23=, $5, $pop105
	i32.select	$push104=, $pop27, $pop24, $pop23
	tee_local	$push103=, $4=, $pop104
	i32.const	$push28=, 33
	i32.add 	$5=, $pop103, $pop28
	i64.extend_u/i32	$6=, $4
	i32.const	$push85=, 16
	i32.add 	$push86=, $8, $pop85
	i32.const	$push102=, 16
	i32.add 	$4=, $pop86, $pop102
.LBB32_1:
	loop    	
	i32.const	$push117=, 1
	i32.add 	$5=, $5, $pop117
	i64.const	$push116=, 7
	i64.shr_u	$push115=, $6, $pop116
	tee_local	$push114=, $6=, $pop115
	i64.const	$push113=, 0
	i64.ne  	$push29=, $pop114, $pop113
	br_if   	0, $pop29
	end_loop
	block   	
	block   	
	i32.const	$push30=, 513
	i32.lt_u	$push31=, $5, $pop30
	br_if   	0, $pop31
	i32.call	$7=, malloc@FUNCTION, $5
	br      	1
.LBB32_4:
	end_block
	i32.const	$push77=, 0
	i32.const	$push32=, 15
	i32.add 	$push33=, $5, $pop32
	i32.const	$push34=, -16
	i32.and 	$push35=, $pop33, $pop34
	i32.sub 	$push119=, $7, $pop35
	tee_local	$push118=, $7=, $pop119
	copy_local	$push101=, $pop118
	i32.store	__stack_pointer($pop77), $pop101
.LBB32_5:
	end_block
	i32.store	4($8), $7
	i32.store	0($8), $7
	i32.add 	$push36=, $7, $5
	i32.store	8($8), $pop36
	i32.call	$drop=, _ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE@FUNCTION, $8, $1
	i32.const	$push37=, 60
	i32.add 	$push38=, $1, $pop37
	i32.load	$push39=, 0($pop38)
	call    	db_update_i64@FUNCTION, $pop39, $2, $7, $5
	block   	
	i32.const	$push40=, 513
	i32.lt_u	$push41=, $5, $pop40
	br_if   	0, $pop41
	call    	free@FUNCTION, $7
.LBB32_7:
	end_block
	block   	
	i64.load	$push42=, 16($0)
	i64.lt_u	$push43=, $3, $pop42
	br_if   	0, $pop43
	i32.const	$push50=, 16
	i32.add 	$push51=, $0, $pop50
	i64.const	$push48=, -2
	i64.const	$push46=, 1
	i64.add 	$push47=, $3, $pop46
	i64.const	$push44=, -3
	i64.gt_u	$push45=, $3, $pop44
	i64.select	$push49=, $pop48, $pop47, $pop45
	i64.store	0($pop51), $pop49
.LBB32_9:
	end_block
	i32.const	$push52=, 24
	i32.add 	$push53=, $1, $pop52
	i64.load	$push54=, 0($pop53)
	i64.store	72($8), $pop54
	i32.const	$push55=, 16
	i32.add 	$push56=, $1, $pop55
	i64.load	$push57=, 0($pop56)
	i64.store	64($8), $pop57
	block   	
	i32.const	$push87=, 16
	i32.add 	$push88=, $8, $pop87
	i32.const	$push89=, 64
	i32.add 	$push90=, $8, $pop89
	i32.const	$push120=, 16
	i32.call	$push58=, memcmp@FUNCTION, $pop88, $pop90, $pop120
	i32.eqz 	$push131=, $pop58
	br_if   	0, $pop131
	block   	
	i32.load	$push122=, 64($1)
	tee_local	$push121=, $5=, $pop122
	i32.const	$push59=, -1
	i32.gt_s	$push60=, $pop121, $pop59
	br_if   	0, $pop60
	i32.const	$push64=, 64
	i32.add 	$push65=, $1, $pop64
	i64.load	$push62=, 0($0)
	i64.load	$push61=, 8($0)
	i64.const	$push63=, -7880044396883394560
	i32.const	$push97=, 48
	i32.add 	$push98=, $8, $pop97
	i32.call	$push124=, db_idx128_find_primary@FUNCTION, $pop62, $pop61, $pop63, $pop98, $3
	tee_local	$push123=, $5=, $pop124
	i32.store	0($pop65), $pop123
.LBB32_12:
	end_block
	i32.const	$push99=, 64
	i32.add 	$push100=, $8, $pop99
	call    	db_idx128_update@FUNCTION, $5, $2, $pop100
.LBB32_13:
	end_block
	i32.const	$push66=, 32
	i32.add 	$push67=, $1, $pop66
	i64.load	$push68=, 0($pop67)
	i64.store	64($8), $pop68
	block   	
	i32.const	$push91=, 64
	i32.add 	$push92=, $8, $pop91
	i32.const	$push69=, 8
	i32.call	$push70=, memcmp@FUNCTION, $4, $pop92, $pop69
	i32.eqz 	$push132=, $pop70
	br_if   	0, $pop132
	block   	
	i32.const	$push71=, 68
	i32.add 	$push128=, $1, $pop71
	tee_local	$push127=, $1=, $pop128
	i32.load	$push126=, 0($pop127)
	tee_local	$push125=, $5=, $pop126
	i32.const	$push72=, -1
	i32.gt_s	$push73=, $pop125, $pop72
	br_if   	0, $pop73
	i64.load	$push75=, 0($0)
	i64.load	$push74=, 8($0)
	i64.const	$push76=, -7880044396883394559
	i32.const	$push93=, 48
	i32.add 	$push94=, $8, $pop93
	i32.call	$push130=, db_idx64_find_primary@FUNCTION, $pop75, $pop74, $pop76, $pop94, $3
	tee_local	$push129=, $5=, $pop130
	i32.store	0($1), $pop129
.LBB32_16:
	end_block
	i32.const	$push95=, 64
	i32.add 	$push96=, $8, $pop95
	call    	db_idx64_update@FUNCTION, $5, $2, $pop96
.LBB32_17:
	end_block
	i32.const	$push84=, 0
	i32.const	$push82=, 80
	i32.add 	$push83=, $8, $pop82
	i32.store	__stack_pointer($pop84), $pop83
	.endfunc
.Lfunc_end32:
	.size	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_7declineEyoE3$_5EEvRKS3_yOT_, .Lfunc_end32-_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_7declineEyoE3$_5EEvRKS3_yOT_

	.hidden	_ZN16secrataContainer9container6removeEyyo
	.globl	_ZN16secrataContainer9container6removeEyyo
	.type	_ZN16secrataContainer9container6removeEyyo,@function
_ZN16secrataContainer9container6removeEyyo:
	.param  	i32, i64, i64, i64, i64
	.local  	i32, i32, i32, i32
	i32.const	$push47=, 0
	i32.const	$push44=, 0
	i32.load	$push45=, __stack_pointer($pop44)
	i32.const	$push46=, 80
	i32.sub 	$push68=, $pop45, $pop46
	tee_local	$push67=, $8=, $pop68
	i32.store	__stack_pointer($pop47), $pop67
	i64.store	72($8), $4
	i64.store	64($8), $3
	call    	require_auth@FUNCTION, $1
	i32.call	$push0=, _ZN16secrataContainer9container15workspaceExistsEo@FUNCTION, $0, $3, $4
	i32.const	$push1=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop0, $pop1
	i32.call	$push2=, _ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo@FUNCTION, $0, $1, $3, $4
	i32.const	$push3=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.const	$push4=, 56
	i32.add 	$push5=, $8, $pop4
	i32.const	$push6=, 0
	i32.store	0($pop5), $pop6
	i64.const	$push7=, -1
	i64.store	40($8), $pop7
	i64.const	$push66=, 0
	i64.store	48($8), $pop66
	i64.load	$push65=, 0($0)
	tee_local	$push64=, $3=, $pop65
	i64.store	24($8), $pop64
	i64.store	32($8), $3
	i32.const	$push63=, 0
	i32.store16	60($8), $pop63
	i32.const	$push51=, 24
	i32.add 	$push52=, $8, $pop51
	i32.store	16($8), $pop52
	i32.const	$push53=, 8
	i32.add 	$push54=, $8, $pop53
	i32.const	$push55=, 16
	i32.add 	$push56=, $8, $pop55
	i32.const	$push57=, 64
	i32.add 	$push58=, $8, $pop57
	call    	_ZNK5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE11lower_boundERKo@FUNCTION, $pop54, $pop56, $pop58
	block   	
	block   	
	block   	
	block   	
	i32.load	$push62=, 12($8)
	tee_local	$push61=, $0=, $pop62
	i32.eqz 	$push91=, $pop61
	br_if   	0, $pop91
.LBB33_2:
	block   	
	loop    	
	i64.load	$push8=, 16($0)
	i64.load	$push74=, 64($8)
	tee_local	$push73=, $3=, $pop74
	i64.xor 	$push9=, $pop8, $pop73
	i32.const	$push72=, 24
	i32.add 	$push10=, $0, $pop72
	i64.load	$push11=, 0($pop10)
	i64.load	$push71=, 72($8)
	tee_local	$push70=, $4=, $pop71
	i64.xor 	$push12=, $pop11, $pop70
	i64.or  	$push13=, $pop9, $pop12
	i64.const	$push69=, 0
	i64.ne  	$push14=, $pop13, $pop69
	br_if   	1, $pop14
	i64.load	$push15=, 32($0)
	i64.eq  	$push16=, $pop15, $2
	br_if   	1, $pop16
	i32.const	$push59=, 8
	i32.add 	$push60=, $8, $pop59
	i32.call	$drop=, _ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE5indexILy4582877868886851584ES8_Ly0ELb0EE14const_iteratorppEv@FUNCTION, $pop60
	i32.load	$push76=, 12($8)
	tee_local	$push75=, $0=, $pop76
	br_if   	0, $pop75
	br      	2
.LBB33_5:
	end_loop
	end_block
	i64.load	$push17=, 16($0)
	i64.xor 	$push18=, $pop17, $3
	i32.const	$push19=, 24
	i32.add 	$push20=, $0, $pop19
	i64.load	$push21=, 0($pop20)
	i64.xor 	$push22=, $pop21, $4
	i64.or  	$push23=, $pop18, $pop22
	i64.const	$push24=, 0
	i64.ne  	$push25=, $pop23, $pop24
	br_if   	0, $pop25
	i64.load	$push26=, 32($0)
	i64.ne  	$push27=, $pop26, $2
	br_if   	0, $pop27
	i32.load8_u	$push28=, 40($0)
	i32.const	$push29=, 2
	i32.ne  	$push30=, $pop28, $pop29
	br_if   	1, $pop30
.LBB33_8:
	end_block
	i32.const	$push34=, .L.str.7
	call    	prints@FUNCTION, $pop34
	i32.load	$push78=, 48($8)
	tee_local	$push77=, $5=, $pop78
	i32.eqz 	$push92=, $pop77
	br_if   	2, $pop92
	br      	1
.LBB33_9:
	end_block
	i32.const	$push32=, 1
	i32.const	$push31=, .L.str.19
	call    	eosio_assert@FUNCTION, $pop32, $pop31
	i32.load	$push33=, 16($8)
	call    	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6removeEyyoE3$_6EEvRKS3_yOT_@FUNCTION, $pop33, $0, $1
	i32.load	$push90=, 48($8)
	tee_local	$push89=, $5=, $pop90
	i32.eqz 	$push93=, $pop89
	br_if   	1, $pop93
.LBB33_10:
	end_block
	block   	
	block   	
	i32.const	$push35=, 52
	i32.add 	$push82=, $8, $pop35
	tee_local	$push81=, $7=, $pop82
	i32.load	$push80=, 0($pop81)
	tee_local	$push79=, $0=, $pop80
	i32.eq  	$push36=, $pop79, $5
	br_if   	0, $pop36
.LBB33_12:
	loop    	
	i32.const	$push86=, -24
	i32.add 	$push85=, $0, $pop86
	tee_local	$push84=, $0=, $pop85
	i32.load	$6=, 0($pop84)
	i32.const	$push83=, 0
	i32.store	0($0), $pop83
	block   	
	i32.eqz 	$push94=, $6
	br_if   	0, $pop94
	block   	
	i32.load8_u	$push37=, 44($6)
	i32.const	$push87=, 1
	i32.and 	$push38=, $pop37, $pop87
	i32.eqz 	$push95=, $pop38
	br_if   	0, $pop95
	i32.const	$push88=, 52
	i32.add 	$push39=, $6, $pop88
	i32.load	$push40=, 0($pop39)
	call    	_ZdlPv@FUNCTION, $pop40
.LBB33_15:
	end_block
	call    	_ZdlPv@FUNCTION, $6
.LBB33_16:
	end_block
	i32.ne  	$push41=, $5, $0
	br_if   	0, $pop41
	end_loop
	i32.const	$push42=, 48
	i32.add 	$push43=, $8, $pop42
	i32.load	$0=, 0($pop43)
	br      	1
.LBB33_18:
	end_block
	copy_local	$0=, $5
.LBB33_19:
	end_block
	i32.store	0($7), $5
	call    	_ZdlPv@FUNCTION, $0
.LBB33_20:
	end_block
	i32.const	$push50=, 0
	i32.const	$push48=, 80
	i32.add 	$push49=, $8, $pop48
	i32.store	__stack_pointer($pop50), $pop49
	.endfunc
.Lfunc_end33:
	.size	_ZN16secrataContainer9container6removeEyyo, .Lfunc_end33-_ZN16secrataContainer9container6removeEyyo

	.type	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6removeEyyoE3$_6EEvRKS3_yOT_,@function
_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6removeEyyoE3$_6EEvRKS3_yOT_:
	.param  	i32, i32, i64
	.local  	i64, i32, i32, i64, i32, i32
	i32.const	$push81=, 0
	i32.const	$push78=, 0
	i32.load	$push79=, __stack_pointer($pop78)
	i32.const	$push80=, 80
	i32.sub 	$push112=, $pop79, $pop80
	tee_local	$push111=, $7=, $pop112
	i32.store	__stack_pointer($pop81), $pop111
	i32.load	$push0=, 56($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i32.const	$push7=, 2
	i32.store8	40($1), $pop7
	copy_local	$push110=, $7
	tee_local	$push109=, $8=, $pop110
	i32.const	$push8=, 24
	i32.add 	$push9=, $1, $pop8
	i64.load	$push10=, 0($pop9)
	i64.store	24($pop109), $pop10
	i32.const	$push11=, 16
	i32.add 	$push12=, $1, $pop11
	i64.load	$push13=, 0($pop12)
	i64.store	16($8), $pop13
	i32.const	$push14=, 32
	i32.add 	$push15=, $1, $pop14
	i64.load	$push16=, 0($pop15)
	i64.store	32($8), $pop16
	i64.load	$3=, 0($1)
	i32.const	$push17=, 44
	i32.add 	$push18=, $1, $pop17
	i32.const	$push19=, .L.str.23
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc@FUNCTION, $pop18, $pop19
	i64.load	$push20=, 0($1)
	i64.eq  	$push21=, $3, $pop20
	i32.const	$push22=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push25=, 48
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 0($pop26)
	i32.load8_u	$push108=, 44($1)
	tee_local	$push107=, $5=, $pop108
	i32.const	$push106=, 1
	i32.shr_u	$push24=, $pop107, $pop106
	i32.const	$push105=, 1
	i32.and 	$push23=, $5, $pop105
	i32.select	$push104=, $pop27, $pop24, $pop23
	tee_local	$push103=, $4=, $pop104
	i32.const	$push28=, 33
	i32.add 	$5=, $pop103, $pop28
	i64.extend_u/i32	$6=, $4
	i32.const	$push85=, 16
	i32.add 	$push86=, $8, $pop85
	i32.const	$push102=, 16
	i32.add 	$4=, $pop86, $pop102
.LBB34_1:
	loop    	
	i32.const	$push117=, 1
	i32.add 	$5=, $5, $pop117
	i64.const	$push116=, 7
	i64.shr_u	$push115=, $6, $pop116
	tee_local	$push114=, $6=, $pop115
	i64.const	$push113=, 0
	i64.ne  	$push29=, $pop114, $pop113
	br_if   	0, $pop29
	end_loop
	block   	
	block   	
	i32.const	$push30=, 513
	i32.lt_u	$push31=, $5, $pop30
	br_if   	0, $pop31
	i32.call	$7=, malloc@FUNCTION, $5
	br      	1
.LBB34_4:
	end_block
	i32.const	$push77=, 0
	i32.const	$push32=, 15
	i32.add 	$push33=, $5, $pop32
	i32.const	$push34=, -16
	i32.and 	$push35=, $pop33, $pop34
	i32.sub 	$push119=, $7, $pop35
	tee_local	$push118=, $7=, $pop119
	copy_local	$push101=, $pop118
	i32.store	__stack_pointer($pop77), $pop101
.LBB34_5:
	end_block
	i32.store	4($8), $7
	i32.store	0($8), $7
	i32.add 	$push36=, $7, $5
	i32.store	8($8), $pop36
	i32.call	$drop=, _ZN16secrataContainerlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_9container10membershipE@FUNCTION, $8, $1
	i32.const	$push37=, 60
	i32.add 	$push38=, $1, $pop37
	i32.load	$push39=, 0($pop38)
	call    	db_update_i64@FUNCTION, $pop39, $2, $7, $5
	block   	
	i32.const	$push40=, 513
	i32.lt_u	$push41=, $5, $pop40
	br_if   	0, $pop41
	call    	free@FUNCTION, $7
.LBB34_7:
	end_block
	block   	
	i64.load	$push42=, 16($0)
	i64.lt_u	$push43=, $3, $pop42
	br_if   	0, $pop43
	i32.const	$push50=, 16
	i32.add 	$push51=, $0, $pop50
	i64.const	$push48=, -2
	i64.const	$push46=, 1
	i64.add 	$push47=, $3, $pop46
	i64.const	$push44=, -3
	i64.gt_u	$push45=, $3, $pop44
	i64.select	$push49=, $pop48, $pop47, $pop45
	i64.store	0($pop51), $pop49
.LBB34_9:
	end_block
	i32.const	$push52=, 24
	i32.add 	$push53=, $1, $pop52
	i64.load	$push54=, 0($pop53)
	i64.store	72($8), $pop54
	i32.const	$push55=, 16
	i32.add 	$push56=, $1, $pop55
	i64.load	$push57=, 0($pop56)
	i64.store	64($8), $pop57
	block   	
	i32.const	$push87=, 16
	i32.add 	$push88=, $8, $pop87
	i32.const	$push89=, 64
	i32.add 	$push90=, $8, $pop89
	i32.const	$push120=, 16
	i32.call	$push58=, memcmp@FUNCTION, $pop88, $pop90, $pop120
	i32.eqz 	$push131=, $pop58
	br_if   	0, $pop131
	block   	
	i32.load	$push122=, 64($1)
	tee_local	$push121=, $5=, $pop122
	i32.const	$push59=, -1
	i32.gt_s	$push60=, $pop121, $pop59
	br_if   	0, $pop60
	i32.const	$push64=, 64
	i32.add 	$push65=, $1, $pop64
	i64.load	$push62=, 0($0)
	i64.load	$push61=, 8($0)
	i64.const	$push63=, -7880044396883394560
	i32.const	$push97=, 48
	i32.add 	$push98=, $8, $pop97
	i32.call	$push124=, db_idx128_find_primary@FUNCTION, $pop62, $pop61, $pop63, $pop98, $3
	tee_local	$push123=, $5=, $pop124
	i32.store	0($pop65), $pop123
.LBB34_12:
	end_block
	i32.const	$push99=, 64
	i32.add 	$push100=, $8, $pop99
	call    	db_idx128_update@FUNCTION, $5, $2, $pop100
.LBB34_13:
	end_block
	i32.const	$push66=, 32
	i32.add 	$push67=, $1, $pop66
	i64.load	$push68=, 0($pop67)
	i64.store	64($8), $pop68
	block   	
	i32.const	$push91=, 64
	i32.add 	$push92=, $8, $pop91
	i32.const	$push69=, 8
	i32.call	$push70=, memcmp@FUNCTION, $4, $pop92, $pop69
	i32.eqz 	$push132=, $pop70
	br_if   	0, $pop132
	block   	
	i32.const	$push71=, 68
	i32.add 	$push128=, $1, $pop71
	tee_local	$push127=, $1=, $pop128
	i32.load	$push126=, 0($pop127)
	tee_local	$push125=, $5=, $pop126
	i32.const	$push72=, -1
	i32.gt_s	$push73=, $pop125, $pop72
	br_if   	0, $pop73
	i64.load	$push75=, 0($0)
	i64.load	$push74=, 8($0)
	i64.const	$push76=, -7880044396883394559
	i32.const	$push93=, 48
	i32.add 	$push94=, $8, $pop93
	i32.call	$push130=, db_idx64_find_primary@FUNCTION, $pop75, $pop74, $pop76, $pop94, $3
	tee_local	$push129=, $5=, $pop130
	i32.store	0($1), $pop129
.LBB34_16:
	end_block
	i32.const	$push95=, 64
	i32.add 	$push96=, $8, $pop95
	call    	db_idx64_update@FUNCTION, $5, $2, $pop96
.LBB34_17:
	end_block
	i32.const	$push84=, 0
	i32.const	$push82=, 80
	i32.add 	$push83=, $8, $pop82
	i32.store	__stack_pointer($pop84), $pop83
	.endfunc
.Lfunc_end34:
	.size	_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6removeEyyoE3$_6EEvRKS3_yOT_, .Lfunc_end34-_ZN5eosio11multi_indexILy10566699676826157056EN16secrataContainer9container10membershipEJNS_10indexed_byILy4582877868886851584EN5boost11multi_index13const_mem_funIS3_oXadL_ZNKS3_8get_guidEvEEEEEENS4_ILy4590722025357574144ENS7_IS3_yXadL_ZNKS3_8get_userEvEEEEEEEE6modifyIZNS2_6removeEyyoE3$_6EEvRKS3_yOT_

	.hidden	_ZN16secrataContainer9container10addMessageEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.globl	_ZN16secrataContainer9container10addMessageEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.type	_ZN16secrataContainer9container10addMessageEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE,@function
_ZN16secrataContainer9container10addMessageEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE:
	.param  	i32, i64, i64, i64, i32
	call    	require_auth@FUNCTION, $1
	i32.call	$push0=, _ZN16secrataContainer9container15workspaceExistsEo@FUNCTION, $0, $2, $3
	i32.const	$push1=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop0, $pop1
	i32.call	$push2=, _ZN16secrataContainer9container23userIsMemberOfWorkspaceEyo@FUNCTION, $0, $1, $2, $3
	i32.const	$push3=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	.endfunc
.Lfunc_end35:
	.size	_ZN16secrataContainer9container10addMessageEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE, .Lfunc_end35-_ZN16secrataContainer9container10addMessageEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE

	.hidden	_ZN16secrataContainer9container10ackMessageEyoo
	.globl	_ZN16secrataContainer9container10ackMessageEyoo
	.type	_ZN16secrataContainer9container10ackMessageEyoo,@function
_ZN16secrataContainer9container10ackMessageEyoo:
	.param  	i32, i64, i64, i64, i64, i64
	.endfunc
.Lfunc_end36:
	.size	_ZN16secrataContainer9container10ackMessageEyoo, .Lfunc_end36-_ZN16secrataContainer9container10ackMessageEyoo

	.hidden	_ZN16secrataContainer9container7addFileEyoooooNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.globl	_ZN16secrataContainer9container7addFileEyoooooNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
	.type	_ZN16secrataContainer9container7addFileEyoooooNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE,@function
_ZN16secrataContainer9container7addFileEyoooooNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE:
	.param  	i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32
	.endfunc
.Lfunc_end37:
	.size	_ZN16secrataContainer9container7addFileEyoooooNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE, .Lfunc_end37-_ZN16secrataContainer9container7addFileEyoooooNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE

	.hidden	_ZN16secrataContainer9container10removeFileEyoooo
	.globl	_ZN16secrataContainer9container10removeFileEyoooo
	.type	_ZN16secrataContainer9container10removeFileEyoooo,@function
_ZN16secrataContainer9container10removeFileEyoooo:
	.param  	i32, i64, i64, i64, i64, i64, i64, i64, i64, i64
	.endfunc
.Lfunc_end38:
	.size	_ZN16secrataContainer9container10removeFileEyoooo, .Lfunc_end38-_ZN16secrataContainer9container10removeFileEyoooo

	.hidden	_ZN16secrataContainer9container7ackFileEyooo
	.globl	_ZN16secrataContainer9container7ackFileEyooo
	.type	_ZN16secrataContainer9container7ackFileEyooo,@function
_ZN16secrataContainer9container7ackFileEyooo:
	.param  	i32, i64, i64, i64, i64, i64, i64, i64
	.endfunc
.Lfunc_end39:
	.size	_ZN16secrataContainer9container7ackFileEyooo, .Lfunc_end39-_ZN16secrataContainer9container7ackFileEyooo

	.hidden	_ZN16secrataContainer9container7setPermEyNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEh
	.globl	_ZN16secrataContainer9container7setPermEyNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEh
	.type	_ZN16secrataContainer9container7setPermEyNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEh,@function
_ZN16secrataContainer9container7setPermEyNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEh:
	.param  	i32, i64, i32, i32
	.endfunc
.Lfunc_end40:
	.size	_ZN16secrataContainer9container7setPermEyNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEh, .Lfunc_end40-_ZN16secrataContainer9container7setPermEyNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEh

	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push82=, 0
	i32.const	$push79=, 0
	i32.load	$push80=, __stack_pointer($pop79)
	i32.const	$push81=, 112
	i32.sub 	$push111=, $pop80, $pop81
	tee_local	$push110=, $9=, $pop111
	i32.store	__stack_pointer($pop82), $pop110
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.8
	i64.const	$7=, 0
.LBB41_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push112=, 6
	i64.gt_u	$push0=, $6, $pop112
	br_if   	0, $pop0
	i32.load8_s	$push117=, 0($4)
	tee_local	$push116=, $3=, $pop117
	i32.const	$push115=, -97
	i32.add 	$push2=, $pop116, $pop115
	i32.const	$push114=, 255
	i32.and 	$push3=, $pop2, $pop114
	i32.const	$push113=, 25
	i32.gt_u	$push4=, $pop3, $pop113
	br_if   	1, $pop4
	i32.const	$push118=, 165
	i32.add 	$3=, $3, $pop118
	br      	2
.LBB41_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push119=, 11
	i64.le_u	$push1=, $6, $pop119
	br_if   	2, $pop1
	br      	3
.LBB41_5:
	end_block
	i32.const	$push124=, 208
	i32.add 	$push5=, $3, $pop124
	i32.const	$push123=, 0
	i32.const	$push122=, -49
	i32.add 	$push6=, $3, $pop122
	i32.const	$push121=, 255
	i32.and 	$push7=, $pop6, $pop121
	i32.const	$push120=, 5
	i32.lt_u	$push8=, $pop7, $pop120
	i32.select	$3=, $pop5, $pop123, $pop8
.LBB41_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push126=, 56
	i64.shl 	$push10=, $pop9, $pop126
	i64.const	$push125=, 56
	i64.shr_s	$8=, $pop10, $pop125
.LBB41_7:
	end_block
	i64.const	$push128=, 31
	i64.and 	$push12=, $8, $pop128
	i64.const	$push127=, 4294967295
	i64.and 	$push11=, $5, $pop127
	i64.shl 	$8=, $pop12, $pop11
.LBB41_8:
	end_block
	i32.const	$push134=, 1
	i32.add 	$4=, $4, $pop134
	i64.const	$push133=, 1
	i64.add 	$6=, $6, $pop133
	i64.or  	$7=, $8, $7
	i64.const	$push132=, -5
	i64.add 	$push131=, $5, $pop132
	tee_local	$push130=, $5=, $pop131
	i64.const	$push129=, -6
	i64.ne  	$push13=, $pop130, $pop129
	br_if   	0, $pop13
	end_loop
	block   	
	i64.ne  	$push14=, $7, $2
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB41_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push135=, 4
	i64.gt_u	$push15=, $6, $pop135
	br_if   	0, $pop15
	i32.load8_s	$push140=, 0($4)
	tee_local	$push139=, $3=, $pop140
	i32.const	$push138=, -97
	i32.add 	$push17=, $pop139, $pop138
	i32.const	$push137=, 255
	i32.and 	$push18=, $pop17, $pop137
	i32.const	$push136=, 25
	i32.gt_u	$push19=, $pop18, $pop136
	br_if   	1, $pop19
	i32.const	$push141=, 165
	i32.add 	$3=, $3, $pop141
	br      	2
.LBB41_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push142=, 11
	i64.le_u	$push16=, $6, $pop142
	br_if   	2, $pop16
	br      	3
.LBB41_15:
	end_block
	i32.const	$push147=, 208
	i32.add 	$push20=, $3, $pop147
	i32.const	$push146=, 0
	i32.const	$push145=, -49
	i32.add 	$push21=, $3, $pop145
	i32.const	$push144=, 255
	i32.and 	$push22=, $pop21, $pop144
	i32.const	$push143=, 5
	i32.lt_u	$push23=, $pop22, $pop143
	i32.select	$3=, $pop20, $pop146, $pop23
.LBB41_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push149=, 56
	i64.shl 	$push25=, $pop24, $pop149
	i64.const	$push148=, 56
	i64.shr_s	$8=, $pop25, $pop148
.LBB41_17:
	end_block
	i64.const	$push151=, 31
	i64.and 	$push27=, $8, $pop151
	i64.const	$push150=, 4294967295
	i64.and 	$push26=, $5, $pop150
	i64.shl 	$8=, $pop27, $pop26
.LBB41_18:
	end_block
	i32.const	$push157=, 1
	i32.add 	$4=, $4, $pop157
	i64.const	$push156=, 1
	i64.add 	$6=, $6, $pop156
	i64.or  	$7=, $8, $7
	i64.const	$push155=, -5
	i64.add 	$push154=, $5, $pop155
	tee_local	$push153=, $5=, $pop154
	i64.const	$push152=, -6
	i64.ne  	$push28=, $pop153, $pop152
	br_if   	0, $pop28
	end_loop
	i64.eq  	$push29=, $7, $1
	i32.const	$push30=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop29, $pop30
.LBB41_20:
	end_block
	block   	
	block   	
	i64.eq  	$push31=, $1, $0
	br_if   	0, $pop31
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.8
	i64.const	$7=, 0
.LBB41_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push158=, 6
	i64.gt_u	$push32=, $6, $pop158
	br_if   	0, $pop32
	i32.load8_s	$push163=, 0($4)
	tee_local	$push162=, $3=, $pop163
	i32.const	$push161=, -97
	i32.add 	$push34=, $pop162, $pop161
	i32.const	$push160=, 255
	i32.and 	$push35=, $pop34, $pop160
	i32.const	$push159=, 25
	i32.gt_u	$push36=, $pop35, $pop159
	br_if   	1, $pop36
	i32.const	$push164=, 165
	i32.add 	$3=, $3, $pop164
	br      	2
.LBB41_25:
	end_block
	i64.const	$8=, 0
	i64.const	$push165=, 11
	i64.le_u	$push33=, $6, $pop165
	br_if   	2, $pop33
	br      	3
.LBB41_26:
	end_block
	i32.const	$push170=, 208
	i32.add 	$push37=, $3, $pop170
	i32.const	$push169=, 0
	i32.const	$push168=, -49
	i32.add 	$push38=, $3, $pop168
	i32.const	$push167=, 255
	i32.and 	$push39=, $pop38, $pop167
	i32.const	$push166=, 5
	i32.lt_u	$push40=, $pop39, $pop166
	i32.select	$3=, $pop37, $pop169, $pop40
.LBB41_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push172=, 56
	i64.shl 	$push42=, $pop41, $pop172
	i64.const	$push171=, 56
	i64.shr_s	$8=, $pop42, $pop171
.LBB41_28:
	end_block
	i64.const	$push174=, 31
	i64.and 	$push44=, $8, $pop174
	i64.const	$push173=, 4294967295
	i64.and 	$push43=, $5, $pop173
	i64.shl 	$8=, $pop44, $pop43
.LBB41_29:
	end_block
	i32.const	$push180=, 1
	i32.add 	$4=, $4, $pop180
	i64.const	$push179=, 1
	i64.add 	$6=, $6, $pop179
	i64.or  	$7=, $8, $7
	i64.const	$push178=, -5
	i64.add 	$push177=, $5, $pop178
	tee_local	$push176=, $5=, $pop177
	i64.const	$push175=, -6
	i64.ne  	$push45=, $pop176, $pop175
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $7, $2
	br_if   	1, $pop46
.LBB41_31:
	end_block
	i64.store	104($9), $0
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push47=, 5031766152489992191
	i64.gt_s	$push48=, $2, $pop47
	br_if   	0, $pop48
	i64.const	$push55=, -4997502827547852800
	i64.eq  	$push56=, $2, $pop55
	br_if   	1, $pop56
	i64.const	$push57=, -3075276126730321920
	i64.eq  	$push58=, $2, $pop57
	br_if   	2, $pop58
	i64.const	$push59=, 3607571197753032704
	i64.ne  	$push60=, $2, $pop59
	br_if   	5, $pop60
	i32.const	$push67=, 0
	i32.store	76($9), $pop67
	i32.const	$push68=, _ZN16secrataContainer9container6acceptEyo@FUNCTION
	i32.store	72($9), $pop68
	i64.load	$push69=, 72($9)
	i64.store	32($9):p2align=2, $pop69
	i32.const	$push94=, 104
	i32.add 	$push95=, $9, $pop94
	i32.const	$push96=, 32
	i32.add 	$push97=, $9, $pop96
	i32.call	$drop=, _ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop95, $pop97
	br      	5
.LBB41_36:
	end_block
	i64.const	$push49=, 8428183958969122816
	i64.eq  	$push50=, $2, $pop49
	br_if   	2, $pop50
	i64.const	$push51=, 5373101450983374848
	i64.eq  	$push52=, $2, $pop51
	br_if   	3, $pop52
	i64.const	$push53=, 5031766152489992192
	i64.ne  	$push54=, $2, $pop53
	br_if   	4, $pop54
	i32.const	$push76=, 0
	i32.store	100($9), $pop76
	i32.const	$push77=, _ZN16secrataContainer9container6createEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_@FUNCTION
	i32.store	96($9), $pop77
	i64.load	$push78=, 96($9)
	i64.store	8($9):p2align=2, $pop78
	i32.const	$push106=, 104
	i32.add 	$push107=, $9, $pop106
	i32.const	$push108=, 8
	i32.add 	$push109=, $9, $pop108
	i32.call	$drop=, _ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E@FUNCTION, $pop107, $pop109
	br      	4
.LBB41_40:
	end_block
	i32.const	$push61=, 0
	i32.store	60($9), $pop61
	i32.const	$push62=, _ZN16secrataContainer9container6removeEyyo@FUNCTION
	i32.store	56($9), $pop62
	i64.load	$push63=, 56($9)
	i64.store	48($9):p2align=2, $pop63
	i32.const	$push86=, 104
	i32.add 	$push87=, $9, $pop86
	i32.const	$push88=, 48
	i32.add 	$push89=, $9, $pop88
	i32.call	$drop=, _ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop87, $pop89
	br      	3
.LBB41_41:
	end_block
	i32.const	$push73=, 0
	i32.store	92($9), $pop73
	i32.const	$push74=, _ZN16secrataContainer9container6updateEyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE@FUNCTION
	i32.store	88($9), $pop74
	i64.load	$push75=, 88($9)
	i64.store	16($9):p2align=2, $pop75
	i32.const	$push90=, 104
	i32.add 	$push91=, $9, $pop90
	i32.const	$push92=, 16
	i32.add 	$push93=, $9, $pop92
	i32.call	$drop=, _ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop91, $pop93
	br      	2
.LBB41_42:
	end_block
	i32.const	$push70=, 0
	i32.store	84($9), $pop70
	i32.const	$push71=, _ZN16secrataContainer9container6inviteEyyoNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE@FUNCTION
	i32.store	80($9), $pop71
	i64.load	$push72=, 80($9)
	i64.store	24($9):p2align=2, $pop72
	i32.const	$push98=, 104
	i32.add 	$push99=, $9, $pop98
	i32.const	$push100=, 24
	i32.add 	$push101=, $9, $pop100
	i32.call	$drop=, _ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop99, $pop101
	br      	1
.LBB41_43:
	end_block
	i32.const	$push64=, 0
	i32.store	68($9), $pop64
	i32.const	$push65=, _ZN16secrataContainer9container7declineEyo@FUNCTION
	i32.store	64($9), $pop65
	i64.load	$push66=, 64($9)
	i64.store	40($9):p2align=2, $pop66
	i32.const	$push102=, 104
	i32.add 	$push103=, $9, $pop102
	i32.const	$push104=, 40
	i32.add 	$push105=, $9, $pop104
	i32.call	$drop=, _ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop103, $pop105
.LBB41_44:
	end_block
	i32.const	$push85=, 0
	i32.const	$push83=, 112
	i32.add 	$push84=, $9, $pop83
	i32.store	__stack_pointer($pop85), $pop84
	.endfunc
.Lfunc_end41:
	.size	apply, .Lfunc_end41-apply

	.section	.text._ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$push56=, 0
	i32.const	$push53=, 0
	i32.load	$push54=, __stack_pointer($pop53)
	i32.const	$push55=, 112
	i32.sub 	$push78=, $pop54, $pop55
	tee_local	$push77=, $4=, $pop78
	i32.store	__stack_pointer($pop56), $pop77
	copy_local	$push76=, $4
	tee_local	$push75=, $3=, $pop76
	i32.store	92($pop75), $0
	i32.load	$push0=, 0($1)
	i32.store	80($3), $pop0
	i32.load	$push1=, 4($1)
	i32.store	84($3), $pop1
	i32.const	$1=, 0
	block   	
	i32.call	$push74=, action_data_size@FUNCTION
	tee_local	$push73=, $0=, $pop74
	i32.eqz 	$push101=, $pop73
	br_if   	0, $pop101
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $0, $pop2
	br_if   	0, $pop3
	i32.call	$1=, malloc@FUNCTION, $0
	br      	1
.LBB42_3:
	end_block
	i32.const	$push52=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $0, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push80=, $4, $pop7
	tee_local	$push79=, $1=, $pop80
	copy_local	$push72=, $pop79
	i32.store	__stack_pointer($pop52), $pop72
.LBB42_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $0
.LBB42_5:
	end_block
	i32.const	$push8=, 24
	i32.add 	$push9=, $3, $pop8
	i64.const	$push10=, 0
	i64.store	0($pop9), $pop10
	i32.const	$push11=, 40
	i32.add 	$push12=, $3, $pop11
	i64.const	$push96=, 0
	i64.store	0($pop12), $pop96
	i32.const	$push13=, 48
	i32.add 	$push14=, $3, $pop13
	i64.const	$push95=, 0
	i64.store	0($pop14), $pop95
	i64.const	$push94=, 0
	i64.store	16($3), $pop94
	i64.const	$push93=, 0
	i64.store	0($3), $pop93
	i64.const	$push92=, 0
	i64.store	32($3), $pop92
	i32.const	$push91=, 0
	i32.store	56($3), $pop91
	i32.const	$push15=, 60
	i32.add 	$push16=, $3, $pop15
	i32.const	$push90=, 0
	i32.store	0($pop16), $pop90
	i32.const	$push17=, 64
	i32.add 	$push18=, $3, $pop17
	i32.const	$push89=, 0
	i32.store	0($pop18), $pop89
	i32.store	96($3), $1
	i32.add 	$push88=, $1, $0
	tee_local	$push87=, $4=, $pop88
	i32.store	104($3), $pop87
	i32.const	$push19=, 7
	i32.gt_u	$push20=, $0, $pop19
	i32.const	$push21=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $1, $pop22
	i32.const	$push86=, 8
	i32.add 	$push85=, $1, $pop86
	tee_local	$push84=, $2=, $pop85
	i32.sub 	$push23=, $4, $pop84
	i32.const	$push24=, 15
	i32.gt_u	$push25=, $pop23, $pop24
	i32.const	$push83=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop25, $pop83
	i32.const	$push26=, 16
	i32.add 	$push27=, $3, $pop26
	i32.const	$push82=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $2, $pop82
	i32.const	$push81=, 24
	i32.add 	$push28=, $1, $pop81
	i32.store	100($3), $pop28
	i32.const	$push60=, 96
	i32.add 	$push61=, $3, $pop60
	i32.const	$push29=, 32
	i32.add 	$push30=, $3, $pop29
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop61, $pop30
	i32.const	$push62=, 96
	i32.add 	$push63=, $3, $pop62
	i32.const	$push31=, 44
	i32.add 	$push32=, $3, $pop31
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop63, $pop32
	i32.const	$push64=, 96
	i32.add 	$push65=, $3, $pop64
	i32.const	$push33=, 56
	i32.add 	$push34=, $3, $pop33
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop65, $pop34
	block   	
	i32.const	$push35=, 513
	i32.lt_u	$push36=, $0, $pop35
	br_if   	0, $pop36
	call    	free@FUNCTION, $1
.LBB42_7:
	end_block
	i32.const	$push66=, 80
	i32.add 	$push67=, $3, $pop66
	i32.store	100($3), $pop67
	i32.const	$push68=, 92
	i32.add 	$push69=, $3, $pop68
	i32.store	96($3), $pop69
	i32.const	$push70=, 96
	i32.add 	$push71=, $3, $pop70
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop71, $3
	block   	
	i32.load8_u	$push37=, 56($3)
	i32.const	$push97=, 1
	i32.and 	$push38=, $pop37, $pop97
	i32.eqz 	$push102=, $pop38
	br_if   	0, $pop102
	i32.const	$push39=, 64
	i32.add 	$push40=, $3, $pop39
	i32.load	$push41=, 0($pop40)
	call    	_ZdlPv@FUNCTION, $pop41
.LBB42_9:
	end_block
	block   	
	i32.load8_u	$push42=, 44($3)
	i32.const	$push98=, 1
	i32.and 	$push43=, $pop42, $pop98
	i32.eqz 	$push103=, $pop43
	br_if   	0, $pop103
	i32.const	$push44=, 52
	i32.add 	$push45=, $3, $pop44
	i32.load	$push46=, 0($pop45)
	call    	_ZdlPv@FUNCTION, $pop46
.LBB42_11:
	end_block
	block   	
	i32.load8_u	$push47=, 32($3)
	i32.const	$push99=, 1
	i32.and 	$push48=, $pop47, $pop99
	i32.eqz 	$push104=, $pop48
	br_if   	0, $pop104
	i32.const	$push49=, 40
	i32.add 	$push50=, $3, $pop49
	i32.load	$push51=, 0($pop50)
	call    	_ZdlPv@FUNCTION, $pop51
.LBB42_13:
	end_block
	i32.const	$push59=, 0
	i32.const	$push57=, 112
	i32.add 	$push58=, $3, $pop57
	i32.store	__stack_pointer($pop59), $pop58
	i32.const	$push100=, 1
	.endfunc
.Lfunc_end42:
	.size	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E, .Lfunc_end42-_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$push36=, 0
	i32.const	$push33=, 0
	i32.load	$push34=, __stack_pointer($pop33)
	i32.const	$push35=, 80
	i32.sub 	$push54=, $pop34, $pop35
	tee_local	$push53=, $4=, $pop54
	i32.store	__stack_pointer($pop36), $pop53
	copy_local	$push52=, $4
	tee_local	$push51=, $3=, $pop52
	i32.store	60($pop51), $0
	i32.load	$push0=, 0($1)
	i32.store	48($3), $pop0
	i32.load	$push1=, 4($1)
	i32.store	52($3), $pop1
	i32.const	$1=, 0
	block   	
	i32.call	$push50=, action_data_size@FUNCTION
	tee_local	$push49=, $0=, $pop50
	i32.eqz 	$push71=, $pop49
	br_if   	0, $pop71
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $0, $pop2
	br_if   	0, $pop3
	i32.call	$1=, malloc@FUNCTION, $0
	br      	1
.LBB43_3:
	end_block
	i32.const	$push32=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $0, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push56=, $4, $pop7
	tee_local	$push55=, $1=, $pop56
	copy_local	$push48=, $pop55
	i32.store	__stack_pointer($pop32), $pop48
.LBB43_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $0
.LBB43_5:
	end_block
	i32.const	$push8=, 24
	i32.add 	$push9=, $3, $pop8
	i64.const	$push10=, 0
	i64.store	0($pop9), $pop10
	i32.const	$push11=, 40
	i32.add 	$push12=, $3, $pop11
	i32.const	$push68=, 0
	i32.store	0($pop12), $pop68
	i64.const	$push67=, 0
	i64.store	16($3), $pop67
	i64.const	$push66=, 0
	i64.store	0($3), $pop66
	i64.const	$push65=, 0
	i64.store	32($3), $pop65
	i32.store	64($3), $1
	i32.add 	$push64=, $1, $0
	tee_local	$push63=, $4=, $pop64
	i32.store	72($3), $pop63
	i32.const	$push13=, 7
	i32.gt_u	$push14=, $0, $pop13
	i32.const	$push15=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	i32.const	$push16=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $1, $pop16
	i32.const	$push62=, 8
	i32.add 	$push61=, $1, $pop62
	tee_local	$push60=, $2=, $pop61
	i32.sub 	$push17=, $4, $pop60
	i32.const	$push18=, 15
	i32.gt_u	$push19=, $pop17, $pop18
	i32.const	$push59=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop19, $pop59
	i32.const	$push20=, 16
	i32.add 	$push21=, $3, $pop20
	i32.const	$push58=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $2, $pop58
	i32.const	$push57=, 24
	i32.add 	$push22=, $1, $pop57
	i32.store	68($3), $pop22
	i32.const	$push40=, 64
	i32.add 	$push41=, $3, $pop40
	i32.const	$push23=, 32
	i32.add 	$push24=, $3, $pop23
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop41, $pop24
	block   	
	i32.const	$push25=, 513
	i32.lt_u	$push26=, $0, $pop25
	br_if   	0, $pop26
	call    	free@FUNCTION, $1
.LBB43_7:
	end_block
	i32.const	$push42=, 48
	i32.add 	$push43=, $3, $pop42
	i32.store	68($3), $pop43
	i32.const	$push44=, 60
	i32.add 	$push45=, $3, $pop44
	i32.store	64($3), $pop45
	i32.const	$push46=, 64
	i32.add 	$push47=, $3, $pop46
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop47, $3
	block   	
	i32.load8_u	$push27=, 32($3)
	i32.const	$push69=, 1
	i32.and 	$push28=, $pop27, $pop69
	i32.eqz 	$push72=, $pop28
	br_if   	0, $pop72
	i32.const	$push29=, 40
	i32.add 	$push30=, $3, $pop29
	i32.load	$push31=, 0($pop30)
	call    	_ZdlPv@FUNCTION, $pop31
.LBB43_9:
	end_block
	i32.const	$push39=, 0
	i32.const	$push37=, 80
	i32.add 	$push38=, $3, $pop37
	i32.store	__stack_pointer($pop39), $pop38
	i32.const	$push70=, 1
	.endfunc
.Lfunc_end43:
	.size	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E, .Lfunc_end43-_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$push39=, 0
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 80
	i32.sub 	$push57=, $pop37, $pop38
	tee_local	$push56=, $2=, $pop57
	i32.store	__stack_pointer($pop39), $pop56
	copy_local	$push55=, $2
	tee_local	$push54=, $4=, $pop55
	i32.store	60($pop54), $0
	i32.load	$push0=, 0($1)
	i32.store	48($4), $pop0
	i32.load	$push1=, 4($1)
	i32.store	52($4), $pop1
	i32.const	$1=, 0
	block   	
	i32.call	$push53=, action_data_size@FUNCTION
	tee_local	$push52=, $0=, $pop53
	i32.eqz 	$push82=, $pop52
	br_if   	0, $pop82
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $0, $pop2
	br_if   	0, $pop3
	i32.call	$1=, malloc@FUNCTION, $0
	br      	1
.LBB44_3:
	end_block
	i32.const	$push35=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $0, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push59=, $2, $pop7
	tee_local	$push58=, $1=, $pop59
	copy_local	$push51=, $pop58
	i32.store	__stack_pointer($pop35), $pop51
.LBB44_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $0
.LBB44_5:
	end_block
	i32.const	$push8=, 24
	i32.add 	$push9=, $4, $pop8
	i64.const	$push10=, 0
	i64.store	0($pop9), $pop10
	i32.const	$push11=, 40
	i32.add 	$push12=, $4, $pop11
	i32.const	$push79=, 0
	i32.store	0($pop12), $pop79
	i64.const	$push78=, 0
	i64.store	16($4), $pop78
	i64.const	$push77=, 0
	i64.store	8($4), $pop77
	i64.const	$push76=, 0
	i64.store	0($4), $pop76
	i64.const	$push75=, 0
	i64.store	32($4), $pop75
	i32.store	64($4), $1
	i32.add 	$push74=, $1, $0
	tee_local	$push73=, $2=, $pop74
	i32.store	72($4), $pop73
	i32.const	$push13=, 7
	i32.gt_u	$push14=, $0, $pop13
	i32.const	$push15=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	i32.const	$push16=, 8
	i32.call	$drop=, memcpy@FUNCTION, $4, $1, $pop16
	i32.const	$push72=, 8
	i32.add 	$push71=, $1, $pop72
	tee_local	$push70=, $3=, $pop71
	i32.sub 	$push17=, $2, $pop70
	i32.const	$push69=, 7
	i32.gt_u	$push18=, $pop17, $pop69
	i32.const	$push68=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop18, $pop68
	i32.const	$push67=, 8
	i32.or  	$push19=, $4, $pop67
	i32.const	$push66=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $3, $pop66
	i32.const	$push20=, 16
	i32.add 	$push65=, $1, $pop20
	tee_local	$push64=, $3=, $pop65
	i32.sub 	$push21=, $2, $pop64
	i32.const	$push22=, 15
	i32.gt_u	$push23=, $pop21, $pop22
	i32.const	$push63=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop23, $pop63
	i32.const	$push62=, 16
	i32.add 	$push24=, $4, $pop62
	i32.const	$push61=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop24, $3, $pop61
	i32.const	$push25=, 32
	i32.add 	$push26=, $1, $pop25
	i32.store	68($4), $pop26
	i32.const	$push43=, 64
	i32.add 	$push44=, $4, $pop43
	i32.const	$push60=, 32
	i32.add 	$push27=, $4, $pop60
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop44, $pop27
	block   	
	i32.const	$push28=, 513
	i32.lt_u	$push29=, $0, $pop28
	br_if   	0, $pop29
	call    	free@FUNCTION, $1
.LBB44_7:
	end_block
	i32.const	$push45=, 48
	i32.add 	$push46=, $4, $pop45
	i32.store	68($4), $pop46
	i32.const	$push47=, 60
	i32.add 	$push48=, $4, $pop47
	i32.store	64($4), $pop48
	i32.const	$push49=, 64
	i32.add 	$push50=, $4, $pop49
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop50, $4
	block   	
	i32.load8_u	$push30=, 32($4)
	i32.const	$push80=, 1
	i32.and 	$push31=, $pop30, $pop80
	i32.eqz 	$push83=, $pop31
	br_if   	0, $pop83
	i32.const	$push32=, 40
	i32.add 	$push33=, $4, $pop32
	i32.load	$push34=, 0($pop33)
	call    	_ZdlPv@FUNCTION, $pop34
.LBB44_9:
	end_block
	i32.const	$push42=, 0
	i32.const	$push40=, 80
	i32.add 	$push41=, $4, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	i32.const	$push81=, 1
	.endfunc
.Lfunc_end44:
	.size	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E, .Lfunc_end44-_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i64, i32, i32, i32, i32, i32
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 32
	i32.sub 	$push38=, $pop28, $pop29
	tee_local	$push37=, $8=, $pop38
	copy_local	$10=, $pop37
	i32.const	$push30=, 0
	i32.store	__stack_pointer($pop30), $8
	i32.load	$2=, 4($1)
	i32.load	$9=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push36=, action_data_size@FUNCTION
	tee_local	$push35=, $1=, $pop36
	i32.eqz 	$push51=, $pop35
	br_if   	0, $pop51
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$8=, malloc@FUNCTION, $1
	br      	2
.LBB45_3:
	end_block
	i32.const	$8=, 0
	br      	2
.LBB45_4:
	end_block
	i32.const	$push26=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push40=, $8, $pop5
	tee_local	$push39=, $8=, $pop40
	copy_local	$push34=, $pop39
	i32.store	__stack_pointer($pop26), $pop34
.LBB45_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $8, $1
.LBB45_6:
	end_block
	i32.const	$push6=, 24
	i32.add 	$push49=, $10, $pop6
	tee_local	$push48=, $6=, $pop49
	i64.const	$push7=, 0
	i64.store	0($pop48), $pop7
	i64.const	$push47=, 0
	i64.store	16($10), $pop47
	i64.const	$push46=, 0
	i64.store	0($10), $pop46
	i32.const	$push8=, 7
	i32.gt_u	$push9=, $1, $pop8
	i32.const	$push10=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i32.const	$push11=, 8
	i32.call	$drop=, memcpy@FUNCTION, $10, $8, $pop11
	i32.const	$push12=, -8
	i32.add 	$push13=, $1, $pop12
	i32.const	$push14=, 15
	i32.gt_u	$push15=, $pop13, $pop14
	i32.const	$push45=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop15, $pop45
	i32.const	$push17=, 16
	i32.add 	$push44=, $10, $pop17
	tee_local	$push43=, $7=, $pop44
	i32.const	$push42=, 8
	i32.add 	$push16=, $8, $pop42
	i32.const	$push41=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop43, $pop16, $pop41
	block   	
	i32.const	$push18=, 513
	i32.lt_u	$push19=, $1, $pop18
	br_if   	0, $pop19
	call    	free@FUNCTION, $8
.LBB45_8:
	end_block
	i32.const	$push20=, 1
	i32.shr_s	$push21=, $2, $pop20
	i32.add 	$1=, $0, $pop21
	i64.load	$5=, 0($6)
	i64.load	$4=, 0($7)
	i64.load	$3=, 0($10)
	block   	
	i32.const	$push50=, 1
	i32.and 	$push22=, $2, $pop50
	i32.eqz 	$push52=, $pop22
	br_if   	0, $pop52
	i32.load	$push23=, 0($1)
	i32.add 	$push24=, $pop23, $9
	i32.load	$9=, 0($pop24)
.LBB45_10:
	end_block
	call_indirect	$1, $3, $4, $5, $9
	i32.const	$push33=, 0
	i32.const	$push31=, 32
	i32.add 	$push32=, $10, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	i32.const	$push25=, 1
	.endfunc
.Lfunc_end45:
	.size	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E, .Lfunc_end45-_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i64, i64, i32, i32, i32, i32, i32
	i32.const	$push31=, 0
	i32.load	$push32=, __stack_pointer($pop31)
	i32.const	$push33=, 32
	i32.sub 	$push42=, $pop32, $pop33
	tee_local	$push41=, $9=, $pop42
	copy_local	$11=, $pop41
	i32.const	$push34=, 0
	i32.store	__stack_pointer($pop34), $9
	i32.load	$2=, 4($1)
	i32.load	$10=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push40=, action_data_size@FUNCTION
	tee_local	$push39=, $1=, $pop40
	i32.eqz 	$push62=, $pop39
	br_if   	0, $pop62
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$9=, malloc@FUNCTION, $1
	br      	2
.LBB46_3:
	end_block
	i32.const	$9=, 0
	br      	2
.LBB46_4:
	end_block
	i32.const	$push30=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push44=, $9, $pop5
	tee_local	$push43=, $9=, $pop44
	copy_local	$push38=, $pop43
	i32.store	__stack_pointer($pop30), $pop38
.LBB46_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $9, $1
.LBB46_6:
	end_block
	i32.const	$push6=, 24
	i32.add 	$push60=, $11, $pop6
	tee_local	$push59=, $7=, $pop60
	i64.const	$push7=, 0
	i64.store	0($pop59), $pop7
	i64.const	$push58=, 0
	i64.store	16($11), $pop58
	i64.const	$push57=, 0
	i64.store	8($11), $pop57
	i64.const	$push56=, 0
	i64.store	0($11), $pop56
	i32.const	$push8=, 7
	i32.gt_u	$push9=, $1, $pop8
	i32.const	$push10=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i32.const	$push11=, 8
	i32.call	$drop=, memcpy@FUNCTION, $11, $9, $pop11
	i32.const	$push12=, -8
	i32.and 	$push13=, $1, $pop12
	i32.const	$push55=, 8
	i32.ne  	$push14=, $pop13, $pop55
	i32.const	$push54=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop14, $pop54
	i32.const	$push53=, 8
	i32.or  	$push16=, $11, $pop53
	i32.const	$push52=, 8
	i32.add 	$push15=, $9, $pop52
	i32.const	$push51=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop16, $pop15, $pop51
	i32.const	$push17=, -16
	i32.and 	$push18=, $1, $pop17
	i32.const	$push19=, 16
	i32.ne  	$push20=, $pop18, $pop19
	i32.const	$push50=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop20, $pop50
	i32.const	$push49=, 16
	i32.add 	$push48=, $11, $pop49
	tee_local	$push47=, $8=, $pop48
	i32.const	$push46=, 16
	i32.add 	$push21=, $9, $pop46
	i32.const	$push45=, 16
	i32.call	$drop=, memcpy@FUNCTION, $pop47, $pop21, $pop45
	block   	
	i32.const	$push22=, 513
	i32.lt_u	$push23=, $1, $pop22
	br_if   	0, $pop23
	call    	free@FUNCTION, $9
.LBB46_8:
	end_block
	i32.const	$push24=, 1
	i32.shr_s	$push25=, $2, $pop24
	i32.add 	$1=, $0, $pop25
	i64.load	$6=, 0($7)
	i64.load	$5=, 0($8)
	i64.load	$4=, 8($11)
	i64.load	$3=, 0($11)
	block   	
	i32.const	$push61=, 1
	i32.and 	$push26=, $2, $pop61
	i32.eqz 	$push63=, $pop26
	br_if   	0, $pop63
	i32.load	$push27=, 0($1)
	i32.add 	$push28=, $pop27, $10
	i32.load	$10=, 0($pop28)
.LBB46_10:
	end_block
	call_indirect	$1, $3, $4, $5, $6, $10
	i32.const	$push37=, 0
	i32.const	$push35=, 32
	i32.add 	$push36=, $11, $pop35
	i32.store	__stack_pointer($pop37), $pop36
	i32.const	$push29=, 1
	.endfunc
.Lfunc_end46:
	.size	_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E, .Lfunc_end46-_ZN5eosio14execute_actionIN16secrataContainer9containerES2_JyyoEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i64, i64, i64, i32, i32
	i32.const	$push20=, 0
	i32.const	$push17=, 0
	i32.load	$push18=, __stack_pointer($pop17)
	i32.const	$push19=, 32
	i32.sub 	$push34=, $pop18, $pop19
	tee_local	$push33=, $7=, $pop34
	i32.store	__stack_pointer($pop20), $pop33
	i32.const	$push0=, 24
	i32.add 	$push1=, $1, $pop0
	i64.load	$5=, 0($pop1)
	i64.load	$4=, 16($1)
	i64.load	$3=, 8($1)
	i64.load	$2=, 0($1)
	i32.const	$push2=, 32
	i32.add 	$push3=, $1, $pop2
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $7, $pop3
	i32.load	$push6=, 0($0)
	i32.load	$push7=, 0($pop6)
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.load	$push30=, 4($pop31)
	tee_local	$push29=, $6=, $pop30
	i32.const	$push4=, 1
	i32.shr_s	$push5=, $pop29, $pop4
	i32.add 	$0=, $pop7, $pop5
	i32.load	$1=, 0($1)
	block   	
	i32.const	$push28=, 1
	i32.and 	$push8=, $6, $pop28
	i32.eqz 	$push37=, $pop8
	br_if   	0, $pop37
	i32.load	$push9=, 0($0)
	i32.add 	$push10=, $pop9, $1
	i32.load	$1=, 0($pop10)
.LBB47_2:
	end_block
	i32.const	$push24=, 16
	i32.add 	$push25=, $7, $pop24
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop25, $7
	i32.const	$push26=, 16
	i32.add 	$push27=, $7, $pop26
	call_indirect	$0, $2, $3, $4, $5, $pop27, $1
	block   	
	i32.load8_u	$push11=, 16($7)
	i32.const	$push35=, 1
	i32.and 	$push12=, $pop11, $pop35
	i32.eqz 	$push38=, $pop12
	br_if   	0, $pop38
	i32.load	$push13=, 24($7)
	call    	_ZdlPv@FUNCTION, $pop13
.LBB47_4:
	end_block
	block   	
	i32.load8_u	$push14=, 0($7)
	i32.const	$push36=, 1
	i32.and 	$push15=, $pop14, $pop36
	i32.eqz 	$push39=, $pop15
	br_if   	0, $pop39
	i32.load	$push16=, 8($7)
	call    	_ZdlPv@FUNCTION, $pop16
.LBB47_6:
	end_block
	i32.const	$push23=, 0
	i32.const	$push21=, 32
	i32.add 	$push22=, $7, $pop21
	i32.store	__stack_pointer($pop23), $pop22
	.endfunc
.Lfunc_end47:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end47-_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyyoSD_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i64, i64, i32, i32
	i32.const	$push20=, 0
	i32.const	$push17=, 0
	i32.load	$push18=, __stack_pointer($pop17)
	i32.const	$push19=, 32
	i32.sub 	$push34=, $pop18, $pop19
	tee_local	$push33=, $6=, $pop34
	i32.store	__stack_pointer($pop20), $pop33
	i32.const	$push0=, 24
	i32.add 	$push1=, $1, $pop0
	i64.load	$4=, 0($pop1)
	i64.load	$3=, 16($1)
	i64.load	$2=, 0($1)
	i32.const	$push2=, 32
	i32.add 	$push3=, $1, $pop2
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $6, $pop3
	i32.load	$push6=, 0($0)
	i32.load	$push7=, 0($pop6)
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.load	$push30=, 4($pop31)
	tee_local	$push29=, $5=, $pop30
	i32.const	$push4=, 1
	i32.shr_s	$push5=, $pop29, $pop4
	i32.add 	$0=, $pop7, $pop5
	i32.load	$1=, 0($1)
	block   	
	i32.const	$push28=, 1
	i32.and 	$push8=, $5, $pop28
	i32.eqz 	$push37=, $pop8
	br_if   	0, $pop37
	i32.load	$push9=, 0($0)
	i32.add 	$push10=, $pop9, $1
	i32.load	$1=, 0($pop10)
.LBB48_2:
	end_block
	i32.const	$push24=, 16
	i32.add 	$push25=, $6, $pop24
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop25, $6
	i32.const	$push26=, 16
	i32.add 	$push27=, $6, $pop26
	call_indirect	$0, $2, $3, $4, $pop27, $1
	block   	
	i32.load8_u	$push11=, 16($6)
	i32.const	$push35=, 1
	i32.and 	$push12=, $pop11, $pop35
	i32.eqz 	$push38=, $pop12
	br_if   	0, $pop38
	i32.load	$push13=, 24($6)
	call    	_ZdlPv@FUNCTION, $pop13
.LBB48_4:
	end_block
	block   	
	i32.load8_u	$push14=, 0($6)
	i32.const	$push36=, 1
	i32.and 	$push15=, $pop14, $pop36
	i32.eqz 	$push39=, $pop15
	br_if   	0, $pop39
	i32.load	$push16=, 8($6)
	call    	_ZdlPv@FUNCTION, $pop16
.LBB48_6:
	end_block
	i32.const	$push23=, 0
	i32.const	$push21=, 32
	i32.add 	$push22=, $6, $pop21
	i32.store	__stack_pointer($pop23), $pop22
	.endfunc
.Lfunc_end48:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end48-_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i64, i64, i32
	i32.const	$push21=, 0
	i32.const	$push18=, 0
	i32.load	$push19=, __stack_pointer($pop18)
	i32.const	$push20=, 48
	i32.sub 	$push35=, $pop19, $pop20
	tee_local	$push34=, $5=, $pop35
	i32.store	__stack_pointer($pop21), $pop34
	i32.const	$push0=, 24
	i32.add 	$push1=, $1, $pop0
	i64.load	$2=, 0($pop1)
	i64.load	$3=, 16($1)
	i64.load	$4=, 0($1)
	i32.const	$push25=, 32
	i32.add 	$push26=, $5, $pop25
	i32.const	$push2=, 32
	i32.add 	$push3=, $1, $pop2
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop26, $pop3
	i32.const	$push27=, 16
	i32.add 	$push28=, $5, $pop27
	i32.const	$push4=, 44
	i32.add 	$push5=, $1, $pop4
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop28, $pop5
	i32.const	$push6=, 56
	i32.add 	$push7=, $1, $pop6
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $5, $pop7
	i32.const	$push29=, 32
	i32.add 	$push30=, $5, $pop29
	i32.const	$push31=, 16
	i32.add 	$push32=, $5, $pop31
	call    	_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_@FUNCTION, $0, $4, $3, $2, $pop30, $pop32, $5
	block   	
	i32.load8_u	$push8=, 0($5)
	i32.const	$push33=, 1
	i32.and 	$push9=, $pop8, $pop33
	i32.eqz 	$push37=, $pop9
	br_if   	0, $pop37
	i32.load	$push10=, 8($5)
	call    	_ZdlPv@FUNCTION, $pop10
.LBB49_2:
	end_block
	block   	
	i32.load8_u	$push11=, 16($5)
	i32.const	$push36=, 1
	i32.and 	$push12=, $pop11, $pop36
	i32.eqz 	$push38=, $pop12
	br_if   	0, $pop38
	i32.load	$push13=, 24($5)
	call    	_ZdlPv@FUNCTION, $pop13
.LBB49_4:
	end_block
	block   	
	i32.load8_u	$push15=, 32($5)
	i32.const	$push14=, 1
	i32.and 	$push16=, $pop15, $pop14
	i32.eqz 	$push39=, $pop16
	br_if   	0, $pop39
	i32.load	$push17=, 40($5)
	call    	_ZdlPv@FUNCTION, $pop17
.LBB49_6:
	end_block
	i32.const	$push24=, 0
	i32.const	$push22=, 48
	i32.add 	$push23=, $5, $pop22
	i32.store	__stack_pointer($pop24), $pop23
	.endfunc
.Lfunc_end49:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end49-_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN16secrataContainer9containerES6_JyoNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJyoSD_SD_SD_EEEJLj0ELj1ELj2ELj3ELj4EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE

	.section	.text._ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_,"axG",@progbits,_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_,comdat
	.hidden	_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_
	.weak	_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_
	.type	_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_,@function
_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_:
	.param  	i32, i64, i64, i64, i32, i32, i32
	.local  	i32, i32, i32
	i32.const	$push20=, 0
	i32.const	$push17=, 0
	i32.load	$push18=, __stack_pointer($pop17)
	i32.const	$push19=, 48
	i32.sub 	$push38=, $pop18, $pop19
	tee_local	$push37=, $9=, $pop38
	i32.store	__stack_pointer($pop20), $pop37
	i32.load	$push2=, 0($0)
	i32.load	$push3=, 0($pop2)
	i32.load	$push36=, 4($0)
	tee_local	$push35=, $0=, $pop36
	i32.load	$push34=, 4($pop35)
	tee_local	$push33=, $8=, $pop34
	i32.const	$push0=, 1
	i32.shr_s	$push1=, $pop33, $pop0
	i32.add 	$7=, $pop3, $pop1
	i32.load	$0=, 0($0)
	block   	
	i32.const	$push32=, 1
	i32.and 	$push4=, $8, $pop32
	i32.eqz 	$push41=, $pop4
	br_if   	0, $pop41
	i32.load	$push5=, 0($7)
	i32.add 	$push6=, $pop5, $0
	i32.load	$0=, 0($pop6)
.LBB50_2:
	end_block
	i32.const	$push24=, 32
	i32.add 	$push25=, $9, $pop24
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop25, $4
	i32.const	$push26=, 16
	i32.add 	$push27=, $9, $pop26
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop27, $5
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $9, $6
	i32.const	$push28=, 32
	i32.add 	$push29=, $9, $pop28
	i32.const	$push30=, 16
	i32.add 	$push31=, $9, $pop30
	call_indirect	$7, $1, $2, $3, $pop29, $pop31, $9, $0
	block   	
	i32.load8_u	$push7=, 0($9)
	i32.const	$push39=, 1
	i32.and 	$push8=, $pop7, $pop39
	i32.eqz 	$push42=, $pop8
	br_if   	0, $pop42
	i32.load	$push9=, 8($9)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB50_4:
	end_block
	block   	
	i32.load8_u	$push10=, 16($9)
	i32.const	$push40=, 1
	i32.and 	$push11=, $pop10, $pop40
	i32.eqz 	$push43=, $pop11
	br_if   	0, $pop43
	i32.load	$push12=, 24($9)
	call    	_ZdlPv@FUNCTION, $pop12
.LBB50_6:
	end_block
	block   	
	i32.load8_u	$push14=, 32($9)
	i32.const	$push13=, 1
	i32.and 	$push15=, $pop14, $pop13
	i32.eqz 	$push44=, $pop15
	br_if   	0, $pop44
	i32.load	$push16=, 40($9)
	call    	_ZdlPv@FUNCTION, $pop16
.LBB50_8:
	end_block
	i32.const	$push23=, 0
	i32.const	$push21=, 48
	i32.add 	$push22=, $9, $pop21
	i32.store	__stack_pointer($pop23), $pop22
	.endfunc
.Lfunc_end50:
	.size	_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_, .Lfunc_end50-_ZZN5eosio14execute_actionIN16secrataContainer9containerES2_JyoNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJyoS9_S9_S9_EEEDaSI_

	.text
	.weak	_Znwj
	.type	_Znwj,@function
_Znwj:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	block   	
	i32.const	$push0=, 1
	i32.select	$push4=, $0, $pop0, $0
	tee_local	$push3=, $1=, $pop4
	i32.call	$push2=, malloc@FUNCTION, $pop3
	tee_local	$push1=, $0=, $pop2
	br_if   	0, $pop1
.LBB51_1:
	loop    	
	i32.const	$0=, 0
	i32.const	$push9=, 0
	i32.load	$push8=, _ZStL13__new_handler($pop9)
	tee_local	$push7=, $2=, $pop8
	i32.eqz 	$push10=, $pop7
	br_if   	1, $pop10
	call_indirect	$2
	i32.call	$push6=, malloc@FUNCTION, $1
	tee_local	$push5=, $0=, $pop6
	i32.eqz 	$push11=, $pop5
	br_if   	0, $pop11
.LBB51_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end51:
	.size	_Znwj, .Lfunc_end51-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB52_2:
	end_block
	.endfunc
.Lfunc_end52:
	.size	_ZdlPv, .Lfunc_end52-_ZdlPv

	.section	.text._ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end53:
	.size	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end53-_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	i32.eq  	$push0=, $0, $1
	br_if   	0, $pop0
	i32.load	$push2=, 4($1)
	i32.load8_u	$push28=, 0($1)
	tee_local	$push27=, $2=, $pop28
	i32.const	$push26=, 1
	i32.shr_u	$push1=, $pop27, $pop26
	i32.const	$push25=, 1
	i32.and 	$push24=, $2, $pop25
	tee_local	$push23=, $4=, $pop24
	i32.select	$2=, $pop2, $pop1, $pop23
	i32.const	$push22=, 1
	i32.add 	$5=, $1, $pop22
	i32.load	$6=, 8($1)
	i32.const	$1=, 10
	block   	
	i32.load8_u	$push21=, 0($0)
	tee_local	$push20=, $3=, $pop21
	i32.const	$push19=, 1
	i32.and 	$push3=, $pop20, $pop19
	i32.eqz 	$push34=, $pop3
	br_if   	0, $pop34
	i32.load	$push30=, 0($0)
	tee_local	$push29=, $3=, $pop30
	i32.const	$push4=, -2
	i32.and 	$push5=, $pop29, $pop4
	i32.const	$push6=, -1
	i32.add 	$1=, $pop5, $pop6
.LBB54_3:
	end_block
	i32.select	$5=, $6, $5, $4
	i32.const	$push31=, 1
	i32.and 	$4=, $3, $pop31
	block   	
	block   	
	block   	
	i32.le_u	$push7=, $2, $1
	br_if   	0, $pop7
	br_if   	1, $4
	i32.const	$push14=, 254
	i32.and 	$push15=, $3, $pop14
	i32.const	$push16=, 1
	i32.shr_u	$3=, $pop15, $pop16
	br      	2
.LBB54_6:
	end_block
	br_if   	3, $4
	i32.const	$push8=, 1
	i32.add 	$1=, $0, $pop8
	br_if   	4, $2
	br      	5
.LBB54_8:
	end_block
	i32.load	$3=, 4($0)
.LBB54_9:
	end_block
	i32.sub 	$push17=, $2, $1
	i32.const	$push18=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc@FUNCTION, $0, $1, $pop17, $3, $pop18, $3, $2, $5
.LBB54_10:
	end_block
	return  	$0
.LBB54_11:
	end_block
	i32.load	$1=, 8($0)
	i32.eqz 	$push35=, $2
	br_if   	1, $pop35
.LBB54_12:
	end_block
	i32.call	$drop=, memmove@FUNCTION, $1, $5, $2
.LBB54_13:
	end_block
	i32.add 	$push9=, $1, $2
	i32.const	$push10=, 0
	i32.store8	0($pop9), $pop10
	block   	
	i32.load8_u	$push11=, 0($0)
	i32.const	$push32=, 1
	i32.and 	$push12=, $pop11, $pop32
	br_if   	0, $pop12
	i32.const	$push33=, 1
	i32.shl 	$push13=, $2, $pop33
	i32.store8	0($0), $pop13
	return  	$0
.LBB54_15:
	end_block
	i32.store	4($0), $2
	copy_local	$push36=, $0
	.endfunc
.Lfunc_end54:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_, .Lfunc_end54-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc:
	.param  	i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32
	block   	
	i32.const	$push0=, -18
	i32.sub 	$push1=, $pop0, $1
	i32.lt_u	$push2=, $pop1, $2
	br_if   	0, $pop2
	block   	
	block   	
	i32.load8_u	$push3=, 0($0)
	i32.const	$push24=, 1
	i32.and 	$push4=, $pop3, $pop24
	br_if   	0, $pop4
	i32.const	$push25=, 1
	i32.add 	$9=, $0, $pop25
	br      	1
.LBB55_3:
	end_block
	i32.load	$9=, 8($0)
.LBB55_4:
	end_block
	i32.const	$10=, -17
	block   	
	i32.const	$push5=, 2147483622
	i32.gt_u	$push6=, $1, $pop5
	br_if   	0, $pop6
	i32.const	$10=, 11
	i32.const	$push7=, 1
	i32.shl 	$push32=, $1, $pop7
	tee_local	$push31=, $8=, $pop32
	i32.add 	$push30=, $2, $1
	tee_local	$push29=, $2=, $pop30
	i32.lt_u	$push8=, $2, $8
	i32.select	$push28=, $pop31, $pop29, $pop8
	tee_local	$push27=, $2=, $pop28
	i32.const	$push26=, 11
	i32.lt_u	$push9=, $pop27, $pop26
	br_if   	0, $pop9
	i32.const	$push10=, 16
	i32.add 	$push11=, $2, $pop10
	i32.const	$push12=, -16
	i32.and 	$10=, $pop11, $pop12
.LBB55_7:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $10
	block   	
	i32.eqz 	$push39=, $4
	br_if   	0, $pop39
	i32.call	$drop=, memcpy@FUNCTION, $2, $9, $4
.LBB55_9:
	end_block
	block   	
	i32.eqz 	$push40=, $6
	br_if   	0, $pop40
	i32.add 	$push13=, $2, $4
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $7, $6
.LBB55_11:
	end_block
	block   	
	i32.sub 	$push36=, $3, $5
	tee_local	$push35=, $3=, $pop36
	i32.sub 	$push34=, $pop35, $4
	tee_local	$push33=, $7=, $pop34
	i32.eqz 	$push41=, $pop33
	br_if   	0, $pop41
	i32.add 	$push16=, $2, $4
	i32.add 	$push17=, $pop16, $6
	i32.add 	$push14=, $9, $4
	i32.add 	$push15=, $pop14, $5
	i32.call	$drop=, memcpy@FUNCTION, $pop17, $pop15, $7
.LBB55_13:
	end_block
	block   	
	i32.const	$push18=, 10
	i32.eq  	$push19=, $1, $pop18
	br_if   	0, $pop19
	call    	_ZdlPv@FUNCTION, $9
.LBB55_15:
	end_block
	i32.store	8($0), $2
	i32.const	$push20=, 1
	i32.or  	$push21=, $10, $pop20
	i32.store	0($0), $pop21
	i32.add 	$push38=, $3, $6
	tee_local	$push37=, $4=, $pop38
	i32.store	4($0), $pop37
	i32.add 	$push22=, $2, $4
	i32.const	$push23=, 0
	i32.store8	0($pop22), $pop23
	return
.LBB55_16:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end55:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc, .Lfunc_end55-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, -16
	i32.ge_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.const	$2=, 10
	block   	
	i32.load8_u	$push35=, 0($0)
	tee_local	$push34=, $5=, $pop35
	i32.const	$push33=, 1
	i32.and 	$push2=, $pop34, $pop33
	i32.eqz 	$push52=, $pop2
	br_if   	0, $pop52
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $5=, $pop37
	i32.const	$push3=, -2
	i32.and 	$push4=, $pop36, $pop3
	i32.const	$push5=, -1
	i32.add 	$2=, $pop4, $pop5
.LBB56_3:
	end_block
	block   	
	block   	
	i32.const	$push38=, 1
	i32.and 	$push6=, $5, $pop38
	br_if   	0, $pop6
	i32.const	$push7=, 254
	i32.and 	$push8=, $5, $pop7
	i32.const	$push9=, 1
	i32.shr_u	$3=, $pop8, $pop9
	br      	1
.LBB56_5:
	end_block
	i32.load	$3=, 4($0)
.LBB56_6:
	end_block
	i32.const	$4=, 10
	block   	
	i32.gt_u	$push10=, $3, $1
	i32.select	$push40=, $3, $1, $pop10
	tee_local	$push39=, $1=, $pop40
	i32.const	$push11=, 11
	i32.lt_u	$push12=, $pop39, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push15=, -16
	i32.and 	$push16=, $pop14, $pop15
	i32.const	$push17=, -1
	i32.add 	$4=, $pop16, $pop17
.LBB56_8:
	end_block
	block   	
	i32.eq  	$push18=, $4, $2
	br_if   	0, $pop18
	block   	
	block   	
	i32.const	$push19=, 10
	i32.ne  	$push20=, $4, $pop19
	br_if   	0, $pop20
	i32.const	$6=, 1
	i32.const	$push41=, 1
	i32.add 	$1=, $0, $pop41
	i32.load	$2=, 8($0)
	i32.const	$7=, 0
	br      	1
.LBB56_11:
	end_block
	i32.const	$push42=, 1
	i32.add 	$push22=, $4, $pop42
	i32.call	$1=, _Znwj@FUNCTION, $pop22
	block   	
	i32.gt_u	$push21=, $4, $2
	br_if   	0, $pop21
	i32.eqz 	$push53=, $1
	br_if   	2, $pop53
.LBB56_13:
	end_block
	block   	
	i32.load8_u	$push45=, 0($0)
	tee_local	$push44=, $5=, $pop45
	i32.const	$push43=, 1
	i32.and 	$push23=, $pop44, $pop43
	br_if   	0, $pop23
	i32.const	$7=, 1
	i32.const	$push46=, 1
	i32.add 	$2=, $0, $pop46
	i32.const	$6=, 0
	br      	1
.LBB56_15:
	end_block
	i32.load	$2=, 8($0)
	i32.const	$6=, 1
	i32.const	$7=, 1
.LBB56_16:
	end_block
	block   	
	block   	
	i32.const	$push47=, 1
	i32.and 	$push24=, $5, $pop47
	br_if   	0, $pop24
	i32.const	$push25=, 254
	i32.and 	$push26=, $5, $pop25
	i32.const	$push48=, 1
	i32.shr_u	$5=, $pop26, $pop48
	br      	1
.LBB56_18:
	end_block
	i32.load	$5=, 4($0)
.LBB56_19:
	end_block
	block   	
	i32.const	$push27=, 1
	i32.add 	$push50=, $5, $pop27
	tee_local	$push49=, $5=, $pop50
	i32.eqz 	$push54=, $pop49
	br_if   	0, $pop54
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $5
.LBB56_21:
	end_block
	block   	
	i32.eqz 	$push55=, $6
	br_if   	0, $pop55
	call    	_ZdlPv@FUNCTION, $2
.LBB56_23:
	end_block
	block   	
	i32.eqz 	$push56=, $7
	br_if   	0, $pop56
	i32.store	4($0), $3
	i32.store	8($0), $1
	i32.const	$push30=, 1
	i32.add 	$push31=, $4, $pop30
	i32.const	$push51=, 1
	i32.or  	$push32=, $pop31, $pop51
	i32.store	0($0), $pop32
	return
.LBB56_25:
	end_block
	i32.const	$push28=, 1
	i32.shl 	$push29=, $3, $pop28
	i32.store8	0($0), $pop29
.LBB56_26:
	end_block
	return
.LBB56_27:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end56:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj, .Lfunc_end56-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
	i32.call	$2=, strlen@FUNCTION, $1
	i32.const	$5=, 10
	block   	
	i32.load8_u	$push18=, 0($0)
	tee_local	$push17=, $3=, $pop18
	i32.const	$push16=, 1
	i32.and 	$push0=, $pop17, $pop16
	i32.eqz 	$push24=, $pop0
	br_if   	0, $pop24
	i32.load	$push20=, 0($0)
	tee_local	$push19=, $3=, $pop20
	i32.const	$push1=, -2
	i32.and 	$push2=, $pop19, $pop1
	i32.const	$push3=, -1
	i32.add 	$5=, $pop2, $pop3
.LBB57_2:
	end_block
	i32.const	$push21=, 1
	i32.and 	$4=, $3, $pop21
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.le_u	$push4=, $2, $5
	br_if   	0, $pop4
	br_if   	1, $4
	i32.const	$push11=, 254
	i32.and 	$push12=, $3, $pop11
	i32.const	$push13=, 1
	i32.shr_u	$3=, $pop12, $pop13
	br      	2
.LBB57_5:
	end_block
	br_if   	2, $4
	i32.const	$push5=, 1
	i32.add 	$5=, $0, $pop5
	br_if   	3, $2
	br      	4
.LBB57_7:
	end_block
	i32.load	$3=, 4($0)
.LBB57_8:
	end_block
	i32.sub 	$push14=, $2, $5
	i32.const	$push15=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc@FUNCTION, $0, $5, $pop14, $3, $pop15, $3, $2, $1
	return  	$0
.LBB57_9:
	end_block
	i32.load	$5=, 8($0)
	i32.eqz 	$push25=, $2
	br_if   	1, $pop25
.LBB57_10:
	end_block
	i32.call	$drop=, memmove@FUNCTION, $5, $1, $2
.LBB57_11:
	end_block
	i32.add 	$push6=, $5, $2
	i32.const	$push7=, 0
	i32.store8	0($pop6), $pop7
	block   	
	i32.load8_u	$push8=, 0($0)
	i32.const	$push22=, 1
	i32.and 	$push9=, $pop8, $pop22
	br_if   	0, $pop9
	i32.const	$push23=, 1
	i32.shl 	$push10=, $2, $pop23
	i32.store8	0($0), $pop10
	return  	$0
.LBB57_13:
	end_block
	i32.store	4($0), $2
	copy_local	$push26=, $0
	.endfunc
.Lfunc_end57:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc, .Lfunc_end57-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end58:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end58-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC5ERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push23=, 8
	i32.add 	$push22=, $0, $pop23
	tee_local	$push21=, $3=, $pop22
	i32.const	$push1=, 0
	i32.store	0($pop21), $pop1
	block   	
	i32.load8_u	$push2=, 0($1)
	i32.const	$push3=, 1
	i32.and 	$push4=, $pop2, $pop3
	br_if   	0, $pop4
	i64.load	$push18=, 0($1):p2align=2
	i64.store	0($0):p2align=2, $pop18
	i32.const	$push24=, 8
	i32.add 	$push19=, $1, $pop24
	i32.load	$push20=, 0($pop19)
	i32.store	0($3), $pop20
	return  	$0
.LBB59_2:
	end_block
	block   	
	i32.load	$push26=, 4($1)
	tee_local	$push25=, $3=, $pop26
	i32.const	$push5=, -16
	i32.ge_u	$push6=, $pop25, $pop5
	br_if   	0, $pop6
	i32.load	$2=, 8($1)
	block   	
	block   	
	block   	
	i32.const	$push7=, 11
	i32.ge_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	i32.const	$push14=, 1
	i32.shl 	$push15=, $3, $pop14
	i32.store8	0($0), $pop15
	i32.const	$push27=, 1
	i32.add 	$1=, $0, $pop27
	br_if   	1, $3
	br      	2
.LBB59_5:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push10=, $3, $pop9
	i32.const	$push11=, -16
	i32.and 	$push29=, $pop10, $pop11
	tee_local	$push28=, $4=, $pop29
	i32.call	$1=, _Znwj@FUNCTION, $pop28
	i32.const	$push12=, 1
	i32.or  	$push13=, $4, $pop12
	i32.store	0($0), $pop13
	i32.store	8($0), $1
	i32.store	4($0), $3
.LBB59_6:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $3
.LBB59_7:
	end_block
	i32.add 	$push16=, $1, $3
	i32.const	$push17=, 0
	i32.store8	0($pop16), $pop17
	return  	$0
.LBB59_8:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end59:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_, .Lfunc_end59-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_

	.text
	.hidden	memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$5=, 0
	block   	
	i32.eqz 	$push10=, $2
	br_if   	0, $pop10
.LBB60_2:
	block   	
	loop    	
	i32.load8_u	$push4=, 0($0)
	tee_local	$push3=, $3=, $pop4
	i32.load8_u	$push2=, 0($1)
	tee_local	$push1=, $4=, $pop2
	i32.ne  	$push0=, $pop3, $pop1
	br_if   	1, $pop0
	i32.const	$push9=, 1
	i32.add 	$1=, $1, $pop9
	i32.const	$push8=, 1
	i32.add 	$0=, $0, $pop8
	i32.const	$push7=, -1
	i32.add 	$push6=, $2, $pop7
	tee_local	$push5=, $2=, $pop6
	br_if   	0, $pop5
	br      	2
.LBB60_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB60_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end60:
	.size	memcmp, .Lfunc_end60-memcmp

	.hidden	strlen
	.globl	strlen
	.type	strlen,@function
strlen:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	copy_local	$2=, $0
	block   	
	block   	
	i32.const	$push12=, 3
	i32.and 	$push0=, $0, $pop12
	i32.eqz 	$push28=, $pop0
	br_if   	0, $pop28
	copy_local	$2=, $0
.LBB61_2:
	loop    	
	i32.load8_u	$push1=, 0($2)
	i32.eqz 	$push29=, $pop1
	br_if   	2, $pop29
	i32.const	$push16=, 1
	i32.add 	$push15=, $2, $pop16
	tee_local	$push14=, $2=, $pop15
	i32.const	$push13=, 3
	i32.and 	$push2=, $pop14, $pop13
	br_if   	0, $pop2
.LBB61_4:
	end_loop
	end_block
	i32.const	$push3=, -4
	i32.add 	$2=, $2, $pop3
.LBB61_5:
	loop    	
	i32.const	$push24=, 4
	i32.add 	$push23=, $2, $pop24
	tee_local	$push22=, $2=, $pop23
	i32.load	$push21=, 0($pop22)
	tee_local	$push20=, $1=, $pop21
	i32.const	$push19=, -1
	i32.xor 	$push5=, $pop20, $pop19
	i32.const	$push18=, -16843009
	i32.add 	$push4=, $1, $pop18
	i32.and 	$push6=, $pop5, $pop4
	i32.const	$push17=, -2139062144
	i32.and 	$push7=, $pop6, $pop17
	i32.eqz 	$push30=, $pop7
	br_if   	0, $pop30
	end_loop
	i32.const	$push8=, 255
	i32.and 	$push9=, $1, $pop8
	i32.eqz 	$push31=, $pop9
	br_if   	0, $pop31
.LBB61_8:
	loop    	
	i32.const	$push27=, 1
	i32.add 	$push26=, $2, $pop27
	tee_local	$push25=, $2=, $pop26
	i32.load8_u	$push10=, 0($pop25)
	br_if   	0, $pop10
.LBB61_9:
	end_loop
	end_block
	i32.sub 	$push11=, $2, $0
	.endfunc
.Lfunc_end61:
	.size	strlen, .Lfunc_end61-strlen

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end62:
	.size	malloc, .Lfunc_end62-malloc

	.section	.text._ZN5eosio14memory_manager6mallocEm,"axG",@progbits,_ZN5eosio14memory_manager6mallocEm,comdat
	.hidden	_ZN5eosio14memory_manager6mallocEm
	.weak	_ZN5eosio14memory_manager6mallocEm
	.type	_ZN5eosio14memory_manager6mallocEm,@function
_ZN5eosio14memory_manager6mallocEm:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.eqz 	$push128=, $1
	br_if   	0, $pop128
	block   	
	i32.load	$push63=, 8384($0)
	tee_local	$push62=, $13=, $pop63
	br_if   	0, $pop62
	i32.const	$13=, 16
	i32.const	$push0=, 8384
	i32.add 	$push1=, $0, $pop0
	i32.const	$push64=, 16
	i32.store	0($pop1), $pop64
.LBB63_3:
	end_block
	i32.const	$push2=, 8
	i32.add 	$push3=, $1, $pop2
	i32.const	$push69=, 4
	i32.add 	$push4=, $1, $pop69
	i32.const	$push5=, 7
	i32.and 	$push68=, $pop4, $pop5
	tee_local	$push67=, $2=, $pop68
	i32.sub 	$push6=, $pop3, $pop67
	i32.select	$2=, $pop6, $1, $2
	block   	
	block   	
	block   	
	i32.load	$push66=, 8388($0)
	tee_local	$push65=, $10=, $pop66
	i32.ge_u	$push7=, $pop65, $13
	br_if   	0, $pop7
	i32.const	$push8=, 12
	i32.mul 	$push9=, $10, $pop8
	i32.add 	$push10=, $0, $pop9
	i32.const	$push11=, 8192
	i32.add 	$1=, $pop10, $pop11
	block   	
	br_if   	0, $10
	i32.const	$push12=, 8196
	i32.add 	$push71=, $0, $pop12
	tee_local	$push70=, $13=, $pop71
	i32.load	$push13=, 0($pop70)
	br_if   	0, $pop13
	i32.const	$push14=, 8192
	i32.store	0($1), $pop14
	i32.store	0($13), $0
.LBB63_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB63_8:
	loop    	
	block   	
	i32.load	$push74=, 8($1)
	tee_local	$push73=, $13=, $pop74
	i32.add 	$push15=, $pop73, $10
	i32.load	$push16=, 0($1)
	i32.gt_u	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.load	$push18=, 4($1)
	i32.add 	$push84=, $pop18, $13
	tee_local	$push83=, $13=, $pop84
	i32.load	$push19=, 0($13)
	i32.const	$push82=, -2147483648
	i32.and 	$push20=, $pop19, $pop82
	i32.or  	$push21=, $pop20, $2
	i32.store	0($pop83), $pop21
	i32.const	$push81=, 8
	i32.add 	$push80=, $1, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $10
	i32.store	0($pop79), $pop23
	i32.load	$push24=, 0($13)
	i32.const	$push78=, -2147483648
	i32.or  	$push25=, $pop24, $pop78
	i32.store	0($13), $pop25
	i32.const	$push77=, 4
	i32.add 	$push76=, $13, $pop77
	tee_local	$push75=, $1=, $pop76
	br_if   	3, $pop75
.LBB63_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB63_11:
	end_loop
	end_block
	i32.const	$push26=, 2147483644
	i32.sub 	$4=, $pop26, $2
	i32.const	$push55=, 8392
	i32.add 	$11=, $0, $pop55
	i32.const	$push57=, 8384
	i32.add 	$12=, $0, $pop57
	i32.load	$push88=, 8392($0)
	tee_local	$push87=, $3=, $pop88
	copy_local	$13=, $pop87
.LBB63_12:
	loop    	
	i32.const	$push100=, 12
	i32.mul 	$push27=, $13, $pop100
	i32.add 	$push99=, $0, $pop27
	tee_local	$push98=, $1=, $pop99
	i32.const	$push97=, 8200
	i32.add 	$push29=, $pop98, $pop97
	i32.load	$push30=, 0($pop29)
	i32.const	$push96=, 8192
	i32.add 	$push95=, $1, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.load	$push28=, 0($pop94)
	i32.eq  	$push31=, $pop30, $pop28
	i32.const	$push93=, .L.str.1.23
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB63_13:
	loop    	
	i32.load	$push33=, 0($5)
	i32.add 	$7=, $6, $pop33
	i32.const	$push107=, -4
	i32.add 	$push106=, $13, $pop107
	tee_local	$push105=, $8=, $pop106
	i32.load	$push104=, 0($pop105)
	tee_local	$push103=, $9=, $pop104
	i32.const	$push102=, 2147483647
	i32.and 	$1=, $pop103, $pop102
	block   	
	i32.const	$push101=, 0
	i32.lt_s	$push34=, $9, $pop101
	br_if   	0, $pop34
	block   	
	i32.ge_u	$push35=, $1, $2
	br_if   	0, $pop35
.LBB63_15:
	loop    	
	i32.add 	$push109=, $13, $1
	tee_local	$push108=, $10=, $pop109
	i32.ge_u	$push36=, $pop108, $7
	br_if   	1, $pop36
	i32.load	$push112=, 0($10)
	tee_local	$push111=, $10=, $pop112
	i32.const	$push110=, 0
	i32.lt_s	$push37=, $pop111, $pop110
	br_if   	1, $pop37
	i32.const	$push116=, 2147483647
	i32.and 	$push38=, $10, $pop116
	i32.add 	$push39=, $1, $pop38
	i32.const	$push115=, 4
	i32.add 	$push114=, $pop39, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.lt_u	$push40=, $pop113, $2
	br_if   	0, $pop40
.LBB63_18:
	end_loop
	end_block
	i32.lt_u	$push41=, $1, $2
	i32.select	$push42=, $1, $2, $pop41
	i32.const	$push117=, -2147483648
	i32.and 	$push43=, $9, $pop117
	i32.or  	$push44=, $pop42, $pop43
	i32.store	0($8), $pop44
	block   	
	i32.le_u	$push45=, $1, $2
	br_if   	0, $pop45
	i32.add 	$push46=, $13, $2
	i32.add 	$push47=, $4, $1
	i32.const	$push118=, 2147483647
	i32.and 	$push48=, $pop47, $pop118
	i32.store	0($pop46), $pop48
.LBB63_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB63_21:
	end_block
	i32.add 	$push53=, $13, $1
	i32.const	$push121=, 4
	i32.add 	$push120=, $pop53, $pop121
	tee_local	$push119=, $13=, $pop120
	i32.lt_u	$push54=, $pop119, $7
	br_if   	0, $pop54
	end_loop
	i32.const	$1=, 0
	i32.const	$push127=, 0
	i32.load	$push56=, 0($11)
	i32.const	$push126=, 1
	i32.add 	$push125=, $pop56, $pop126
	tee_local	$push124=, $13=, $pop125
	i32.load	$push58=, 0($12)
	i32.eq  	$push59=, $13, $pop58
	i32.select	$push123=, $pop127, $pop124, $pop59
	tee_local	$push122=, $13=, $pop123
	i32.store	0($11), $pop122
	i32.ne  	$push60=, $13, $3
	br_if   	0, $pop60
.LBB63_23:
	end_loop
	end_block
	return  	$1
.LBB63_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB63_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end63:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end63-_ZN5eosio14memory_manager6mallocEm

	.section	.text._ZN5eosio14memory_manager16next_active_heapEv,"axG",@progbits,_ZN5eosio14memory_manager16next_active_heapEv,comdat
	.hidden	_ZN5eosio14memory_manager16next_active_heapEv
	.weak	_ZN5eosio14memory_manager16next_active_heapEv
	.type	_ZN5eosio14memory_manager16next_active_heapEv,@function
_ZN5eosio14memory_manager16next_active_heapEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.load	$1=, 8388($0)
	block   	
	block   	
	i32.const	$push94=, 0
	i32.load8_u	$push2=, _ZZ4sbrkjE11initialized($pop94)
	i32.eqz 	$push157=, $pop2
	br_if   	0, $pop157
	i32.const	$push95=, 0
	i32.load	$7=, _ZZ4sbrkjE10sbrk_bytes($pop95)
	br      	1
.LBB64_2:
	end_block
	current_memory	$7=
	i32.const	$push99=, 0
	i32.const	$push3=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop99), $pop3
	i32.const	$push98=, 0
	i32.const	$push4=, 16
	i32.shl 	$push97=, $7, $pop4
	tee_local	$push96=, $7=, $pop97
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop98), $pop96
.LBB64_3:
	end_block
	copy_local	$3=, $7
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 65535
	i32.add 	$push6=, $7, $pop5
	i32.const	$push7=, 16
	i32.shr_u	$push103=, $pop6, $pop7
	tee_local	$push102=, $2=, $pop103
	current_memory	$push101=
	tee_local	$push100=, $8=, $pop101
	i32.le_u	$push8=, $pop102, $pop100
	br_if   	0, $pop8
	i32.sub 	$push9=, $2, $8
	grow_memory	$pop9
	i32.const	$8=, 0
	current_memory	$push10=
	i32.ne  	$push11=, $2, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, 0
	i32.load	$3=, _ZZ4sbrkjE10sbrk_bytes($pop12)
.LBB64_6:
	end_block
	i32.const	$8=, 0
	i32.const	$push105=, 0
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop105), $3
	i32.const	$push104=, 0
	i32.lt_s	$push13=, $7, $pop104
	br_if   	0, $pop13
	i32.const	$push0=, 12
	i32.mul 	$push1=, $1, $pop0
	i32.add 	$2=, $0, $pop1
	i32.const	$push20=, 65536
	i32.const	$push19=, 131072
	i32.const	$push16=, 65535
	i32.and 	$push110=, $7, $pop16
	tee_local	$push109=, $8=, $pop110
	i32.const	$push17=, 64513
	i32.lt_u	$push108=, $pop109, $pop17
	tee_local	$push107=, $6=, $pop108
	i32.select	$push21=, $pop20, $pop19, $pop107
	i32.add 	$push22=, $7, $pop21
	i32.const	$push14=, 131071
	i32.and 	$push15=, $7, $pop14
	i32.select	$push18=, $8, $pop15, $6
	i32.sub 	$push23=, $pop22, $pop18
	i32.sub 	$7=, $pop23, $7
	block   	
	i32.const	$push106=, 0
	i32.load8_u	$push24=, _ZZ4sbrkjE11initialized($pop106)
	br_if   	0, $pop24
	current_memory	$3=
	i32.const	$push114=, 0
	i32.const	$push25=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop114), $pop25
	i32.const	$push113=, 0
	i32.const	$push26=, 16
	i32.shl 	$push112=, $3, $pop26
	tee_local	$push111=, $3=, $pop112
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop113), $pop111
.LBB64_9:
	end_block
	i32.const	$push116=, 8192
	i32.add 	$2=, $2, $pop116
	i32.const	$push115=, 0
	i32.lt_s	$push27=, $7, $pop115
	br_if   	1, $pop27
	copy_local	$6=, $3
	block   	
	i32.const	$push28=, 7
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, -8
	i32.and 	$push122=, $pop29, $pop30
	tee_local	$push121=, $5=, $pop122
	i32.add 	$push31=, $pop121, $3
	i32.const	$push32=, 65535
	i32.add 	$push33=, $pop31, $pop32
	i32.const	$push34=, 16
	i32.shr_u	$push120=, $pop33, $pop34
	tee_local	$push119=, $8=, $pop120
	current_memory	$push118=
	tee_local	$push117=, $4=, $pop118
	i32.le_u	$push35=, $pop119, $pop117
	br_if   	0, $pop35
	i32.sub 	$push36=, $8, $4
	grow_memory	$pop36
	current_memory	$push37=
	i32.ne  	$push38=, $8, $pop37
	br_if   	2, $pop38
	i32.const	$push39=, 0
	i32.load	$6=, _ZZ4sbrkjE10sbrk_bytes($pop39)
.LBB64_13:
	end_block
	i32.const	$push41=, 0
	i32.add 	$push40=, $6, $5
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop41), $pop40
	i32.const	$push42=, -1
	i32.eq  	$push43=, $3, $pop42
	br_if   	1, $pop43
	i32.const	$push44=, 12
	i32.mul 	$push45=, $1, $pop44
	i32.add 	$push128=, $0, $pop45
	tee_local	$push127=, $1=, $pop128
	i32.const	$push46=, 8196
	i32.add 	$push47=, $pop127, $pop46
	i32.load	$push126=, 0($pop47)
	tee_local	$push125=, $6=, $pop126
	i32.load	$push124=, 0($2)
	tee_local	$push123=, $8=, $pop124
	i32.add 	$push48=, $pop125, $pop123
	i32.eq  	$push49=, $pop48, $3
	br_if   	2, $pop49
	block   	
	i32.const	$push50=, 8200
	i32.add 	$push132=, $1, $pop50
	tee_local	$push131=, $5=, $pop132
	i32.load	$push130=, 0($pop131)
	tee_local	$push129=, $1=, $pop130
	i32.eq  	$push51=, $8, $pop129
	br_if   	0, $pop51
	i32.add 	$push134=, $6, $1
	tee_local	$push133=, $6=, $pop134
	i32.load	$push55=, 0($6)
	i32.const	$push56=, -2147483648
	i32.and 	$push57=, $pop55, $pop56
	i32.const	$push52=, -4
	i32.sub 	$push53=, $pop52, $1
	i32.add 	$push54=, $pop53, $8
	i32.or  	$push58=, $pop57, $pop54
	i32.store	0($pop133), $pop58
	i32.load	$push59=, 0($2)
	i32.store	0($5), $pop59
	i32.load	$push60=, 0($6)
	i32.const	$push61=, 2147483647
	i32.and 	$push62=, $pop60, $pop61
	i32.store	0($6), $pop62
.LBB64_17:
	end_block
	i32.const	$push63=, 8388
	i32.add 	$push142=, $0, $pop63
	tee_local	$push141=, $2=, $pop142
	i32.load	$push64=, 0($2)
	i32.const	$push65=, 1
	i32.add 	$push140=, $pop64, $pop65
	tee_local	$push139=, $2=, $pop140
	i32.store	0($pop141), $pop139
	i32.const	$push66=, 12
	i32.mul 	$push67=, $2, $pop66
	i32.add 	$push138=, $0, $pop67
	tee_local	$push137=, $0=, $pop138
	i32.const	$push68=, 8196
	i32.add 	$push69=, $pop137, $pop68
	i32.store	0($pop69), $3
	i32.const	$push70=, 8192
	i32.add 	$push136=, $0, $pop70
	tee_local	$push135=, $8=, $pop136
	i32.store	0($pop135), $7
.LBB64_18:
	end_block
	return  	$8
.LBB64_19:
	end_block
	block   	
	i32.load	$push150=, 0($2)
	tee_local	$push149=, $8=, $pop150
	i32.const	$push72=, 12
	i32.mul 	$push73=, $1, $pop72
	i32.add 	$push148=, $0, $pop73
	tee_local	$push147=, $3=, $pop148
	i32.const	$push74=, 8200
	i32.add 	$push146=, $pop147, $pop74
	tee_local	$push145=, $1=, $pop146
	i32.load	$push144=, 0($pop145)
	tee_local	$push143=, $7=, $pop144
	i32.eq  	$push75=, $pop149, $pop143
	br_if   	0, $pop75
	i32.const	$push79=, 8196
	i32.add 	$push80=, $3, $pop79
	i32.load	$push81=, 0($pop80)
	i32.add 	$push152=, $pop81, $7
	tee_local	$push151=, $3=, $pop152
	i32.load	$push82=, 0($3)
	i32.const	$push83=, -2147483648
	i32.and 	$push84=, $pop82, $pop83
	i32.const	$push76=, -4
	i32.sub 	$push77=, $pop76, $7
	i32.add 	$push78=, $pop77, $8
	i32.or  	$push85=, $pop84, $pop78
	i32.store	0($pop151), $pop85
	i32.load	$push86=, 0($2)
	i32.store	0($1), $pop86
	i32.load	$push87=, 0($3)
	i32.const	$push88=, 2147483647
	i32.and 	$push89=, $pop87, $pop88
	i32.store	0($3), $pop89
.LBB64_21:
	end_block
	i32.const	$push90=, 8388
	i32.add 	$push156=, $0, $pop90
	tee_local	$push155=, $7=, $pop156
	i32.load	$push91=, 0($pop155)
	i32.const	$push92=, 1
	i32.add 	$push154=, $pop91, $pop92
	tee_local	$push153=, $3=, $pop154
	i32.store	8384($0), $pop153
	i32.store	0($7), $3
	i32.const	$push93=, 0
	return  	$pop93
.LBB64_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end64:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end64-_ZN5eosio14memory_manager16next_active_heapEv

	.text
	.hidden	free
	.globl	free
	.type	free,@function
free:
	.param  	i32
	.local  	i32, i32, i32
	block   	
	block   	
	i32.eqz 	$push28=, $0
	br_if   	0, $pop28
	i32.const	$push0=, 0
	i32.load	$push16=, _ZN5eosio11memory_heapE+8384($pop0)
	tee_local	$push15=, $2=, $pop16
	i32.const	$push1=, 1
	i32.lt_s	$push2=, $pop15, $pop1
	br_if   	0, $pop2
	i32.const	$3=, _ZN5eosio11memory_heapE+8192
	i32.const	$push18=, 12
	i32.mul 	$push3=, $2, $pop18
	i32.const	$push17=, _ZN5eosio11memory_heapE+8192
	i32.add 	$1=, $pop3, $pop17
.LBB65_3:
	loop    	
	i32.const	$push21=, 4
	i32.add 	$push4=, $3, $pop21
	i32.load	$push20=, 0($pop4)
	tee_local	$push19=, $2=, $pop20
	i32.eqz 	$push29=, $pop19
	br_if   	1, $pop29
	block   	
	i32.const	$push22=, 4
	i32.add 	$push5=, $2, $pop22
	i32.gt_u	$push6=, $pop5, $0
	br_if   	0, $pop6
	i32.load	$push7=, 0($3)
	i32.add 	$push8=, $2, $pop7
	i32.gt_u	$push9=, $pop8, $0
	br_if   	3, $pop9
.LBB65_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB65_7:
	end_loop
	end_block
	return
.LBB65_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end65:
	.size	free, .Lfunc_end65-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"A Workspace with the specified GUID already exists"
	.size	.L.str, 51

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.11, 51

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"write"
	.size	.L.str.12, 6

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"object passed to iterator_to is not in multi_index"
	.size	.L.str.14, 51

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"error reading iterator"
	.size	.L.str.15, 23

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"read"
	.size	.L.str.17, 5

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"get"
	.size	.L.str.16, 4

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"The specified workspace does not exist"
	.size	.L.str.1, 39

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"You are not a member of the workspace"
	.size	.L.str.2, 38

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"cannot pass end iterator to modify"
	.size	.L.str.19, 35

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"object passed to modify is not in multi_index"
	.size	.L.str.20, 46

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"cannot modify objects in table of another contract"
	.size	.L.str.21, 51

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"updater cannot change primary key when modifying an object"
	.size	.L.str.22, 59

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"cannot increment end iterator"
	.size	.L.str.18, 30

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"? "
	.size	.L.str.3, 3

	.type	.L.str.4,@object
.L.str.4:
	.asciz	" --- "
	.size	.L.str.4, 6

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"No Pending Invite found for the specified user and workspace"
	.size	.L.str.6, 61

	.type	.L.str.23,@object
.L.str.23:
	.skip	1
	.size	.L.str.23, 1

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"Not Found\n"
	.size	.L.str.7, 11

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"onerror"
	.size	.L.str.8, 8

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"eosio"
	.size	.L.str.9, 6

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"onerror action's are only valid from the \"eosio\" system account"
	.size	.L.str.10, 64

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.hidden	_ZN5eosio11memory_heapE
	.type	_ZN5eosio11memory_heapE,@object
	.bss
	.globl	_ZN5eosio11memory_heapE
	.p2align	2
_ZN5eosio11memory_heapE:
	.skip	8396
	.size	_ZN5eosio11memory_heapE, 8396

	.type	.L.str.1.23,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.23:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.23, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_,@function
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_ = _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_@FUNCTION
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.functype	current_time, i64
	.functype	require_auth2, void, i64, i64
	.functype	require_auth, void, i64
	.functype	eosio_assert, void, i32, i32
	.functype	current_receiver, i64
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	db_idx128_store, i32, i64, i64, i64, i64, i32
	.functype	db_idx64_store, i32, i64, i64, i64, i64, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	db_idx128_lowerbound, i32, i64, i64, i64, i32, i32
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	db_idx128_find_primary, i32, i64, i64, i64, i32, i64
	.functype	db_idx128_update, void, i32, i64, i32
	.functype	db_idx64_find_primary, i32, i64, i64, i64, i32, i64
	.functype	db_idx64_update, void, i32, i64, i32
	.functype	db_idx128_next, i32, i32, i32
	.functype	printui128, void, i32
	.functype	prints, void, i32
	.functype	printui, void, i64
	.functype	printi, void, i64
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	abort, void
	.functype	memmove, i32, i32, i32, i32
