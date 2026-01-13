	.text
	.p2align	2                               // -- Begin function accumcap
	.type	accumcap,@function
accumcap:                               // @accumcap
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	w0, [x9]
	add	w8, w0, #1
	str	w8, [x9]
	bl	isfullcap
	cbnz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	isclosecap
	cbnz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	pushcapture
	subs	w8, w0, #1
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	w0, [x29, #-4]
	b	.LBB0_10
.LBB0_4:
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	isclosecap
	cbnz	x0, .LBB0_9
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	captype
	adrp	x8, Cfunction
	ldr	x8, [x8, :lo12:Cfunction]
	subs	x8, x0, x8
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	luaL_error
	stur	w0, [x29, #-4]
	b	.LBB0_10
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	bl	pushluaval
	ldr	x0, [sp, #8]
	mov	w1, #-2
	bl	lua_insert
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	pushallcaptures
	str	w0, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	mov	w2, #1
	add	w1, w8, #1
	bl	lua_call
	b	.LBB0_5
.LBB0_9:
	ldr	x10, [sp, #16]
	ldr	w9, [x10]
	mov	w8, #1
	add	w9, w9, #1
	str	w9, [x10]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	accumcap, .Lfunc_end0-accumcap
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no initial value for accumulator capture"
	.size	.L.str, 41
	.type	Cfunction,@object               // @Cfunction
	.bss
	.globl	Cfunction
	.p2align	3
Cfunction:
	.xword	0                               // 0x0
	.size	Cfunction, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"invalid (non function) capture to accumulate"
	.size	.L.str.1, 45
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym accumcap
	.addrsig_sym isfullcap
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym luaL_error
	.addrsig_sym captype
	.addrsig_sym pushluaval
	.addrsig_sym lua_insert
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_call
	.addrsig_sym Cfunction