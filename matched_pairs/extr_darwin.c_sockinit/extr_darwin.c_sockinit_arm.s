	.text
	.globl	sockinit                        // -- Begin function sockinit
	.p2align	2
	.type	sockinit,@function
sockinit:                               // @sockinit
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	kqueue
	adrp	x8, kq
	str	w0, [x8, :lo12:kq]
	ldr	w8, [x8, :lo12:kq]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sockinit, .Lfunc_end0-sockinit
                                        // -- End function
	.type	kq,@object                      // @kq
	.bss
	.globl	kq
	.p2align	2
kq:
	.word	0                               // 0x0
	.size	kq, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"kqueue"
	.size	.L.str, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kqueue
	.addrsig_sym twarn
	.addrsig_sym kq