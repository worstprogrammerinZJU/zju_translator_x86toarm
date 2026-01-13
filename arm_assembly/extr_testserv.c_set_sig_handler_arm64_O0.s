	.text
	.p2align	2                               // -- Begin function set_sig_handler
	.type	set_sig_handler,@function
set_sig_handler:                        // @set_sig_handler
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	add	x8, sp, #16
	str	xzr, [sp, #24]
	add	x0, x8, #4
	bl	sigemptyset
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w0, #111
	bl	exit
	b	.LBB0_2
.LBB0_2:
	adrp	x8, exit_process
	ldr	w8, [x8, :lo12:exit_process]
	add	x1, sp, #16
	str	w8, [sp, #16]
	adrp	x8, SIGTERM
	ldr	w0, [x8, :lo12:SIGTERM]
	mov	w2, wzr
	bl	sigaction
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	mov	w0, #111
	bl	exit
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_sig_handler, .Lfunc_end0-set_sig_handler
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sigemptyset()"
	.size	.L.str, 14
	.type	exit_process,@object            // @exit_process
	.bss
	.globl	exit_process
	.p2align	2
exit_process:
	.word	0                               // 0x0
	.size	exit_process, 4
	.type	SIGTERM,@object                 // @SIGTERM
	.globl	SIGTERM
	.p2align	2
SIGTERM:
	.word	0                               // 0x0
	.size	SIGTERM, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"sigaction(SIGTERM)"
	.size	.L.str.1, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_sig_handler
	.addrsig_sym sigemptyset
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym sigaction
	.addrsig_sym exit_process
	.addrsig_sym SIGTERM