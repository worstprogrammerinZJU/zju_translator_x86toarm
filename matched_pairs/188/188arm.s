	.text
	.p2align	2                               // -- Begin function f_strflocaltime
	.type	f_strflocaltime,@function
f_strflocaltime:                        // @f_strflocaltime
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w0, [sp, #4]
	bl	jv_free
	ldr	w0, [sp]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_strflocaltime, .Lfunc_end0-f_strflocaltime
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"strflocaltime/1 not implemented on this platform"
	.size	.L.str, 49
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_strflocaltime
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string