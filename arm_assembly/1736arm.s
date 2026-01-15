	.text
	.p2align	2                               // -- Begin function make_unix_socket
	.type	make_unix_socket,@function
make_unix_socket:                       // @make_unix_socket
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	mov	w8, #-1
	stur	w8, [x29, #-20]
	mov	x8, #3
	str	x8, [sp, #16]
	add	x0, sp, #28
	mov	w1, wzr
	mov	w2, #8
	bl	memset
	adrp	x8, AF_UNIX
	ldr	w8, [x8, :lo12:AF_UNIX]
	str	w8, [sp, #32]
	ldur	x0, [x29, #-16]
	bl	strlen
	subs	x8, x0, #3
	b.ls	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	strlen
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	x2, x0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	x3, #3
	bl	warnx
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_2:
	ldr	w0, [sp, #28]
	ldur	x1, [x29, #-16]
	mov	x2, #3
	bl	strncpy
	ldur	x0, [x29, #-16]
	sub	x1, x29, #28
	bl	stat
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_9
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-28]
	bl	S_ISSOCK
	cbz	x0, .LBB0_7
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	warnx
	ldur	x0, [x29, #-16]
	bl	unlink
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	adds	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_6:
	b	.LBB0_8
.LBB0_7:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarnx
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	adrp	x8, AF_UNIX
	ldr	w0, [x8, :lo12:AF_UNIX]
	adrp	x8, SOCK_STREAM
	ldr	w1, [x8, :lo12:SOCK_STREAM]
	mov	w2, wzr
	bl	socket
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	adds	w8, w8, #1
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	twarn
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_11:
	ldur	w0, [x29, #-20]
	bl	set_nonblocking
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	adds	w8, w8, #1
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-20]
	bl	close
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_13:
	ldur	w0, [x29, #-20]
	add	x1, sp, #28
	mov	w2, #8
	bl	bind
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	adds	w8, w8, #1
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	twarn
	ldur	w0, [x29, #-20]
	bl	close
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_15:
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	w1, [x29, #-20]
	ldur	x2, [x29, #-16]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
	b	.LBB0_17
.LBB0_17:
	ldur	w0, [x29, #-20]
	mov	w1, #1024
	bl	listen
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	adds	w8, w8, #1
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	twarn
	ldur	w0, [x29, #-20]
	bl	close
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_19:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_20:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_unix_socket, .Lfunc_end0-make_unix_socket
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
	.asciz	"socket path %s is too long (%ld characters), where maximum allowed is %ld"
	.size	.L.str, 74
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"removing existing local socket to replace it"
	.size	.L.str.1, 45
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"unlink"
	.size	.L.str.2, 7
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"another file already exists in the given path"
	.size	.L.str.3, 46
	.type	SOCK_STREAM,@object             // @SOCK_STREAM
	.bss
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.word	0                               // 0x0
	.size	SOCK_STREAM, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"socket()"
	.size	.L.str.4, 9
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"bind()"
	.size	.L.str.5, 7
	.type	verbose,@object                 // @verbose
	.bss
	.globl	verbose
	.p2align	3
verbose:
	.xword	0                               // 0x0
	.size	verbose, 8
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"bind %d %s\n"
	.size	.L.str.6, 12
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"listen()"
	.size	.L.str.7, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_unix_socket
	.addrsig_sym memset
	.addrsig_sym strlen
	.addrsig_sym warnx
	.addrsig_sym strncpy
	.addrsig_sym stat
	.addrsig_sym S_ISSOCK
	.addrsig_sym unlink
	.addrsig_sym twarn
	.addrsig_sym twarnx
	.addrsig_sym socket
	.addrsig_sym set_nonblocking
	.addrsig_sym close
	.addrsig_sym bind
	.addrsig_sym printf
	.addrsig_sym listen
	.addrsig_sym AF_UNIX
	.addrsig_sym SOCK_STREAM
	.addrsig_sym verbose