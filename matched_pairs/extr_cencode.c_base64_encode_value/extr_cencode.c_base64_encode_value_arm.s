	.text
	.globl	base64_encode_value             // -- Begin function base64_encode_value
	.p2align	2
	.type	base64_encode_value,@function
base64_encode_value:                    // @base64_encode_value
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #14]
	ldrb	w8, [sp, #14]
	subs	w8, w8, #63
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #61
	strb	w8, [sp, #15]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, base64_encode_value.encoding
	ldr	x8, [x8, :lo12:base64_encode_value.encoding]
	ldrb	w9, [sp, #14]
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	b	.LBB0_3
.LBB0_3:
	ldrb	w0, [sp, #15]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	base64_encode_value, .Lfunc_end0-base64_encode_value
                                        // -- End function
	.type	base64_encode_value.encoding,@object // @base64_encode_value.encoding
	.data
	.p2align	3
base64_encode_value.encoding:
	.xword	.L.str
	.size	base64_encode_value.encoding, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	.L.str, 65
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_encode_value.encoding