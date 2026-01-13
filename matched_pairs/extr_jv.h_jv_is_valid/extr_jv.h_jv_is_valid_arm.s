	.text
	.p2align	2                               // -- Begin function jv_is_valid
	.type	jv_is_valid,@function
jv_is_valid:                            // @jv_is_valid
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_INVALID
	ldr	x8, [x8, :lo12:JV_KIND_INVALID]
	subs	x8, x0, x8
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_is_valid, .Lfunc_end0-jv_is_valid
                                        // -- End function
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.bss
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.xword	0                               // 0x0
	.size	JV_KIND_INVALID, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_INVALID