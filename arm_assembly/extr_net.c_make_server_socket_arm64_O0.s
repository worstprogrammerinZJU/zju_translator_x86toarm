	.text
	.globl	make_server_socket              // -- Begin function make_server_socket
	.p2align	2
	.type	make_server_socket,@function
make_server_socket:                     // @make_server_socket
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	mov	w8, #-1
	str	w8, [sp, #4]
	mov	w0, #1
	bl	sd_listen_fds
	str	w0, [sp]
	ldr	w8, [sp]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_2:
	ldr	w8, [sp]
	subs	w8, w8, #0
	b.le	.LBB0_14
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]
	subs	w8, w8, #1
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarnx
	b	.LBB0_5
.LBB0_5:
	adrp	x8, SD_LISTEN_FDS_START
	ldr	w8, [x8, :lo12:SD_LISTEN_FDS_START]
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	adrp	x8, SOCK_STREAM
	ldr	w2, [x8, :lo12:SOCK_STREAM]
	mov	w4, wzr
	mov	w1, w4
	mov	w3, #1
	bl	sd_is_socket_inet
	str	w0, [sp]
	ldr	w8, [sp]
	subs	w8, w8, #0
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	ldr	w9, [sp]
	mov	w8, wzr
	subs	w8, w8, w9
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_7:
	ldr	w8, [sp]
	cbnz	w8, .LBB0_13
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #4]
	adrp	x8, SOCK_STREAM
	ldr	w1, [x8, :lo12:SOCK_STREAM]
	mov	w2, #1
	mov	x3, xzr
	mov	w4, wzr
	bl	sd_is_socket_unix
	str	w0, [sp]
	ldr	w8, [sp]
	subs	w8, w8, #0
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	ldr	w9, [sp]
	mov	w8, wzr
	subs	w8, w8, w9
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_10:
	ldr	w8, [sp]
	cbnz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	twarnx
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_14:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_17
	b	.LBB0_15
.LBB0_15:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	mov	w2, #5
	bl	strncmp
	cbnz	w0, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #16]
	add	x0, x8, #5
	bl	make_unix_socket
	stur	w0, [x29, #-4]
	b	.LBB0_18
.LBB0_17:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	make_inet_socket
	stur	w0, [x29, #-4]
	b	.LBB0_18
.LBB0_18:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_server_socket, .Lfunc_end0-make_server_socket
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sd_listen_fds"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"inherited more than one listen socket; ignoring all but the first"
	.size	.L.str.1, 66
	.type	SD_LISTEN_FDS_START,@object     // @SD_LISTEN_FDS_START
	.bss
	.globl	SD_LISTEN_FDS_START
	.p2align	2
SD_LISTEN_FDS_START:
	.word	0                               // 0x0
	.size	SD_LISTEN_FDS_START, 4
	.type	SOCK_STREAM,@object             // @SOCK_STREAM
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.word	0                               // 0x0
	.size	SOCK_STREAM, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"sd_is_socket_inet"
	.size	.L.str.2, 18
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"sd_is_socket_unix"
	.size	.L.str.3, 18
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"inherited fd is not a TCP or UNIX listening socket"
	.size	.L.str.4, 51
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"unix:"
	.size	.L.str.5, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_listen_fds
	.addrsig_sym twarn
	.addrsig_sym twarnx
	.addrsig_sym sd_is_socket_inet
	.addrsig_sym sd_is_socket_unix
	.addrsig_sym strncmp
	.addrsig_sym make_unix_socket
	.addrsig_sym make_inet_socket
	.addrsig_sym SD_LISTEN_FDS_START
	.addrsig_sym SOCK_STREAM
	.addrsig_sym errno