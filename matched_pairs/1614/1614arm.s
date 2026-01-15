	.text
	.p2align	2                               // -- Begin function rcapture_l
	.type	rcapture_l,@function
rcapture_l:                             // @rcapture_l
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #2
	bl	lua_type
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w0, #128
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #130
	b.ne	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	adrp	x8, Cfunction
	ldr	w1, [x8, :lo12:Cfunction]
	mov	w2, #2
	bl	capture_aux
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldr	x0, [sp, #16]
	adrp	x8, Cquery
	ldr	w1, [x8, :lo12:Cquery]
	mov	w2, #2
	bl	capture_aux
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_5:
	ldr	x0, [sp, #16]
	adrp	x8, Cstring
	ldr	w1, [x8, :lo12:Cstring]
	mov	w2, #2
	bl	capture_aux
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	ldr	x0, [sp, #16]
	mov	w1, #2
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	luaL_argerror
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	rcapture_l, .Lfunc_end0-rcapture_l
                                        // -- End function
	.type	Cfunction,@object               // @Cfunction
	.bss
	.globl	Cfunction
	.p2align	2
Cfunction:
	.word	0                               // 0x0
	.size	Cfunction, 4
	.type	Cquery,@object                  // @Cquery
	.globl	Cquery
	.p2align	2
Cquery:
	.word	0                               // 0x0
	.size	Cquery, 4
	.type	Cstring,@object                 // @Cstring
	.globl	Cstring
	.p2align	2
Cstring:
	.word	0                               // 0x0
	.size	Cstring, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid replacement value"
	.size	.L.str, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rcapture_l
	.addrsig_sym lua_type
	.addrsig_sym capture_aux
	.addrsig_sym luaL_argerror
	.addrsig_sym Cfunction
	.addrsig_sym Cquery
	.addrsig_sym Cstring