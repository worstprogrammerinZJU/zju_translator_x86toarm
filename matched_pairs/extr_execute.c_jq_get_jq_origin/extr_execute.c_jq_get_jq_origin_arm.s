	.text
	.globl	jq_get_jq_origin                // -- Begin function jq_get_jq_origin
	.p2align	2
	.type	jq_get_jq_origin,@function
jq_get_jq_origin:                       // @jq_get_jq_origin
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	jq_get_attr
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_get_jq_origin, .Lfunc_end0-jq_get_jq_origin
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JQ_ORIGIN"
	.size	.L.str, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_get_attr
	.addrsig_sym jv_string