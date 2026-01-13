	.text
	.p2align	2                               // -- Begin function f_match
	.type	f_match,@function
f_match:                                // @f_match
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	str	w4, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_match, .Lfunc_end0-f_match
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq was compiled without ONIGURUMA regex libary. match/test/sub and related functions are not available."
	.size	.L.str, 104
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_match
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string