	.text
	.globl	cttest_job_creation             // -- Begin function cttest_job_creation
	.p2align	2
	.type	cttest_job_creation,@function
cttest_job_creation:                    // @cttest_job_creation
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, default_tube
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w8, [x8, :lo12:default_tube]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	make_tube
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	TUBE_ASSIGN
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w4, [x8, :lo12:default_tube]
	mov	w2, #1
	mov	w0, w2
	mov	w3, wzr
	mov	w1, w3
	bl	make_job
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	cset	w8, eq
	and	w0, w8, #0x1
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	assertf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_job_creation, .Lfunc_end0-cttest_job_creation
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
	.asciz	"priority should match"
	.size	.L.str.1, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym default_tube