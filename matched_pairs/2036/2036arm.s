	.text
	.p2align	2                               // -- Begin function epollq_apply
	.type	epollq_apply,@function
epollq_apply:                           // @epollq_apply
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, epollq
	ldr	x8, [x8, :lo12:epollq]
	cbz	x8, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, epollq
	ldr	x8, [x9, :lo12:epollq]
	str	x8, [sp, #8]
	ldr	x8, [x9, :lo12:epollq]
	ldr	x8, [x8, #8]
	str	x8, [x9, :lo12:epollq]
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #4
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	bl	sockwant
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	ldr	x0, [sp, #8]
	bl	connclose
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	epollq_apply, .Lfunc_end0-epollq_apply
                                        // -- End function
	.type	epollq,@object                  // @epollq
	.bss
	.globl	epollq
	.p2align	3
epollq:
	.xword	0
	.size	epollq, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sockwant"
	.size	.L.str, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epollq_apply
	.addrsig_sym sockwant
	.addrsig_sym twarn
	.addrsig_sym connclose
	.addrsig_sym epollq