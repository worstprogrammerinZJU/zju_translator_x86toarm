	.text
	.p2align	2                               // -- Begin function emit_addr
	.type	emit_addr,@function
emit_addr:                              // @emit_addr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #4
	b.hi	.LBB0_7
// %bb.1:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	ensure_lvar_init
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #32]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_8
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #28]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_8
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #24]
	bl	emit_expr
	b	.LBB0_8
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	emit_addr
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_8
.LBB0_6:
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_8
.LBB0_7:
	ldr	x0, [sp, #8]
	bl	node2s
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	error
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_addr, .Lfunc_end0-emit_addr
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lea %d(#rbp), #rax"
	.size	.L.str, 19
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"lea %s(#rip), #rax"
	.size	.L.str.1, 19
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"add $%d, #rax"
	.size	.L.str.2, 14
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"internal error: %s"
	.size	.L.str.3, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_addr
	.addrsig_sym ensure_lvar_init
	.addrsig_sym emit
	.addrsig_sym emit_expr
	.addrsig_sym error
	.addrsig_sym node2s