	.text
	.p2align	2                               // -- Begin function is_job_reserved_by_conn
	.type	is_job_reserved_by_conn,@function
is_job_reserved_by_conn:                // @is_job_reserved_by_conn
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #8]
	ldr	x10, [sp, #24]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, Reserved
	ldr	x9, [x9, :lo12:Reserved]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	is_job_reserved_by_conn, .Lfunc_end0-is_job_reserved_by_conn
                                        // -- End function
	.type	Reserved,@object                // @Reserved
	.bss
	.globl	Reserved
	.p2align	3
Reserved:
	.xword	0                               // 0x0
	.size	Reserved, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_job_reserved_by_conn
	.addrsig_sym Reserved