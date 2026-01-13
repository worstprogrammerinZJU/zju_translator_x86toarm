	.text
	.p2align	2                               // -- Begin function do_list_tubes
	.type	do_list_tubes,@function
do_list_tubes:                          // @do_list_tubes
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x8, #6
	str	x8, [sp, #16]
	str	xzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	strlen
	add	w9, w0, #3
	ldr	x8, [sp, #16]
	add	x8, x8, w9, sxtw
	str	x8, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	allocate_job
	ldur	x8, [x29, #-8]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	adrp	x8, MSG_OUT_OF_MEMORY
	ldr	w1, [x8, :lo12:MSG_OUT_OF_MEMORY]
	bl	reply_serr
	b	.LBB0_11
.LBB0_6:
	adrp	x8, Copy
	ldr	w8, [x8, :lo12:Copy]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-24]
	mov	w1, #5
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	snprintf
	ldur	x8, [x29, #-24]
	add	x8, x8, w0, sxtw
	stur	x8, [x29, #-24]
	str	xzr, [sp, #24]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	strlen
	mov	w8, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	add	w1, w8, #4
	ldr	x8, [sp, #32]
	ldr	x3, [x8]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	snprintf
	ldur	x8, [x29, #-24]
	add	x8, x8, w0, sxtw
	stur	x8, [x29, #-24]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_10:
	ldur	x9, [x29, #-24]
	mov	w8, #13
	strb	w8, [x9]
	ldur	x9, [x29, #-24]
	mov	w8, #10
	strb	w8, [x9, #1]
	ldur	x8, [x29, #-8]
	str	xzr, [x8]
	ldur	x0, [x29, #-8]
	adrp	x8, STATE_SEND_JOB
	ldr	w1, [x8, :lo12:STATE_SEND_JOB]
	ldr	x8, [sp, #16]
	subs	x3, x8, #2
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	reply_line
	b	.LBB0_11
.LBB0_11:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	do_list_tubes, .Lfunc_end0-do_list_tubes
                                        // -- End function
	.type	MSG_OUT_OF_MEMORY,@object       // @MSG_OUT_OF_MEMORY
	.bss
	.globl	MSG_OUT_OF_MEMORY
	.p2align	2
MSG_OUT_OF_MEMORY:
	.word	0                               // 0x0
	.size	MSG_OUT_OF_MEMORY, 4
	.type	Copy,@object                    // @Copy
	.globl	Copy
	.p2align	2
Copy:
	.word	0                               // 0x0
	.size	Copy, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"---\n"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"- %s\n"
	.size	.L.str.1, 6
	.type	STATE_SEND_JOB,@object          // @STATE_SEND_JOB
	.bss
	.globl	STATE_SEND_JOB
	.p2align	2
STATE_SEND_JOB:
	.word	0                               // 0x0
	.size	STATE_SEND_JOB, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"OK %zu\r\n"
	.size	.L.str.2, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_list_tubes
	.addrsig_sym strlen
	.addrsig_sym allocate_job
	.addrsig_sym reply_serr
	.addrsig_sym snprintf
	.addrsig_sym reply_line
	.addrsig_sym MSG_OUT_OF_MEMORY
	.addrsig_sym Copy
	.addrsig_sym STATE_SEND_JOB