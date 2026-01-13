	.text
	.p2align	2                               // -- Begin function warn_systemd_ignored_option
	.type	warn_systemd_ignored_option,@function
warn_systemd_ignored_option:            // @warn_systemd_ignored_option
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	mov	w0, wzr
	bl	sd_listen_fds
	subs	x8, x0, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	warnx
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	warn_systemd_ignored_option, .Lfunc_end0-warn_systemd_ignored_option
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"inherited listen fd; ignoring option: %s %s"
	.size	.L.str, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym warn_systemd_ignored_option
	.addrsig_sym sd_listen_fds
	.addrsig_sym warnx