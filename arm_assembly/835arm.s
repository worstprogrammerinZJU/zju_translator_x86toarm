	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #96
	mov	w8, w0
	mov	w0, wzr
	stur	wzr, [x29, #-4]
	stur	w8, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, DECNUMDIGITS
	ldr	w8, [x8, :lo12:DECNUMDIGITS]
	add	w8, w8, #14
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-48]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x1, x9, x10
	stur	x1, [x29, #-72]                 // 8-byte Folded Spill
	mov	sp, x1
	stur	x8, [x29, #-56]
	bl	decContextTestEndian
	ldur	w8, [x29, #-8]
	subs	w8, w8, #3
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	mov	w8, #1
	stur	w8, [x29, #-4]
	stur	w8, [x29, #-60]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, DEC_INIT_BASE
	ldr	w1, [x8, :lo12:DEC_INIT_BASE]
	sub	x0, x29, #40
	stur	x0, [x29, #-88]                 // 8-byte Folded Spill
	bl	decContextDefault
	ldur	x2, [x29, #-88]                 // 8-byte Folded Reload
	stur	xzr, [x29, #-32]
	adrp	x8, DECNUMDIGITS
	ldr	w8, [x8, :lo12:DECNUMDIGITS]
	stur	w8, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	sub	x0, x29, #20
	stur	x0, [x29, #-80]                 // 8-byte Folded Spill
	bl	decNumberFromString
	ldur	x2, [x29, #-88]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	sub	x0, x29, #24
	stur	x0, [x29, #-96]                 // 8-byte Folded Spill
	bl	decNumberFromString
	ldur	x2, [x29, #-96]                 // 8-byte Folded Reload
	ldur	x3, [x29, #-88]                 // 8-byte Folded Reload
	ldur	x1, [x29, #-80]                 // 8-byte Folded Reload
	mov	x0, x1
	bl	decNumberAdd
	ldur	x1, [x29, #-72]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-80]                 // 8-byte Folded Reload
	bl	decNumberToString
	ldur	x3, [x29, #-72]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x2, [x8, #16]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-48]
	mov	sp, x8
	ldur	w0, [x29, #-4]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	DECNUMDIGITS,@object            // @DECNUMDIGITS
	.bss
	.globl	DECNUMDIGITS
	.p2align	2
DECNUMDIGITS:
	.word	0                               // 0x0
	.size	DECNUMDIGITS, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Please supply two numbers to add.\n"
	.size	.L.str, 35
	.type	DEC_INIT_BASE,@object           // @DEC_INIT_BASE
	.bss
	.globl	DEC_INIT_BASE
	.p2align	2
DEC_INIT_BASE:
	.word	0                               // 0x0
	.size	DEC_INIT_BASE, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s + %s => %s\n"
	.size	.L.str.1, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextTestEndian
	.addrsig_sym printf
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberFromString
	.addrsig_sym decNumberAdd
	.addrsig_sym decNumberToString
	.addrsig_sym DECNUMDIGITS
	.addrsig_sym DEC_INIT_BASE