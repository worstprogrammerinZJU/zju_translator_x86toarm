	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, srv
	add	x8, x8, :lo12:srv
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	w0, [x29, #-8]
	bl	UNUSED_PARAMETER
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, progname
	str	x8, [x9, :lo12:progname]
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	bl	setlinebuf
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	optparse
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	getpid
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #16]
	ldr	w1, [x8, #12]
	bl	make_server_socket
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarnx
	mov	w0, #111
	bl	exit
	b	.LBB0_4
.LBB0_4:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	str	w8, [x9, #8]
	bl	prot_init
	adrp	x8, srv
	ldr	x8, [x8, :lo12:srv]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, srv
	ldr	x0, [x8, :lo12:srv]
	bl	su
	b	.LBB0_6
.LBB0_6:
	bl	set_sig_handlers
	adrp	x0, srv
	add	x0, x0, :lo12:srv
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	srv_acquire_wal
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	srvserve
	mov	w0, wzr
	bl	exit
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	progname,@object                // @progname
	.bss
	.globl	progname
	.p2align	3
progname:
	.xword	0
	.size	progname, 8
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	srv,@object                     // @srv
	.globl	srv
	.p2align	3
srv:
	.zero	24
	.size	srv, 24
	.type	verbose,@object                 // @verbose
	.globl	verbose
	.p2align	3
verbose:
	.xword	0                               // 0x0
	.size	verbose, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pid %d\n"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"make_server_socket()"
	.size	.L.str.1, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym setlinebuf
	.addrsig_sym optparse
	.addrsig_sym printf
	.addrsig_sym getpid
	.addrsig_sym make_server_socket
	.addrsig_sym twarnx
	.addrsig_sym exit
	.addrsig_sym prot_init
	.addrsig_sym su
	.addrsig_sym set_sig_handlers
	.addrsig_sym srv_acquire_wal
	.addrsig_sym srvserve
	.addrsig_sym progname
	.addrsig_sym stdout
	.addrsig_sym srv
	.addrsig_sym verbose