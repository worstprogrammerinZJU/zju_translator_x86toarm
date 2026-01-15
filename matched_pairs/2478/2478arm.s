	.text
	.p2align	2                               // -- Begin function kill_srvpid
	.type	kill_srvpid,@function
kill_srvpid:                            // @kill_srvpid
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, srvpid
	ldr	x8, [x8, :lo12:srvpid]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	adrp	x8, srvpid
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [x8, :lo12:srvpid]
	adrp	x8, SIGTERM
	ldr	w1, [x8, :lo12:SIGTERM]
	bl	kill
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, :lo12:srvpid]
	mov	w2, wzr
	mov	w1, w2
	bl	waitpid
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	xzr, [x8, :lo12:srvpid]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	kill_srvpid, .Lfunc_end0-kill_srvpid
                                        // -- End function
	.type	srvpid,@object                  // @srvpid
	.bss
	.globl	srvpid
	.p2align	3
srvpid:
	.xword	0                               // 0x0
	.size	srvpid, 8
	.type	SIGTERM,@object                 // @SIGTERM
	.globl	SIGTERM
	.p2align	2
SIGTERM:
	.word	0                               // 0x0
	.size	SIGTERM, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kill_srvpid
	.addrsig_sym kill
	.addrsig_sym waitpid
	.addrsig_sym srvpid
	.addrsig_sym SIGTERM