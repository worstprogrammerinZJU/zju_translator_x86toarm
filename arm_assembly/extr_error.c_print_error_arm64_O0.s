	.text
	.p2align	2                               // -- Begin function print_error
	.type	print_error,@function
print_error:                            // @print_error
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	w4, [sp, #28]
	adrp	x8, stderr
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w9, [x8, :lo12:stderr]
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:stderr]
	bl	fileno
	bl	isatty
	mov	x10, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	subs	x10, x10, #0
	csel	x1, x8, x9, ne
	ldur	x2, [x29, #-24]
	bl	fprintf
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:stderr]
	ldur	x2, [x29, #-8]
	ldur	x3, [x29, #-16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:stderr]
	ldr	x1, [sp, #32]
	ldr	w2, [sp, #28]
	bl	vfprintf
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	fprintf
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	print_error, .Lfunc_end0-print_error
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[1;31m[%s]\033[0m "
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"[%s] "
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s: %s: "
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print_error
	.addrsig_sym fprintf
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym vfprintf
	.addrsig_sym stderr