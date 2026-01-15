	.text
	.p2align	2                               // -- Begin function emit_literal
	.type	emit_literal,@function
emit_literal:                           // @emit_literal
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #9
	b.hi	.LBB0_14
// %bb.1:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #40]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_15
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #40]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_15
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #40]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_15
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	bl	make_label
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit_noindent
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	emit_label
	ldur	x1, [x29, #-12]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit_noindent
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #32]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	b	.LBB0_15
.LBB0_8:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbnz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	bl	make_label
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit_noindent
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	emit_label
	ldur	x8, [x29, #-8]
	ldr	x1, [x8]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit_noindent
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #32]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	b	.LBB0_15
.LBB0_11:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	bl	make_label
	ldur	x8, [x29, #-8]
	str	x0, [x8, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit_noindent
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	emit_label
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	w8, [x8, #4]
	subs	w1, w8, #1
	bl	quote_cstring_len
	mov	x1, x0
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit_noindent
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #8]
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	emit
	b	.LBB0_15
.LBB0_14:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	error
	b	.LBB0_15
.LBB0_15:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_literal, .Lfunc_end0-emit_literal
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_11-.Ltmp0
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mov $%u, #rax"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mov $%lu, #rax"
	.size	.L.str.1, 15
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	".data"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	".long %d"
	.size	.L.str.3, 9
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	".text"
	.size	.L.str.4, 6
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"movss %s(#rip), #xmm0"
	.size	.L.str.5, 22
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	".quad %lu"
	.size	.L.str.6, 10
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"movsd %s(#rip), #xmm0"
	.size	.L.str.7, 22
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	".string \"%s\""
	.size	.L.str.8, 13
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"lea %s(#rip), #rax"
	.size	.L.str.9, 19
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"internal error"
	.size	.L.str.10, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_literal
	.addrsig_sym emit
	.addrsig_sym make_label
	.addrsig_sym emit_noindent
	.addrsig_sym emit_label
	.addrsig_sym quote_cstring_len
	.addrsig_sym error
	.addrsig_sym SAVE