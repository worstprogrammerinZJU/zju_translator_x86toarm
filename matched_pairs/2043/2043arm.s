	.text
	.p2align	2                               // -- Begin function h_conn
	.type	h_conn,@function
h_conn:                                 // @h_conn
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	sturh	w1, [x29, #-6]
	str	x2, [sp, #16]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #28]
	subs	w8, w8, w9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	ldur	w0, [x29, #-4]
	bl	close
	ldr	x0, [sp, #16]
	bl	connclose
	bl	epollq_apply
	b	.LBB0_12
.LBB0_2:
	ldursh	w8, [x29, #-6]
	subs	w8, w8, #104
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp, #16]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	conn_process_io
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]
	bl	cmd_data_ready
	mov	w8, #0
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #20]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	bl	scan_line_end
	ldr	x8, [sp, #16]
	str	w0, [x8, #24]
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	bl	dispatch_cmd
	ldr	x0, [sp, #16]
	bl	fill_extra_data
	b	.LBB0_5
.LBB0_9:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	adrp	x9, STATE_CLOSE
	ldr	x9, [x9, :lo12:STATE_CLOSE]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #16]
	bl	epollq_rmconn
	ldr	x0, [sp, #16]
	bl	connclose
	b	.LBB0_11
.LBB0_11:
	bl	epollq_apply
	b	.LBB0_12
.LBB0_12:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	h_conn, .Lfunc_end0-h_conn
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Argh! event fd doesn't match conn fd."
	.size	.L.str, 38
	.type	STATE_CLOSE,@object             // @STATE_CLOSE
	.bss
	.globl	STATE_CLOSE
	.p2align	3
STATE_CLOSE:
	.xword	0                               // 0x0
	.size	STATE_CLOSE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym h_conn
	.addrsig_sym twarnx
	.addrsig_sym close
	.addrsig_sym connclose
	.addrsig_sym epollq_apply
	.addrsig_sym conn_process_io
	.addrsig_sym cmd_data_ready
	.addrsig_sym scan_line_end
	.addrsig_sym dispatch_cmd
	.addrsig_sym fill_extra_data
	.addrsig_sym epollq_rmconn
	.addrsig_sym STATE_CLOSE