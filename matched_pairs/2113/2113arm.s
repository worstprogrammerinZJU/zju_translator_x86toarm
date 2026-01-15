	.text
	.globl	sd_booted                       // -- Begin function sd_booted
	.p2align	2
	.type	sd_booted,@function
sd_booted:                              // @sd_booted
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	add	x1, sp, #16
	bl	lstat
	subs	x8, x0, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	add	x1, sp, #8
	bl	lstat
	subs	x8, x0, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, ne
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	sd_booted, .Lfunc_end0-sd_booted
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/sys/fs/cgroup"
	.size	.L.str, 15
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"/sys/fs/cgroup/systemd"
	.size	.L.str.1, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lstat