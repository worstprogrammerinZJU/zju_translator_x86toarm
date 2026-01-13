	.text
	.p2align	2                               // -- Begin function maybe_emit_bitshift_load
	.type	maybe_emit_bitshift_load,@function
maybe_emit_bitshift_load:               // @maybe_emit_bitshift_load
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	push
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	mov	w9, w8
	mov	w8, #1
	lsl	w8, w8, w9
	subs	w1, w8, #1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	pop
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	maybe_emit_bitshift_load, .Lfunc_end0-maybe_emit_bitshift_load
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
	.asciz	"shr $%d, #rax"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rcx"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mov $0x%lx, #rcx"
	.size	.L.str.2, 17
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"and #rcx, #rax"
	.size	.L.str.3, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_emit_bitshift_load
	.addrsig_sym emit
	.addrsig_sym push
	.addrsig_sym pop
	.addrsig_sym SAVE