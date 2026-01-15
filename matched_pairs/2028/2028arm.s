	.text
	.p2align	2                               // -- Begin function conn_want_command
	.type	conn_want_command,@function
conn_want_command:                      // @conn_want_command
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, #114
	bl	epollq_add
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	adrp	x9, Copy
	ldr	x9, [x9, :lo12:Copy]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	job_free
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	adrp	x8, STATE_WANT_COMMAND
	ldr	w8, [x8, :lo12:STATE_WANT_COMMAND]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	conn_want_command, .Lfunc_end0-conn_want_command
                                        // -- End function
	.type	Copy,@object                    // @Copy
	.bss
	.globl	Copy
	.p2align	3
Copy:
	.xword	0                               // 0x0
	.size	Copy, 8
	.type	STATE_WANT_COMMAND,@object      // @STATE_WANT_COMMAND
	.globl	STATE_WANT_COMMAND
	.p2align	2
STATE_WANT_COMMAND:
	.word	0                               // 0x0
	.size	STATE_WANT_COMMAND, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conn_want_command
	.addrsig_sym epollq_add
	.addrsig_sym job_free
	.addrsig_sym Copy
	.addrsig_sym STATE_WANT_COMMAND