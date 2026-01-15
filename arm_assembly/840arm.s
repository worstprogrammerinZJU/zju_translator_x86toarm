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
	adrp	x8, DECQUAD_String
	ldr	w8, [x8, :lo12:DECQUAD_String]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-40]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x1, x9, x10
	stur	x1, [x29, #-64]                 // 8-byte Folded Spill
	mov	sp, x1
	stur	x8, [x29, #-48]
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
	stur	w8, [x29, #-52]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, DEC_INIT_DECQUAD
	ldr	w1, [x8, :lo12:DEC_INIT_DECQUAD]
	sub	x0, x29, #28
	stur	x0, [x29, #-80]                 // 8-byte Folded Spill
	bl	decContextDefault
	ldur	x2, [x29, #-80]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	sub	x0, x29, #20
	stur	x0, [x29, #-72]                 // 8-byte Folded Spill
	bl	decQuadFromString
	ldur	x2, [x29, #-80]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	sub	x0, x29, #24
	stur	x0, [x29, #-88]                 // 8-byte Folded Spill
	bl	decQuadFromString
	ldur	x2, [x29, #-88]                 // 8-byte Folded Reload
	ldur	x3, [x29, #-80]                 // 8-byte Folded Reload
	ldur	x1, [x29, #-72]                 // 8-byte Folded Reload
	mov	x0, x1
	bl	decQuadAdd
	ldur	x1, [x29, #-64]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-72]                 // 8-byte Folded Reload
	bl	decQuadToString
	ldur	x3, [x29, #-64]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	x2, [x8, #16]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-40]
	mov	sp, x8
	ldur	w0, [x29, #-4]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	DECQUAD_String,@object          // @DECQUAD_String
	.bss
	.globl	DECQUAD_String
	.p2align	2
DECQUAD_String:
	.word	0                               // 0x0
	.size	DECQUAD_String, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Please supply two numbers to add.\n"
	.size	.L.str, 35
	.type	DEC_INIT_DECQUAD,@object        // @DEC_INIT_DECQUAD
	.bss
	.globl	DEC_INIT_DECQUAD
	.p2align	2
DEC_INIT_DECQUAD:
	.word	0                               // 0x0
	.size	DEC_INIT_DECQUAD, 4
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
	.addrsig_sym decQuadFromString
	.addrsig_sym decQuadAdd
	.addrsig_sym decQuadToString
	.addrsig_sym DECQUAD_String
	.addrsig_sym DEC_INIT_DECQUAD