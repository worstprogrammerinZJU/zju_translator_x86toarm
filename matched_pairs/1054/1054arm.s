	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	adrp	x8, defaultint
	mov	w0, #3
	stur	w0, [x29, #-4]                  // 4-byte Folded Spill
	str	w0, [x8, :lo12:defaultint]
	ldr	w1, [x8, :lo12:defaultint]
	bl	expect
	adrp	x8, val
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:val]
	mov	w0, #21
	bl	expect
	ldr	x8, [sp]                        // 8-byte Folded Reload
	mov	w0, #22
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	str	w0, [x8, :lo12:val]
	ldr	w1, [x8, :lo12:val]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	adrp	x8, p1
	ldr	x8, [x8, :lo12:p1]
	ldr	w1, [x8]
	bl	expect
	adrp	x8, a1
	ldr	x9, [x8, :lo12:a1]
	mov	w0, #23
	str	w0, [x9, #4]
	ldr	x8, [x8, :lo12:a1]
	ldr	w1, [x8, #4]
	bl	expect
	adrp	x8, a2
	ldr	x8, [x8, :lo12:a2]
	ldr	w1, [x8, #4]
	mov	w0, #25
	bl	expect
	adrp	x8, x1
	mov	w0, #1
	str	w0, [x8, :lo12:x1]
	adrp	x10, x2
	str	x10, [sp, #16]                  // 8-byte Folded Spill
	mov	w9, #2
	stur	w9, [x29, #-8]                  // 4-byte Folded Spill
	str	w9, [x10, :lo12:x2]
	ldr	w1, [x8, :lo12:x1]
	bl	expect
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]                  // 4-byte Folded Reload
	ldr	w1, [x8, :lo12:x2]
	bl	expect
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	adrp	x8, x3
	str	w0, [x8, :lo12:x3]
	ldr	w1, [x8, :lo12:x3]
	bl	expect
	adrp	x8, x4
	ldr	w1, [x8, :lo12:x4]
	mov	w0, #4
	bl	expect
	adrp	x8, x5
	ldr	w1, [x8, :lo12:x5]
	mov	w0, #5
	bl	expect
	adrp	x8, x6
	mov	w0, #6
	str	w0, [x8, :lo12:x6]
	ldr	w1, [x8, :lo12:x6]
	bl	expect
	adrp	x8, s1
	ldr	w1, [x8, :lo12:s1]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	expect_string
	adrp	x8, s2
	ldr	w1, [x8, :lo12:s2]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	expect_string
	adrp	x8, l1
	ldr	w1, [x8, :lo12:l1]
	mov	w0, #8
	bl	expectl
	adrp	x8, intp
	ldr	x8, [x8, :lo12:intp]
	ldr	w1, [x8]
	mov	w0, #9
	bl	expectl
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"global variable"
	.size	.L.str, 16
	.type	defaultint,@object              // @defaultint
	.bss
	.globl	defaultint
	.p2align	2
defaultint:
	.word	0                               // 0x0
	.size	defaultint, 4
	.type	val,@object                     // @val
	.globl	val
	.p2align	2
val:
	.word	0                               // 0x0
	.size	val, 4
	.type	p1,@object                      // @p1
	.globl	p1
	.p2align	3
p1:
	.xword	0
	.size	p1, 8
	.type	a1,@object                      // @a1
	.globl	a1
	.p2align	3
a1:
	.xword	0
	.size	a1, 8
	.type	a2,@object                      // @a2
	.globl	a2
	.p2align	3
a2:
	.xword	0
	.size	a2, 8
	.type	x1,@object                      // @x1
	.globl	x1
	.p2align	2
x1:
	.word	0                               // 0x0
	.size	x1, 4
	.type	x2,@object                      // @x2
	.globl	x2
	.p2align	2
x2:
	.word	0                               // 0x0
	.size	x2, 4
	.type	x3,@object                      // @x3
	.globl	x3
	.p2align	2
x3:
	.word	0                               // 0x0
	.size	x3, 4
	.type	x4,@object                      // @x4
	.globl	x4
	.p2align	2
x4:
	.word	0                               // 0x0
	.size	x4, 4
	.type	x5,@object                      // @x5
	.globl	x5
	.p2align	2
x5:
	.word	0                               // 0x0
	.size	x5, 4
	.type	x6,@object                      // @x6
	.globl	x6
	.p2align	2
x6:
	.word	0                               // 0x0
	.size	x6, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"abcd"
	.size	.L.str.1, 5
	.type	s1,@object                      // @s1
	.bss
	.globl	s1
	.p2align	2
s1:
	.word	0                               // 0x0
	.size	s1, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ABCD"
	.size	.L.str.2, 5
	.type	s2,@object                      // @s2
	.bss
	.globl	s2
	.p2align	2
s2:
	.word	0                               // 0x0
	.size	s2, 4
	.type	l1,@object                      // @l1
	.globl	l1
	.p2align	2
l1:
	.word	0                               // 0x0
	.size	l1, 4
	.type	intp,@object                    // @intp
	.globl	intp
	.p2align	3
intp:
	.xword	0
	.size	intp, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym expect_string
	.addrsig_sym expectl
	.addrsig_sym defaultint
	.addrsig_sym val
	.addrsig_sym p1
	.addrsig_sym a1
	.addrsig_sym a2
	.addrsig_sym x1
	.addrsig_sym x2
	.addrsig_sym x3
	.addrsig_sym x4
	.addrsig_sym x5
	.addrsig_sym x6
	.addrsig_sym s1
	.addrsig_sym s2
	.addrsig_sym l1
	.addrsig_sym intp