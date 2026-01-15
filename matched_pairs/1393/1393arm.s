	.text
	.globl	jv_show                         // -- Begin function jv_show
	.p2align	2
	.type	jv_show,@function
jv_show:                                // @jv_show
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w8, [x29, #-8]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, JV_PRINT_PRETTY
	ldr	w8, [x8, :lo12:JV_PRINT_PRETTY]
	adrp	x9, JV_PRINT_COLOR
	ldr	w9, [x9, :lo12:JV_PRINT_COLOR]
	orr	w8, w8, w9
	stur	w8, [x29, #-12]                 // 4-byte Folded Spill
	mov	w0, #2
	bl	JV_PRINT_INDENT_FLAGS
	ldur	w8, [x29, #-12]                 // 4-byte Folded Reload
	orr	w8, w8, w0
	stur	w8, [x29, #-8]
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-4]
	bl	jv_copy
	adrp	x8, stderr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:stderr]
	ldur	w8, [x29, #-8]
	adrp	x9, JV_PRINT_INVALID
	ldr	w9, [x9, :lo12:JV_PRINT_INVALID]
	orr	w2, w8, w9
	bl	jv_dumpf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:stderr]
	bl	fflush
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_show, .Lfunc_end0-jv_show
                                        // -- End function
	.type	JV_PRINT_PRETTY,@object         // @JV_PRINT_PRETTY
	.bss
	.globl	JV_PRINT_PRETTY
	.p2align	2
JV_PRINT_PRETTY:
	.word	0                               // 0x0
	.size	JV_PRINT_PRETTY, 4
	.type	JV_PRINT_COLOR,@object          // @JV_PRINT_COLOR
	.globl	JV_PRINT_COLOR
	.p2align	2
JV_PRINT_COLOR:
	.word	0                               // 0x0
	.size	JV_PRINT_COLOR, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	JV_PRINT_INVALID,@object        // @JV_PRINT_INVALID
	.globl	JV_PRINT_INVALID
	.p2align	2
JV_PRINT_INVALID:
	.word	0                               // 0x0
	.size	JV_PRINT_INVALID, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_PRINT_INDENT_FLAGS
	.addrsig_sym jv_dumpf
	.addrsig_sym jv_copy
	.addrsig_sym fflush
	.addrsig_sym JV_PRINT_PRETTY
	.addrsig_sym JV_PRINT_COLOR
	.addrsig_sym stderr
	.addrsig_sym JV_PRINT_INVALID