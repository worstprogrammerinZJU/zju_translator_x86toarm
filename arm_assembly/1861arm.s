	.text
	.p2align	2                               // -- Begin function read_case_label
	.type	read_case_label,@function
read_case_label:                        // @read_case_label
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, cases
	ldr	w8, [x8, :lo12:cases]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	bl	make_label
	str	x0, [sp, #16]
	bl	read_intexpr
	str	w0, [sp, #12]
	adrp	x8, KELLIPSIS
	ldr	w0, [x8, :lo12:KELLIPSIS]
	bl	next_token
	cbz	x0, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	bl	read_intexpr
	str	w0, [sp, #8]
	mov	w0, #58
	bl	expect
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldr	w2, [sp, #12]
	ldr	w3, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_5
.LBB0_5:
	adrp	x8, cases
	ldr	w8, [x8, :lo12:cases]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	ldr	x2, [sp, #16]
	bl	make_case
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	vec_push
	b	.LBB0_7
.LBB0_6:
	mov	w0, #58
	bl	expect
	adrp	x8, cases
	ldr	w8, [x8, :lo12:cases]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #12]
	ldr	x2, [sp, #16]
	bl	make_case
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	bl	vec_push
	b	.LBB0_7
.LBB0_7:
	adrp	x8, cases
	ldr	w0, [x8, :lo12:cases]
	bl	check_case_duplicates
	ldr	x0, [sp, #16]
	bl	ast_dest
	bl	read_label_tail
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_case_label, .Lfunc_end0-read_case_label
                                        // -- End function
	.type	cases,@object                   // @cases
	.bss
	.globl	cases
	.p2align	2
cases:
	.word	0                               // 0x0
	.size	cases, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray case label"
	.size	.L.str, 17
	.type	KELLIPSIS,@object               // @KELLIPSIS
	.bss
	.globl	KELLIPSIS
	.p2align	2
KELLIPSIS:
	.word	0                               // 0x0
	.size	KELLIPSIS, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"case region is not in correct order: %d ... %d"
	.size	.L.str.1, 47
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_case_label
	.addrsig_sym errort
	.addrsig_sym make_label
	.addrsig_sym read_intexpr
	.addrsig_sym next_token
	.addrsig_sym expect
	.addrsig_sym vec_push
	.addrsig_sym make_case
	.addrsig_sym check_case_duplicates
	.addrsig_sym read_label_tail
	.addrsig_sym ast_dest
	.addrsig_sym cases
	.addrsig_sym KELLIPSIS