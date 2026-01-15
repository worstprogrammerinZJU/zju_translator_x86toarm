	.text
	.p2align	2                               // -- Begin function emit_func_call
	.type	emit_func_call,@function
emit_func_call:                         // @emit_func_call
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	adrp	x8, stackpos
	ldr	w8, [x8, :lo12:stackpos]
	stur	w8, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, AST_FUNCPTR_CALL
	ldr	x9, [x9, :lo12:AST_FUNCPTR_CALL]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stur	x8, [x29, #-24]
	bl	make_vector
	stur	x0, [x29, #-32]
	bl	make_vector
	str	x0, [sp, #40]
	bl	make_vector
	str	x0, [sp, #32]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #32]
	ldur	x8, [x29, #-8]
	ldr	w3, [x8, #24]
	bl	classify_args
	ldur	x0, [x29, #-32]
	bl	vec_len
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	vec_len
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	save_arg_regs
	adrp	x8, stackpos
	ldr	w8, [x8, :lo12:stackpos]
	mov	w10, #16
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	adrp	x9, stackpos
	ldr	w8, [x9, :lo12:stackpos]
	add	w8, w8, #8
	str	w8, [x9, :lo12:stackpos]
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #32]
	bl	vec_reverse
	bl	emit_args
	str	w0, [sp, #24]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	bl	emit_expr
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	push
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-32]
	bl	emit_args
	ldr	x0, [sp, #40]
	bl	emit_args
	ldr	x0, [sp, #40]
	bl	vec_len
	bl	pop_float_args
	ldur	x0, [x29, #-32]
	bl	vec_len
	bl	pop_int_args
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	pop
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #40]
	bl	vec_len
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	b	.LBB0_11
.LBB0_11:
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_14
.LBB0_13:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #12]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	maybe_booleanize_retval
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.le	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	w1, [sp, #24]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	ldr	w10, [sp, #24]
	adrp	x9, stackpos
	ldr	w8, [x9, :lo12:stackpos]
	subs	w8, w8, w10
	str	w8, [x9, :lo12:stackpos]
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #28]
	cbz	w8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	adrp	x9, stackpos
	ldr	w8, [x9, :lo12:stackpos]
	subs	w8, w8, #8
	str	w8, [x9, :lo12:stackpos]
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-32]
	bl	vec_len
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	vec_len
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	restore_arg_regs
	ldur	w8, [x29, #-12]
	adrp	x9, stackpos
	ldr	w9, [x9, :lo12:stackpos]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	emit_func_call, .Lfunc_end0-emit_func_call
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	stackpos,@object                // @stackpos
	.globl	stackpos
	.p2align	2
stackpos:
	.word	0                               // 0x0
	.size	stackpos, 4
	.type	AST_FUNCPTR_CALL,@object        // @AST_FUNCPTR_CALL
	.globl	AST_FUNCPTR_CALL
	.p2align	3
AST_FUNCPTR_CALL:
	.xword	0                               // 0x0
	.size	AST_FUNCPTR_CALL, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sub $8, #rsp"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rax"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"r11"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"mov $%u, #eax"
	.size	.L.str.3, 14
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"call *#r11"
	.size	.L.str.4, 11
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"call %s"
	.size	.L.str.5, 8
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"add $%d, #rsp"
	.size	.L.str.6, 14
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"add $8, #rsp"
	.size	.L.str.7, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_func_call
	.addrsig_sym make_vector
	.addrsig_sym classify_args
	.addrsig_sym save_arg_regs
	.addrsig_sym vec_len
	.addrsig_sym emit
	.addrsig_sym emit_args
	.addrsig_sym vec_reverse
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym pop_float_args
	.addrsig_sym pop_int_args
	.addrsig_sym pop
	.addrsig_sym maybe_booleanize_retval
	.addrsig_sym restore_arg_regs
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos
	.addrsig_sym AST_FUNCPTR_CALL