	.text
	.p2align	2                               // -- Begin function muststart
	.type	muststart,@function
muststart:                              // @muststart
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	bl	fork
	adrp	x8, srvpid
	str	w0, [x8, :lo12:srvpid]
	ldr	w8, [x8, :lo12:srvpid]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	adrp	x8, srvpid
	ldr	w8, [x8, :lo12:srvpid]
	subs	w8, w8, #0
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp, #16]
	ldr	x5, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	adrp	x8, srvpid
	ldr	w1, [x8, :lo12:srvpid]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	mov	w0, #34464
	movk	w0, #1, lsl #16
	bl	usleep
	b	.LBB0_5
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp, #16]
	ldr	x5, [sp, #8]
	mov	x6, xzr
	bl	execlp
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	muststart, .Lfunc_end0-muststart
                                        // -- End function
	.type	srvpid,@object                  // @srvpid
	.bss
	.globl	srvpid
	.p2align	2
srvpid:
	.word	0                               // 0x0
	.size	srvpid, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fork"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s %s %s %s %s\n"
	.size	.L.str.1, 16
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"start server pid=%d\n"
	.size	.L.str.2, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym muststart
	.addrsig_sym fork
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym printf
	.addrsig_sym usleep
	.addrsig_sym execlp
	.addrsig_sym srvpid