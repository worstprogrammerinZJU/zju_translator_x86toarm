	.text
	.globl	cttest_job_100_000_jobs         // -- Begin function cttest_job_100_000_jobs
	.p2align	2
	.type	cttest_job_100_000_jobs,@function
cttest_job_100_000_jobs:                // @cttest_job_100_000_jobs
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, default_tube
	ldr	w8, [x8, :lo12:default_tube]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	make_tube
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	TUBE_ASSIGN
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	mov	w9, #34464
	movk	w9, #1, lsl #16
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
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	bl	get_all_jobs_used
	mov	w8, #34464
	movk	w8, #1, lsl #16
	subs	w8, w0, w8
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	assertf
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	mov	w9, #34464
	movk	w9, #1, lsl #16
	subs	w8, w8, w9
	b.gt	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w0, [x29, #-4]
	bl	job_find
	bl	job_free
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_8:
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	bl	get_all_jobs_used
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	bl	get_all_jobs_used
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	assertf
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_job_100_000_jobs, .Lfunc_end0-cttest_job_100_000_jobs
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
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"should match"
	.size	.L.str.1, 13
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"get_all_jobs_used() => %zu\n"
	.size	.L.str.2, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym get_all_jobs_used
	.addrsig_sym job_free
	.addrsig_sym job_find
	.addrsig_sym fprintf
	.addrsig_sym default_tube
	.addrsig_sym stderr