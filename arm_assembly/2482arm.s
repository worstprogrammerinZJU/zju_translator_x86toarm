	.text
	.p2align	2                               // -- Begin function mustforksrv_unix
	.type	mustforksrv_unix,@function
mustforksrv_unix:                       // @mustforksrv_unix
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	bl	ctdir
	mov	x3, x0
	adrp	x0, mustforksrv_unix.path
	add	x0, x0, :lo12:mustforksrv_unix.path
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	mov	w1, #90
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	snprintf
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	add	x0, sp, #41
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w1, #95
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	snprintf
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	mov	x1, xzr
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
	bl	fork
	adrp	x8, srvpid
	str	x0, [x8, :lo12:srvpid]
	ldr	x8, [x8, :lo12:srvpid]
	subs	x8, x8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_4
.LBB0_4:
	adrp	x8, srvpid
	ldr	x8, [x8, :lo12:srvpid]
	subs	x8, x8, #0
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, kill_srvpid
	ldr	w0, [x8, :lo12:kill_srvpid]
	bl	atexit
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, mustforksrv_unix.path
	add	x1, x1, :lo12:mustforksrv_unix.path
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	printf
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	exist
	bl	assert
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_6:
	bl	set_sig_handler
	bl	prot_init
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	srv_acquire_wal
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	srvserve
	mov	w0, #1
	bl	exit
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	mustforksrv_unix, .Lfunc_end0-mustforksrv_unix
                                        // -- End function
	.type	mustforksrv_unix.path,@object   // @mustforksrv_unix.path
	.local	mustforksrv_unix.path
	.comm	mustforksrv_unix.path,90,1
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/socket"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"unix:%s"
	.size	.L.str.1, 8
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
	.asciz	"mustforksrv_unix failed"
	.size	.L.str.2, 24
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
	.asciz	"start server socket=%s\n"
	.size	.L.str.4, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustforksrv_unix
	.addrsig_sym snprintf
	.addrsig_sym ctdir
	.addrsig_sym make_server_socket
	.addrsig_sym puts
	.addrsig_sym exit
	.addrsig_sym fork
	.addrsig_sym twarn
	.addrsig_sym atexit
	.addrsig_sym printf
	.addrsig_sym assert
	.addrsig_sym exist
	.addrsig_sym set_sig_handler
	.addrsig_sym prot_init
	.addrsig_sym srv_acquire_wal
	.addrsig_sym srvserve
	.addrsig_sym mustforksrv_unix.path
	.addrsig_sym srv
	.addrsig_sym srvpid
	.addrsig_sym kill_srvpid