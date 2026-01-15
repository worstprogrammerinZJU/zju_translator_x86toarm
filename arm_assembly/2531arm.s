	.text
	.globl	jq_realpath                     // -- Begin function jq_realpath
	.p2align	2
	.type	jq_realpath,@function
jq_realpath:                            // @jq_realpath
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	adrp	x8, PATH_MAX
	ldr	w8, [x8, :lo12:PATH_MAX]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-12]
	bl	jv_mem_alloc
	str	x0, [sp, #8]
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	jv_string_value
	ldr	x1, [sp, #8]
	bl	realpath
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	free
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	x0, [sp]
	bl	jv_string
	stur	w0, [x29, #-8]
	ldr	x0, [sp]
	bl	free
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jq_realpath, .Lfunc_end0-jq_realpath
                                        // -- End function
	.type	PATH_MAX,@object                // @PATH_MAX
	.bss
	.globl	PATH_MAX
	.p2align	2
PATH_MAX:
	.word	0                               // 0x0
	.size	PATH_MAX, 4
	.type	_PC_PATH_MAX,@object            // @_PC_PATH_MAX
	.globl	_PC_PATH_MAX
	.p2align	2
_PC_PATH_MAX:
	.word	0                               // 0x0
	.size	_PC_PATH_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym realpath
	.addrsig_sym jv_string_value
	.addrsig_sym free
	.addrsig_sym jv_free
	.addrsig_sym jv_string
	.addrsig_sym PATH_MAX