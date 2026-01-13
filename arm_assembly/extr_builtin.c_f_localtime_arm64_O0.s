	.text
	.p2align	2                               // -- Begin function f_localtime
	.type	f_localtime,@function
f_localtime:                            // @f_localtime
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_localtime, .Lfunc_end0-f_localtime
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"localtime not implemented on this platform"
	.size	.L.str, 43
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_localtime
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string