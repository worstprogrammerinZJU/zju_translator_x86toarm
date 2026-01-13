	.text
	.globl	gen_module                      // -- Begin function gen_module
	.p2align	2
	.type	gen_module,@function
gen_module:                             // @gen_module
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	adrp	x8, MODULEMETA
	ldr	w0, [x8, :lo12:MODULEMETA]
	bl	inst_new
	str	x0, [sp, #16]
	ldur	w0, [x29, #-4]
	bl	block_const
	ldr	x8, [sp, #16]
	str	w0, [x8]
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	jv_object
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]
	ldr	w2, [x8]
	bl	jv_object_set
	ldr	x8, [sp, #16]
	str	w0, [x8]
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-4]
	bl	block_free
	ldr	x0, [sp, #16]
	bl	inst_block
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_module, .Lfunc_end0-gen_module
                                        // -- End function
	.type	MODULEMETA,@object              // @MODULEMETA
	.bss
	.globl	MODULEMETA
	.p2align	2
MODULEMETA:
	.word	0                               // 0x0
	.size	MODULEMETA, 4
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"metadata"
	.size	.L.str, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym block_const
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_set
	.addrsig_sym jv_object
	.addrsig_sym jv_string
	.addrsig_sym block_free
	.addrsig_sym inst_block
	.addrsig_sym MODULEMETA
	.addrsig_sym JV_KIND_OBJECT