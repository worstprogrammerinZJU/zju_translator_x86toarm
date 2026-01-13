	.text
	.p2align	2                               // -- Begin function filesize
	.type	filesize,@function
filesize:                               // @filesize
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	x1, sp, #4
	bl	stat
	str	w0, [sp]
	ldr	w8, [sp]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	filesize, .Lfunc_end0-filesize
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stat"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym filesize
	.addrsig_sym stat
	.addrsig_sym twarn
	.addrsig_sym exit