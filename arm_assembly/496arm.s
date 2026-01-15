	.text
	.p2align	2                               // -- Begin function tmpfd
	.type	tmpfd,@function
tmpfd:                                  // @tmpfd
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	tmpfile
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #1
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	die
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	fileno
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	tmpfd, .Lfunc_end0-tmpfd
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tmpfile"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tmpfd
	.addrsig_sym tmpfile
	.addrsig_sym die
	.addrsig_sym fileno
	.addrsig_sym errno