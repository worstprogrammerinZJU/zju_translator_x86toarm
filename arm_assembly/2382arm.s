	.text
	.globl	ctbench_job_make                // -- Begin function ctbench_job_make
	.p2align	2
	.type	ctbench_job_make,@function
ctbench_job_make:                       // @ctbench_job_make
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #8
	bl	calloc
	str	x0, [sp, #16]
	adrp	x8, default_tube
	ldr	w8, [x8, :lo12:default_tube]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	make_tube
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	TUBE_ASSIGN
	bl	ctresettimer
	stur	wzr, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, default_tube
	ldr	w4, [x8, :lo12:default_tube]
	mov	w3, wzr
	mov	w0, w3
	mov	w1, w3
	mov	w2, #1
	bl	make_job
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-8]
	str	x0, [x8, x9, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_1
.LBB0_4:
	bl	ctstoptimer
	stur	wzr, [x29, #-8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-8]
	ldr	x0, [x8, x9, lsl #3]
	bl	job_free
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_5
.LBB0_8:
	ldr	x0, [sp, #16]
	bl	free
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ctbench_job_make, .Lfunc_end0-ctbench_job_make
                                        // -- End function
	.type	default_tube,@object            // @default_tube
	.bss
	.globl	default_tube
	.p2align	2
default_tube:
	.word	0                               // 0x0
	.size	default_tube, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"default"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym ctresettimer
	.addrsig_sym make_job
	.addrsig_sym ctstoptimer
	.addrsig_sym job_free
	.addrsig_sym free
	.addrsig_sym default_tube