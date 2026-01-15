	.text
	.globl	srv_acquire_wal                 // -- Begin function srv_acquire_wal
	.p2align	2
	.type	srv_acquire_wal,@function
srv_acquire_wal:                        // @srv_acquire_wal
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	waldirlock
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	mov	w0, #10
	bl	exit
	b	.LBB0_3
.LBB0_3:
	add	x1, sp, #24
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	str	xzr, [sp, #24]
	str	xzr, [sp, #32]
	mov	x8, x1
	str	x8, [sp, #24]
	mov	x8, x1
	str	x8, [sp, #32]
	ldur	x0, [x29, #-8]
	bl	walinit
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	prot_replay
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarnx
	mov	w0, #1
	bl	exit
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	srv_acquire_wal, .Lfunc_end0-srv_acquire_wal
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to lock wal dir %s"
	.size	.L.str, 26
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"failed to replay log"
	.size	.L.str.1, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym waldirlock
	.addrsig_sym twarnx
	.addrsig_sym exit
	.addrsig_sym walinit
	.addrsig_sym prot_replay