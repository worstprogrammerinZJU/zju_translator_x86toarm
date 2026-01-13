	.text
	.p2align	2                               // -- Begin function get_delayed_job_ct
	.type	get_delayed_job_ct,@function
get_delayed_job_ct:                     // @get_delayed_job_ct
// %bb.0:
	sub	sp, sp, #32
	adrp	x8, tubes
	add	x8, x8, :lo12:tubes
	str	x8, [sp]                        // 8-byte Folded Spill
	str	wzr, [sp, #20]
	str	xzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	adrp	x9, tubes
	ldr	x9, [x9, :lo12:tubes]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldrsw	x8, [sp, #20]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_4:
	ldr	w0, [sp, #20]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_delayed_job_ct, .Lfunc_end0-get_delayed_job_ct
                                        // -- End function
	.type	tubes,@object                   // @tubes
	.bss
	.globl	tubes
	.p2align	3
tubes:
	.zero	16
	.size	tubes, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_delayed_job_ct
	.addrsig_sym tubes