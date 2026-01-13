	.text
	.globl	cttest_job_hash_free            // -- Begin function cttest_job_hash_free
	.p2align	2
	.type	cttest_job_hash_free,@function
cttest_job_hash_free:                   // @cttest_job_hash_free
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, #83
	stur	w8, [x29, #-12]
	adrp	x8, default_tube
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w8, [x8, :lo12:default_tube]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	make_tube
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	TUBE_ASSIGN
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w4, [x8, :lo12:default_tube]
	ldur	w5, [x29, #-12]
	mov	w3, wzr
	mov	w0, w3
	mov	w1, w3
	mov	w2, #1
	bl	make_job_with_id
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	job_free
	ldur	w0, [x29, #-12]
	bl	job_find
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	assertf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_job_hash_free, .Lfunc_end0-cttest_job_hash_free
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
	.asciz	"job should be missing"
	.size	.L.str.1, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job_with_id
	.addrsig_sym job_free
	.addrsig_sym assertf
	.addrsig_sym job_find
	.addrsig_sym default_tube