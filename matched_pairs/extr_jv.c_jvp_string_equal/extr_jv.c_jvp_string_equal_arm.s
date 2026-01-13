	.text
	.p2align	2                               // -- Begin function jvp_string_equal
	.type	jvp_string_equal,@function
jvp_string_equal:                       // @jvp_string_equal
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-8]
	adrp	x8, JV_KIND_STRING
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-12]
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-8]
	bl	jvp_string_ptr
	stur	x0, [x29, #-24]
	ldur	w0, [x29, #-12]
	bl	jvp_string_ptr
	str	x0, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	jvp_string_length
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	jvp_string_length
	mov	x8, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	jvp_string_length
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	x2, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	memcmp
	subs	x8, x0, #0
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jvp_string_equal, .Lfunc_end0-jvp_string_equal
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_equal
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_string_ptr
	.addrsig_sym jvp_string_length
	.addrsig_sym memcmp
	.addrsig_sym JV_KIND_STRING