	.text
	.globl	gen_import_meta                 // -- Begin function gen_import_meta
	.p2align	2
	.type	gen_import_meta,@function
gen_import_meta:                        // @gen_import_meta
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	block_is_single
	mov	w8, #0
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, DEPS
	ldr	x9, [x9, :lo12:DEPS]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #24]
	bl	block_is_const
	mov	w8, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #24]
	bl	block_const_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	bl	block_const
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #8]
	bl	jv_object_merge
	ldr	x8, [sp, #16]
	str	w0, [x8, #8]
	ldr	x0, [sp, #24]
	bl	block_free
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	gen_import_meta, .Lfunc_end0-gen_import_meta
                                        // -- End function
	.type	DEPS,@object                    // @DEPS
	.bss
	.globl	DEPS
	.p2align	3
DEPS:
	.xword	0                               // 0x0
	.size	DEPS, 8
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_single
	.addrsig_sym block_is_const
	.addrsig_sym block_const_kind
	.addrsig_sym jv_object_merge
	.addrsig_sym block_const
	.addrsig_sym block_free
	.addrsig_sym DEPS
	.addrsig_sym JV_KIND_OBJECT