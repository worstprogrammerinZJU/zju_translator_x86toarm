	.text
	.globl	jv_equal                        // -- Begin function jv_equal
	.p2align	2
	.type	jv_equal,@function
jv_equal:                               // @jv_equal
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #512
	mov	x8, x0
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	ldr	q0, [x8]
	sub	x0, x29, #32
	stur	q0, [x29, #-32]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-16]
	bl	jv_get_kind
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	ldr	q0, [x1]
	sub	x0, x29, #64
	stur	q0, [x29, #-64]
	ldr	x8, [x1, #16]
	stur	x8, [x29, #-48]
	bl	jv_get_kind
	mov	w8, w0
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	subs	w8, w0, w8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_17
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x8]
	sub	x0, x29, #96
	stur	q0, [x29, #-96]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-80]
	bl	JVP_IS_ALLOCATED
	cbz	x0, .LBB0_8
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	q0, [x8]
	sub	x0, x29, #128
	stur	q0, [x29, #-128]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-112]
	bl	JVP_IS_ALLOCATED
	cbz	x0, .LBB0_8
	b	.LBB0_4
.LBB0_4:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x8]
	sub	x0, x29, #160
	stur	q0, [x29, #-160]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-144]
	bl	jv_get_kind
	subs	w8, w0, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_14
// %bb.9:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_10:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x9]
	sub	x0, x29, #192
	stur	q0, [x29, #-192]
	ldr	x9, [x9, #16]
	stur	x9, [x29, #-176]
	ldr	q0, [x8]
	sub	x1, x29, #224
	stur	q0, [x29, #-224]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-208]
	bl	jvp_number_equal
	stur	w0, [x29, #-4]
	b	.LBB0_15
.LBB0_11:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x9]
	add	x0, sp, #256
	str	q0, [sp, #256]
	ldr	x9, [x9, #16]
	str	x9, [sp, #272]
	ldr	q0, [x8]
	add	x1, sp, #224
	str	q0, [sp, #224]
	ldr	x8, [x8, #16]
	str	x8, [sp, #240]
	bl	jvp_array_equal
	stur	w0, [x29, #-4]
	b	.LBB0_15
.LBB0_12:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x9]
	add	x0, sp, #192
	str	q0, [sp, #192]
	ldr	x9, [x9, #16]
	str	x9, [sp, #208]
	ldr	q0, [x8]
	add	x1, sp, #160
	str	q0, [sp, #160]
	ldr	x8, [x8, #16]
	str	x8, [sp, #176]
	bl	jvp_string_equal
	stur	w0, [x29, #-4]
	b	.LBB0_15
.LBB0_13:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x9]
	add	x0, sp, #128
	str	q0, [sp, #128]
	ldr	x9, [x9, #16]
	str	x9, [sp, #144]
	ldr	q0, [x8]
	add	x1, sp, #96
	str	q0, [sp, #96]
	ldr	x8, [x8, #16]
	str	x8, [sp, #112]
	bl	jvp_object_equal
	stur	w0, [x29, #-4]
	b	.LBB0_15
.LBB0_14:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x0, sp, #64
	str	q0, [sp, #64]
	ldr	x8, [x8, #16]
	str	x8, [sp, #80]
	bl	jv_free
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x0, sp, #32
	str	q0, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	bl	jv_free
	ldur	w0, [x29, #-4]
	add	sp, sp, #512
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	jv_equal, .Lfunc_end0-jv_equal
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_11-.Ltmp0
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_get_kind
	.addrsig_sym JVP_IS_ALLOCATED
	.addrsig_sym jvp_number_equal
	.addrsig_sym jvp_array_equal
	.addrsig_sym jvp_string_equal
	.addrsig_sym jvp_object_equal
	.addrsig_sym jv_free