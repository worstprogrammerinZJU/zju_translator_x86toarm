	.text
	.p2align	2                               // -- Begin function delete_temp_files
	.type	delete_temp_files,@function
delete_temp_files:                      // @delete_temp_files
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	adrp	x8, tmpfiles
	ldr	w0, [x8, :lo12:tmpfiles]
	bl	vec_len
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, tmpfiles
	ldr	w0, [x8, :lo12:tmpfiles]
	ldur	w1, [x29, #-4]
	bl	vec_get
	bl	unlink
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	delete_temp_files, .Lfunc_end0-delete_temp_files
                                        // -- End function
	.type	tmpfiles,@object                // @tmpfiles
	.bss
	.globl	tmpfiles
	.p2align	2
tmpfiles:
	.word	0                               // 0x0
	.size	tmpfiles, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym delete_temp_files
	.addrsig_sym vec_len
	.addrsig_sym unlink
	.addrsig_sym vec_get
	.addrsig_sym tmpfiles