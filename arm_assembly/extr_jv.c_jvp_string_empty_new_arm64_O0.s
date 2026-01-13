	.text
	.p2align	2                               // -- Begin function jvp_string_empty_new
	.type	jvp_string_empty_new,@function
jvp_string_empty_new:                   // @jvp_string_empty_new
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jvp_string_alloc
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	ldur	w2, [x29, #-4]
	mov	w1, wzr
	bl	memset
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, JVP_FLAGS_STRING
	ldrsw	x8, [x8, :lo12:JVP_FLAGS_STRING]
	str	x8, [x9]
	str	wzr, [x9, #8]
	str	wzr, [x9, #12]
	str	wzr, [x9, #16]
	ldr	x8, [sp, #16]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #20]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_string_empty_new, .Lfunc_end0-jvp_string_empty_new
                                        // -- End function
	.type	JVP_FLAGS_STRING,@object        // @JVP_FLAGS_STRING
	.bss
	.globl	JVP_FLAGS_STRING
	.p2align	2
JVP_FLAGS_STRING:
	.word	0                               // 0x0
	.size	JVP_FLAGS_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_empty_new
	.addrsig_sym jvp_string_alloc
	.addrsig_sym memset
	.addrsig_sym JVP_FLAGS_STRING