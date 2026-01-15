	.text
	.p2align	2                               // -- Begin function set_nonblocking
	.type	set_nonblocking,@function
set_nonblocking:                        // @set_nonblocking
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	adrp	x8, F_GETFL
	ldr	w1, [x8, :lo12:F_GETFL]
	mov	w2, wzr
	bl	fcntl
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	w0, [sp, #8]
	adrp	x8, F_SETFL
	ldr	w1, [x8, :lo12:F_SETFL]
	ldr	w8, [sp, #4]
	adrp	x9, O_NONBLOCK
	ldr	w9, [x9, :lo12:O_NONBLOCK]
	orr	w2, w8, w9
	bl	fcntl
	str	w0, [sp]
	ldr	w8, [sp]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	set_nonblocking, .Lfunc_end0-set_nonblocking
                                        // -- End function
	.type	F_GETFL,@object                 // @F_GETFL
	.bss
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.word	0                               // 0x0
	.size	F_GETFL, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"getting flags"
	.size	.L.str, 14
	.type	F_SETFL,@object                 // @F_SETFL
	.bss
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.word	0                               // 0x0
	.size	F_SETFL, 4
	.type	O_NONBLOCK,@object              // @O_NONBLOCK
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.word	0                               // 0x0
	.size	O_NONBLOCK, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"setting O_NONBLOCK"
	.size	.L.str.1, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_nonblocking
	.addrsig_sym fcntl
	.addrsig_sym twarn
	.addrsig_sym F_GETFL
	.addrsig_sym F_SETFL
	.addrsig_sym O_NONBLOCK