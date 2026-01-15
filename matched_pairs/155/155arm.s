	.text
	.p2align	2                               // -- Begin function f_infinite
	.type	f_infinite,@function
f_infinite:                             // @f_infinite
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_free
	adrp	x8, INFINITY
	ldr	w0, [x8, :lo12:INFINITY]
	bl	jv_number
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_infinite, .Lfunc_end0-f_infinite
                                        // -- End function
	.type	INFINITY,@object                // @INFINITY
	.bss
	.globl	INFINITY
	.p2align	2
INFINITY:
	.word	0                               // 0x0
	.size	INFINITY, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_infinite
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym INFINITY