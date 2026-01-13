	.text
	.p2align	2                               // -- Begin function emit_func_prologue
	.type	emit_func_prologue,@function
emit_func_prologue:                     // @emit_func_prologue
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	w8, [x8, #16]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #24]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit_noindent
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #24]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit_noindent
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	push
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	stur	wzr, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #20]
	bl	set_reg_nums
	bl	emit_regsave_area
	ldursw	x8, [x29, #-12]
	subs	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-12]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #20]
	ldur	w1, [x29, #-12]
	bl	push_func_params
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #20]
	bl	vec_len
	ldur	w8, [x29, #-12]
	subs	w8, w8, w0, lsl #3
	stur	w8, [x29, #-12]
	stur	wzr, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	bl	vec_len
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	ldur	w1, [x29, #-20]
	bl	vec_get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	w0, [x8]
	mov	w1, #8
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	align
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	w9, [sp, #12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, w9
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	w9, [sp, #12]
	ldur	w8, [x29, #-16]
	add	w8, w8, w9
	stur	w8, [x29, #-16]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_5
.LBB0_8:
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	w1, [x29, #-16]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	ldur	w10, [x29, #-16]
	adrp	x9, stackpos
	ldr	w8, [x9, :lo12:stackpos]
	add	w8, w8, w10
	str	w8, [x9, :lo12:stackpos]
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	emit_func_prologue, .Lfunc_end0-emit_func_prologue
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
	.asciz	".text"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	".global %s"
	.size	.L.str.1, 11
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s:"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"nop"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"rbp"
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"mov #rsp, #rbp"
	.size	.L.str.5, 15
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"sub $%d, #rsp"
	.size	.L.str.6, 14
	.type	stackpos,@object                // @stackpos
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.word	0                               // 0x0
	.size	stackpos, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_func_prologue
	.addrsig_sym emit
	.addrsig_sym emit_noindent
	.addrsig_sym push
	.addrsig_sym set_reg_nums
	.addrsig_sym emit_regsave_area
	.addrsig_sym push_func_params
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym align
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos