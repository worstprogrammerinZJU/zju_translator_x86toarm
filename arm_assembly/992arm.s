	.text
	.p2align	2                               // -- Begin function emit_gload
	.type	emit_gload,@function
emit_gload:                             // @emit_gload
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_4
.LBB0_3:
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_6
.LBB0_5:
	ldur	x0, [x29, #-8]
	bl	get_load_inst
	str	x0, [sp]
	ldr	x1, [sp]
	ldr	x2, [sp, #16]
	ldr	w3, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	ldur	x0, [x29, #-8]
	bl	maybe_emit_bitshift_load
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_gload, .Lfunc_end0-emit_gload
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.xword	0                               // 0x0
	.size	KIND_ARRAY, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lea %s+%d(#rip), #rax"
	.size	.L.str, 22
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"lea %s(#rip), #rax"
	.size	.L.str.1, 19
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s %s+%d(#rip), #rax"
	.size	.L.str.2, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_gload
	.addrsig_sym emit
	.addrsig_sym get_load_inst
	.addrsig_sym maybe_emit_bitshift_load
	.addrsig_sym SAVE
	.addrsig_sym KIND_ARRAY