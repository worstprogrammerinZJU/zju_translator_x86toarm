	.text
	.globl	run_compare                     // -- Begin function run_compare
	.p2align	2
	.type	run_compare,@function
run_compare:                            // @run_compare
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #4
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	x8, [x29, #-16]
	ldr	x2, [x8]
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	b	.LBB0_16
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #4
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	mov	x8, xzr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	train_compare
	b	.LBB0_16
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	validate_compare
	b	.LBB0_15
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcmp
	cbnz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	SortMaster3000
	b	.LBB0_14
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	BattleRoyaleWithCheese
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	run_compare, .Lfunc_end0-run_compare
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n"
	.size	.L.str, 60
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"train"
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"valid"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"sort"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"battle"
	.size	.L.str.4, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym strcmp
	.addrsig_sym train_compare
	.addrsig_sym validate_compare
	.addrsig_sym SortMaster3000
	.addrsig_sym BattleRoyaleWithCheese
	.addrsig_sym stderr