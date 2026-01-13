	.text
	.p2align	2                               // -- Begin function mustforksrv
	.type	mustforksrv,@function
mustforksrv:                            // @mustforksrv
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	make_server_socket
	adrp	x8, srv
	str	w0, [x8, :lo12:srv]
	ldr	w8, [x8, :lo12:srv]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	puts
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	add	x2, sp, #16
	mov	x8, #4
	str	x8, [sp, #16]
	adrp	x8, srv
	ldr	w0, [x8, :lo12:srv]
	sub	x1, x29, #8
	bl	getsockname
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	subs	x8, x8, #4
	b.ls	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	puts
	mov	w0, #1
	bl	exit
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-8]
	bl	ntohs
	str	w0, [sp, #8]
	bl	fork
	adrp	x8, srvpid
	str	x0, [x8, :lo12:srvpid]
	ldr	x8, [x8, :lo12:srvpid]
	subs	x8, x8, #0
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_7
.LBB0_7:
	adrp	x8, srvpid
	ldr	x8, [x8, :lo12:srvpid]
	subs	x8, x8, #0
	b.le	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, kill_srvpid
	ldr	w0, [x8, :lo12:kill_srvpid]
	bl	atexit
	ldr	w1, [sp, #8]
	adrp	x8, srvpid
	ldr	x2, [x8, :lo12:srvpid]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_9:
	bl	set_sig_handler
	bl	prot_init
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	srv_acquire_wal
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	srvserve
	mov	w0, #1
	bl	exit
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	mustforksrv, .Lfunc_end0-mustforksrv
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"127.0.0.1"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"0"
	.size	.L.str.1, 2
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	4
	.size	srv, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"mustforksrv failed"
	.size	.L.str.2, 19
	.type	srvpid,@object                  // @srvpid
	.bss
	.globl	srvpid
	.p2align	3
srvpid:
	.xword	0                               // 0x0
	.size	srvpid, 8
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"fork"
	.size	.L.str.3, 5
	.type	kill_srvpid,@object             // @kill_srvpid
	.bss
	.globl	kill_srvpid
	.p2align	2
kill_srvpid:
	.word	0                               // 0x0
	.size	kill_srvpid, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"start server port=%d pid=%d\n"
	.size	.L.str.4, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustforksrv
	.addrsig_sym make_server_socket
	.addrsig_sym puts
	.addrsig_sym exit
	.addrsig_sym getsockname
	.addrsig_sym ntohs
	.addrsig_sym fork
	.addrsig_sym twarn
	.addrsig_sym atexit
	.addrsig_sym printf
	.addrsig_sym set_sig_handler
	.addrsig_sym prot_init
	.addrsig_sym srv_acquire_wal
	.addrsig_sym srvserve
	.addrsig_sym srv
	.addrsig_sym srvpid
	.addrsig_sym kill_srvpid