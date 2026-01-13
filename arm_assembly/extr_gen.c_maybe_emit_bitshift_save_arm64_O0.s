	.text
	.p2align	2                               // -- Begin function maybe_emit_bitshift_save
	.type	maybe_emit_bitshift_save,@function
maybe_emit_bitshift_save:               // @maybe_emit_bitshift_save
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	stur	x0, [x29, #-24]                 // 8-byte Folded Spill
	bl	push
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	bl	push
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	w9, w8
	mov	w8, #1
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	lsl	w8, w8, w9
	subs	w1, w8, #1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	emit
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	mov	w1, #99
	bl	get_int_reg
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
                                        // kill: def $w9 killed $w9 killed $x9
	lsl	w8, w8, w9
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	lsl	w8, w8, w9
	mvn	w1, w8
	bl	emit
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	pop
	ldur	x0, [x29, #-24]                 // 8-byte Folded Reload
	bl	pop
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	maybe_emit_bitshift_save, .Lfunc_end0-maybe_emit_bitshift_save
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
	.asciz	"rcx"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rdi"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mov $0x%lx, #rdi"
	.size	.L.str.2, 17
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"and #rdi, #rax"
	.size	.L.str.3, 15
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"shl $%d, #rax"
	.size	.L.str.4, 14
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"mov %s, #%s"
	.size	.L.str.5, 12
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"and #rdi, #rcx"
	.size	.L.str.6, 15
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"or #rcx, #rax"
	.size	.L.str.7, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_emit_bitshift_save
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym get_int_reg
	.addrsig_sym pop
	.addrsig_sym SAVE