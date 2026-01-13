	.text
	.globl	gen_import                      // -- Begin function gen_import
	.p2align	2
	.type	gen_import,@function
gen_import:                             // @gen_import
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	adrp	x8, DEPS
	ldr	w0, [x8, :lo12:DEPS]
	bl	inst_new
	str	x0, [sp, #32]
	bl	jv_object
	str	w0, [sp, #28]
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #28]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	jv_string
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	bl	jv_object_set
	str	w0, [sp, #28]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	bl	jv_true
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	bl	jv_false
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_object_set
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string
	str	w0, [sp]                        // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	jv_string
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_object_set
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	ldr	x0, [sp, #32]
	bl	inst_block
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gen_import, .Lfunc_end0-gen_import
                                        // -- End function
	.type	DEPS,@object                    // @DEPS
	.bss
	.globl	DEPS
	.p2align	2
DEPS:
	.word	0                               // 0x0
	.size	DEPS, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"as"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"is_data"
	.size	.L.str.1, 8
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"relpath"
	.size	.L.str.2, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym inst_block
	.addrsig_sym DEPS