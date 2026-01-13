	.text
	.p2align	2                               // -- Begin function debug_cb
	.type	debug_cb,@function
debug_cb:                               // @debug_cb
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	ldur	w1, [x29, #-12]
	bl	JV_ARRAY
	adrp	x8, stderr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:stderr]
	ldr	w8, [sp, #16]
	adrp	x9, JV_PRINT_PRETTY
	ldr	w9, [x9, :lo12:JV_PRINT_PRETTY]
	bic	w2, w8, w9
	bl	jv_dumpf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	debug_cb, .Lfunc_end0-debug_cb
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DEBUG:"
	.size	.L.str, 7
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	JV_PRINT_PRETTY,@object         // @JV_PRINT_PRETTY
	.globl	JV_PRINT_PRETTY
	.p2align	2
JV_PRINT_PRETTY:
	.word	0                               // 0x0
	.size	JV_PRINT_PRETTY, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym debug_cb
	.addrsig_sym jv_dumpf
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_string
	.addrsig_sym fprintf
	.addrsig_sym stderr
	.addrsig_sym JV_PRINT_PRETTY