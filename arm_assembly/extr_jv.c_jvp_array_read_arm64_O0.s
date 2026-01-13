	.text
	.p2align	2                               // -- Begin function jvp_array_read
	.type	jvp_array_read,@function
jvp_array_read:                         // @jvp_array_read
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-12]
	stur	w1, [x29, #-16]
	ldur	w0, [x29, #-12]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w8, [x29, #-16]
	tbnz	w8, #31, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-16]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_array_length
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-12]
	bl	jvp_array_ptr
	str	x0, [sp, #24]
	ldur	w8, [x29, #-16]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_array_offset
	ldr	w8, [sp]                        // 4-byte Folded Reload
	add	w8, w8, w0
	ldr	x9, [sp, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w8, [x29, #-16]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jvp_array_offset
	ldr	w9, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	w9, w9, w0
	add	x8, x8, w9, sxtw #2
	stur	x8, [x29, #-8]
	b	.LBB0_4
.LBB0_3:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_array_read, .Lfunc_end0-jvp_array_read
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_read
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_length
	.addrsig_sym jvp_array_ptr
	.addrsig_sym jvp_array_offset
	.addrsig_sym JV_KIND_ARRAY