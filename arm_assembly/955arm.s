	.text
	.globl	time_random_matrix              // -- Begin function time_random_matrix
	.p2align	2
	.type	time_random_matrix,@function
time_random_matrix:                     // @time_random_matrix
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-16]
	bl	random_matrix
	stur	x0, [x29, #-32]
	b	.LBB0_3
.LBB0_2:
	ldur	w0, [x29, #-16]
	ldur	w1, [x29, #-12]
	bl	random_matrix
	stur	x0, [x29, #-32]
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-16]
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_5:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #52]                   // 4-byte Folded Reload
	stur	w8, [x29, #-36]
	ldur	w8, [x29, #-8]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	random_matrix
	stur	x0, [x29, #-48]
	b	.LBB0_9
.LBB0_8:
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-16]
	bl	random_matrix
	stur	x0, [x29, #-48]
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-8]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_11:
	ldur	w8, [x29, #-16]
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #48]                   // 4-byte Folded Reload
	stur	w8, [x29, #-52]
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-20]
	bl	random_matrix
	stur	x0, [x29, #-64]
	bl	clock
	str	x0, [sp, #64]
	stur	wzr, [x29, #-68]
	b	.LBB0_13
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-68]
	subs	w8, w8, #10
	b.ge	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=1
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldur	w3, [x29, #-20]
	ldur	w4, [x29, #-16]
	ldur	x6, [x29, #-32]
	ldur	w7, [x29, #-36]
	ldur	x12, [x29, #-48]
	ldur	w11, [x29, #-52]
	ldur	x10, [x29, #-64]
	ldur	w8, [x29, #-20]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w5, #1
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	bl	gemm_cpu
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_13 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_13
.LBB0_16:
	bl	clock
	str	x0, [sp, #56]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-16]
	ldur	w4, [x29, #-20]
	ldur	w5, [x29, #-4]
	ldur	w6, [x29, #-8]
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	scvtf	s0, x8
	adrp	x8, CLOCKS_PER_SEC
	ldr	s1, [x8, :lo12:CLOCKS_PER_SEC]
	fdiv	s0, s0, s1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	x0, [x29, #-32]
	bl	free
	ldur	x0, [x29, #-48]
	bl	free
	ldur	x0, [x29, #-64]
	bl	free
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	time_random_matrix, .Lfunc_end0-time_random_matrix
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Matrix Multiplication %dx%d * %dx%d, TA=%d, TB=%d: %lf ms\n"
	.size	.L.str, 59
	.type	CLOCKS_PER_SEC,@object          // @CLOCKS_PER_SEC
	.bss
	.globl	CLOCKS_PER_SEC
	.p2align	2
CLOCKS_PER_SEC:
	.word	0x00000000                      // float 0
	.size	CLOCKS_PER_SEC, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym random_matrix
	.addrsig_sym clock
	.addrsig_sym gemm_cpu
	.addrsig_sym printf
	.addrsig_sym free
	.addrsig_sym CLOCKS_PER_SEC