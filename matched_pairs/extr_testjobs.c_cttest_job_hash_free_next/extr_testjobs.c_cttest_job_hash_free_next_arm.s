	.text
	.globl	cttest_job_hash_free_next       // -- Begin function cttest_job_hash_free_next
	.p2align	2
	.type	cttest_job_hash_free_next,@function
cttest_job_hash_free_next:              // @cttest_job_hash_free_next
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	w8, #97
	stur	w8, [x29, #-20]
	mov	w8, #12386
	str	w8, [sp, #24]
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
	ldr	w5, [sp, #24]
	mov	w3, wzr
	str	w3, [sp, #20]                   // 4-byte Folded Spill
	mov	w0, w3
	mov	w1, w3
	mov	w2, #1
	str	w2, [sp, #16]                   // 4-byte Folded Spill
	bl	make_job_with_id
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w2, [sp, #16]                   // 4-byte Folded Reload
	ldr	w3, [sp, #20]                   // 4-byte Folded Reload
	stur	x0, [x29, #-16]
	ldr	w4, [x8, :lo12:default_tube]
	ldur	w5, [x29, #-20]
	mov	w0, w3
	mov	w1, w3
	bl	make_job_with_id
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	assertf
	ldur	x0, [x29, #-16]
	bl	job_free
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	assertf
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	cttest_job_hash_free_next, .Lfunc_end0-cttest_job_hash_free_next
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
	.asciz	"b should be chained to a"
	.size	.L.str.1, 25
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"job should be missing"
	.size	.L.str.2, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job_with_id
	.addrsig_sym assertf
	.addrsig_sym job_free
	.addrsig_sym default_tube