	.text
	.globl	get_random_paths                // -- Begin function get_random_paths
	.p2align	2
	.type	get_random_paths,@function
get_random_paths:                       // @get_random_paths
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	w0, [x29, #-12]
	mov	w1, #8
	bl	calloc
	str	x0, [sp, #8]
	adrp	x0, mutex
	add	x0, x0, :lo12:mutex
	bl	pthread_mutex_lock
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand
	ldr	w9, [sp, #16]
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	adrp	x0, mutex
	add	x0, x0, :lo12:mutex
	bl	pthread_mutex_unlock
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_random_paths, .Lfunc_end0-get_random_paths
                                        // -- End function
	.type	mutex,@object                   // @mutex
	.bss
	.globl	mutex
	.p2align	2
mutex:
	.word	0                               // 0x0
	.size	mutex, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym pthread_mutex_lock
	.addrsig_sym rand
	.addrsig_sym pthread_mutex_unlock
	.addrsig_sym mutex