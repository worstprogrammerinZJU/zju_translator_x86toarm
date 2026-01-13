	.text
	.globl	swresample_version              // -- Begin function swresample_version
	.p2align	2
	.type	swresample_version,@function
swresample_version:                     // @swresample_version
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, LIBSWRESAMPLE_VERSION_MICRO
	ldr	w8, [x8, :lo12:LIBSWRESAMPLE_VERSION_MICRO]
	subs	w8, w8, #100
	cset	w8, ge
	and	w0, w8, #0x1
	bl	av_assert0
	adrp	x8, LIBSWRESAMPLE_VERSION_INT
	ldr	w0, [x8, :lo12:LIBSWRESAMPLE_VERSION_INT]
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	swresample_version, .Lfunc_end0-swresample_version
                                        // -- End function
	.type	LIBSWRESAMPLE_VERSION_MICRO,@object // @LIBSWRESAMPLE_VERSION_MICRO
	.bss
	.globl	LIBSWRESAMPLE_VERSION_MICRO
	.p2align	2
LIBSWRESAMPLE_VERSION_MICRO:
	.word	0                               // 0x0
	.size	LIBSWRESAMPLE_VERSION_MICRO, 4
	.type	LIBSWRESAMPLE_VERSION_INT,@object // @LIBSWRESAMPLE_VERSION_INT
	.globl	LIBSWRESAMPLE_VERSION_INT
	.p2align	2
LIBSWRESAMPLE_VERSION_INT:
	.word	0                               // 0x0
	.size	LIBSWRESAMPLE_VERSION_INT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_assert0
	.addrsig_sym LIBSWRESAMPLE_VERSION_MICRO
	.addrsig_sym LIBSWRESAMPLE_VERSION_INT