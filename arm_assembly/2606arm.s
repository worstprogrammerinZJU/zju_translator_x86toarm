	.text
	.globl	write_int                       // -- Begin function write_int
	.p2align	2
	.type	write_int,@function
write_int:                              // @write_int
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w1
	stur	w0, [x29, #-4]
	add	x1, sp, #8
	str	w8, [sp, #8]
	ldur	w0, [x29, #-4]
	mov	w2, #4
	bl	write
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	write_int, .Lfunc_end0-write_int
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"read failed"
	.size	.L.str, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write
	.addrsig_sym error