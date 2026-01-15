	.text
	.globl	srvserve                        // -- Begin function srvserve
	.p2align	2
	.type	srvserve,@function
srvserve:                               // @srvserve
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	sockinit
	adds	w8, w0, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	adrp	x8, srvaccept
	ldr	x8, [x8, :lo12:srvaccept]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	adrp	x8, conn_less
	ldr	w8, [x8, :lo12:conn_less]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #28]
	adrp	x8, conn_setpos
	ldr	w8, [x8, :lo12:conn_setpos]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	mov	w1, #1024
	bl	listen
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_4:
	ldur	x0, [x29, #-8]
	mov	w1, #114
	bl	sockwant
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	adds	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	mov	w0, #2
	bl	exit
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	bl	prottick
	str	w0, [sp, #4]
	ldr	w1, [sp, #4]
	add	x0, sp, #8
	bl	socknext
	str	w0, [sp]
	ldr	w8, [sp]
	adds	w8, w8, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarnx
	mov	w0, #1
	bl	exit
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp]
	cbz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	w0, [x9]
	ldr	w1, [sp]
	blr	x8
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_7
.Lfunc_end0:
	.size	srvserve, .Lfunc_end0-srvserve
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sockinit"
	.size	.L.str, 9
	.type	srvaccept,@object               // @srvaccept
	.bss
	.globl	srvaccept
	.p2align	3
srvaccept:
	.xword	0                               // 0x0
	.size	srvaccept, 8
	.type	conn_less,@object               // @conn_less
	.globl	conn_less
	.p2align	2
conn_less:
	.word	0                               // 0x0
	.size	conn_less, 4
	.type	conn_setpos,@object             // @conn_setpos
	.globl	conn_setpos
	.p2align	2
conn_setpos:
	.word	0                               // 0x0
	.size	conn_setpos, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"listen"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"sockwant"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"socknext"
	.size	.L.str.3, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sockinit
	.addrsig_sym twarnx
	.addrsig_sym exit
	.addrsig_sym listen
	.addrsig_sym twarn
	.addrsig_sym sockwant
	.addrsig_sym prottick
	.addrsig_sym socknext
	.addrsig_sym srvaccept
	.addrsig_sym conn_less
	.addrsig_sym conn_setpos