	.text
	.globl	block_module_meta               // -- Begin function block_module_meta
	.p2align	2
	.type	block_module_meta,@function
block_module_meta:                      // @block_module_meta
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, MODULEMETA
	ldr	x9, [x9, :lo12:MODULEMETA]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp]
	ldr	w0, [x8, #8]
	bl	jv_copy
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	bl	jv_null
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_module_meta, .Lfunc_end0-block_module_meta
                                        // -- End function
	.type	MODULEMETA,@object              // @MODULEMETA
	.bss
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.xword	0                               // 0x0
	.size	MODULEMETA, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_copy
	.addrsig_sym jv_null
	.addrsig_sym MODULEMETA