	.text
	.p2align	2                               // -- Begin function f_nan
	.type	f_nan,@function
f_nan:                                  // @f_nan
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_free
	adrp	x8, NAN
	ldr	w0, [x8, :lo12:NAN]
	bl	jv_number
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_nan, .Lfunc_end0-f_nan
                                        // -- End function
	.type	NAN,@object                     // @NAN
	.bss
	.globl	NAN
	.p2align	2
NAN:
	.word	0                               // 0x0
	.size	NAN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_nan
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym NAN