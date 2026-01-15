	.text
	.p2align	2                               // -- Begin function readtokens
	.type	readtokens,@function
readtokens:                             // @readtokens
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	w8, #1
	stur	w8, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	getenv
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_2:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strstr
	str	x0, [sp, #24]
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	add	x1, sp, #24
	ldr	x8, [sp, #24]
	add	x0, x8, #17
	mov	w2, #10
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	strtol
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	adrp	x9, rjobfd
	mov	w8, w0
	str	w8, [x9, :lo12:rjobfd]
	ldr	x8, [sp, #24]
	add	x0, x8, #1
	mov	x1, xzr
	bl	strtol
	adrp	x9, wjobfd
	mov	w8, w0
	str	w8, [x9, :lo12:wjobfd]
	b	.LBB0_4
.LBB0_4:
	adrp	x8, rjobfd
	ldr	w8, [x8, :lo12:rjobfd]
	tbnz	w8, #31, .LBB0_9
	b	.LBB0_5
.LBB0_5:
	adrp	x8, rjobfd
	ldr	w9, [x8, :lo12:rjobfd]
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	adrp	x9, F_SETFL
	ldr	w9, [x9, :lo12:F_SETFL]
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:rjobfd]
	adrp	x8, F_GETFL
	ldr	w1, [x8, :lo12:F_GETFL]
	bl	fcntl
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w8, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	adrp	x9, O_NONBLOCK
	ldr	w9, [x9, :lo12:O_NONBLOCK]
	orr	w2, w8, w9
	bl	fcntl
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, rjobfd
	ldr	w0, [x8, :lo12:rjobfd]
	sub	x1, x29, #9
	mov	w2, #1
	bl	read
	subs	x8, x0, #0
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_6
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	readtokens, .Lfunc_end0-readtokens
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MAKEFLAGS"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	" --jobserver-fds="
	.size	.L.str.1, 18
	.type	rjobfd,@object                  // @rjobfd
	.bss
	.globl	rjobfd
	.p2align	2
rjobfd:
	.word	0                               // 0x0
	.size	rjobfd, 4
	.type	wjobfd,@object                  // @wjobfd
	.globl	wjobfd
	.p2align	2
wjobfd:
	.word	0                               // 0x0
	.size	wjobfd, 4
	.type	F_SETFL,@object                 // @F_SETFL
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.word	0                               // 0x0
	.size	F_SETFL, 4
	.type	F_GETFL,@object                 // @F_GETFL
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.word	0                               // 0x0
	.size	F_GETFL, 4
	.type	O_NONBLOCK,@object              // @O_NONBLOCK
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.word	0                               // 0x0
	.size	O_NONBLOCK, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readtokens
	.addrsig_sym getenv
	.addrsig_sym strstr
	.addrsig_sym strtol
	.addrsig_sym fcntl
	.addrsig_sym read
	.addrsig_sym rjobfd
	.addrsig_sym wjobfd
	.addrsig_sym F_SETFL
	.addrsig_sym F_GETFL
	.addrsig_sym O_NONBLOCK