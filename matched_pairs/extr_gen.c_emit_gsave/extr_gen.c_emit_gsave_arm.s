	.text
	.p2align	2                               // -- Begin function emit_gsave
	.type	emit_gsave,@function
emit_gsave:                             // @emit_gsave
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldur	x0, [x29, #-16]
	bl	maybe_convert_bool
	ldur	x0, [x29, #-16]
	mov	w1, #97
	bl	get_int_reg
	str	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	ldur	w2, [x29, #-20]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	str	x0, [sp, #8]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	bl	maybe_emit_bitshift_save
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	emit_gsave, .Lfunc_end0-emit_gsave
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
	.asciz	"%s+%d(%%rip)"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mov #%s, %s"
	.size	.L.str.1, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_gsave
	.addrsig_sym assert
	.addrsig_sym maybe_convert_bool
	.addrsig_sym get_int_reg
	.addrsig_sym format
	.addrsig_sym maybe_emit_bitshift_save
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym KIND_ARRAY