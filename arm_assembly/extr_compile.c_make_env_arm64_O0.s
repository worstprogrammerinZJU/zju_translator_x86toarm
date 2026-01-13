	.text
	.p2align	2                               // -- Begin function make_env
	.type	make_env,@function
make_env:                               // @make_env
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	bl	jv_is_valid
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-8]
	bl	jv_copy
	stur	w0, [x29, #-4]
	b	.LBB0_12
.LBB0_2:
	bl	jv_object
	stur	w0, [x29, #-12]
	adrp	x8, environ
	ldr	x8, [x8, :lo12:environ]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_4:
	str	xzr, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, environ
	ldr	x8, [x8, :lo12:environ]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_11
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	adrp	x8, environ
	ldr	x8, [x8, :lo12:environ]
	ldr	x9, [sp, #24]
	ldr	x0, [x8, x9, lsl #3]
	mov	w1, #61
	bl	strchr
	str	x0, [sp, #16]
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x8, environ
	ldr	x8, [x8, :lo12:environ]
	ldr	x9, [sp, #24]
	ldr	x0, [x8, x9, lsl #3]
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_object_delete
	stur	w0, [x29, #-12]
	b	.LBB0_9
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	adrp	x9, environ
	ldr	x8, [x9, :lo12:environ]
	ldr	x10, [sp, #24]
	ldr	x0, [x8, x10, lsl #3]
	ldr	x8, [sp, #16]
	ldr	x9, [x9, :lo12:environ]
	ldr	x10, [sp, #24]
	ldr	x9, [x9, x10, lsl #3]
	subs	x8, x8, x9
	mov	w1, w8
	bl	jv_string_sized
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	add	x0, x8, #1
	bl	jv_string
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_object_set
	stur	w0, [x29, #-12]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_5
.LBB0_11:
	ldur	w0, [x29, #-12]
	bl	jv_copy
	stur	w0, [x29, #-4]
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_env, .Lfunc_end0-make_env
                                        // -- End function
	.type	environ,@object                 // @environ
	.bss
	.globl	environ
	.p2align	3
environ:
	.xword	0
	.size	environ, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_env
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_copy
	.addrsig_sym jv_object
	.addrsig_sym strchr
	.addrsig_sym jv_object_delete
	.addrsig_sym jv_string
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string_sized
	.addrsig_sym environ