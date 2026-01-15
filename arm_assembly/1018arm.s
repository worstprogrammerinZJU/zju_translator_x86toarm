	.text
	.p2align	2                               // -- Begin function emit_save_literal
	.type	emit_save_literal,@function
emit_save_literal:                      // @emit_save_literal
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	subs	x8, x8, #9
	b.hi	.LBB0_9
// %bb.1:
	ldr	x11, [sp, #32]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w9, ne
                                        // implicit-def: $x8
	mov	w8, w9
	and	x1, x8, #0x1
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_10
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8]
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_10
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8]
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_10
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8]
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_10
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	mov	w1, w8
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	emit
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	asr	x1, x8, #32
	ldur	w8, [x29, #-20]
	add	w2, w8, #4
	bl	emit
	b	.LBB0_10
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-24]
	ldur	x1, [x29, #-24]
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_10
.LBB0_8:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	mov	w1, w8
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	emit
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	asr	x1, x8, #32
	ldur	w8, [x29, #-20]
	add	w2, w8, #4
	bl	emit
	b	.LBB0_10
.LBB0_9:
	ldur	x0, [x29, #-8]
	bl	node2s
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	ty2s
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	x2, x0
	ldur	w3, [x29, #-20]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	error
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	emit_save_literal, .Lfunc_end0-emit_save_literal
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_2-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movb $%d, %d(#rbp)"
	.size	.L.str, 19
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"movw $%d, %d(#rbp)"
	.size	.L.str.1, 19
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"movl $%d, %d(#rbp)"
	.size	.L.str.2, 19
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"movl $%lu, %d(#rbp)"
	.size	.L.str.3, 20
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"movl $%u, %d(#rbp)"
	.size	.L.str.4, 19
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"internal error: <%s> <%s> <%d>"
	.size	.L.str.5, 31
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_save_literal
	.addrsig_sym emit
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym ty2s