	.text
	.p2align	2                               // -- Begin function mustdialunix
	.type	mustdialunix,@function
mustdialunix:                           // @mustdialunix
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	mov	x1, #4
	str	x1, [sp, #24]
	adrp	x8, AF_UNIX
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w8, [x8, :lo12:AF_UNIX]
	stur	w8, [x29, #-12]
	ldur	w0, [x29, #-16]
	ldur	x3, [x29, #-8]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	snprintf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:AF_UNIX]
	adrp	x8, SOCK_STREAM
	ldr	w1, [x8, :lo12:SOCK_STREAM]
	mov	w2, wzr
	bl	socket
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #20]
	sub	x1, x29, #16
	mov	w2, #8
	bl	connect
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #20]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	mustdialunix, .Lfunc_end0-mustdialunix
                                        // -- End function
	.type	AF_UNIX,@object                 // @AF_UNIX
	.bss
	.globl	AF_UNIX
	.p2align	2
AF_UNIX:
	.word	0                               // 0x0
	.size	AF_UNIX, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	SOCK_STREAM,@object             // @SOCK_STREAM
	.bss
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.word	0                               // 0x0
	.size	SOCK_STREAM, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"socket"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"connect"
	.size	.L.str.2, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustdialunix
	.addrsig_sym snprintf
	.addrsig_sym socket
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym connect
	.addrsig_sym AF_UNIX
	.addrsig_sym SOCK_STREAM