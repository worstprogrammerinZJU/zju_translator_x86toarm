	.text
	.p2align	2                               // -- Begin function set_sig_handlers
	.type	set_sig_handlers,@function
set_sig_handlers:                       // @set_sig_handlers
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, SIG_IGN
	ldr	w9, [x8, :lo12:SIG_IGN]
	add	x8, sp, #16
	str	w9, [sp, #16]
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
	adrp	x8, SIGPIPE
	ldr	w0, [x8, :lo12:SIGPIPE]
	add	x1, sp, #16
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
	adrp	x8, enter_drain_mode
	ldr	w8, [x8, :lo12:enter_drain_mode]
	add	x1, sp, #16
	str	w8, [sp, #16]
	adrp	x8, SIGUSR1
	ldr	w0, [x8, :lo12:SIGUSR1]
	mov	w2, wzr
	bl	sigaction
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	mov	w0, #111
	bl	exit
	b	.LBB0_6
.LBB0_6:
	bl	getpid
	subs	w8, w0, #1
	b.ne	.LBB0_10
	b	.LBB0_7
.LBB0_7:
	adrp	x8, handle_sigterm_pid1
	ldr	w8, [x8, :lo12:handle_sigterm_pid1]
	add	x1, sp, #16
	str	w8, [sp, #16]
	adrp	x8, SIGTERM
	ldr	w0, [x8, :lo12:SIGTERM]
	mov	w2, wzr
	bl	sigaction
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	mov	w0, #111
	bl	exit
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_sig_handlers, .Lfunc_end0-set_sig_handlers
                                        // -- End function
	.type	SIG_IGN,@object                 // @SIG_IGN
	.bss
	.globl	SIG_IGN
	.p2align	2
SIG_IGN:
	.word	0                               // 0x0
	.size	SIG_IGN, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sigemptyset()"
	.size	.L.str, 14
	.type	SIGPIPE,@object                 // @SIGPIPE
	.bss
	.globl	SIGPIPE
	.p2align	2
SIGPIPE:
	.word	0                               // 0x0
	.size	SIGPIPE, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"sigaction(SIGPIPE)"
	.size	.L.str.1, 19
	.type	enter_drain_mode,@object        // @enter_drain_mode
	.bss
	.globl	enter_drain_mode
	.p2align	2
enter_drain_mode:
	.word	0                               // 0x0
	.size	enter_drain_mode, 4
	.type	SIGUSR1,@object                 // @SIGUSR1
	.globl	SIGUSR1
	.p2align	2
SIGUSR1:
	.word	0                               // 0x0
	.size	SIGUSR1, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"sigaction(SIGUSR1)"
	.size	.L.str.2, 19
	.type	handle_sigterm_pid1,@object     // @handle_sigterm_pid1
	.bss
	.globl	handle_sigterm_pid1
	.p2align	2
handle_sigterm_pid1:
	.word	0                               // 0x0
	.size	handle_sigterm_pid1, 4
	.type	SIGTERM,@object                 // @SIGTERM
	.globl	SIGTERM
	.p2align	2
SIGTERM:
	.word	0                               // 0x0
	.size	SIGTERM, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"sigaction(SIGTERM)"
	.size	.L.str.3, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_sig_handlers
	.addrsig_sym sigemptyset
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym sigaction
	.addrsig_sym getpid
	.addrsig_sym SIG_IGN
	.addrsig_sym SIGPIPE
	.addrsig_sym enter_drain_mode
	.addrsig_sym SIGUSR1
	.addrsig_sym handle_sigterm_pid1
	.addrsig_sym SIGTERM