	.text
	.p2align	2                               // -- Begin function _initPin
	.type	_initPin,@function
_initPin:                               // @_initPin
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	adrp	x8, periph_enabled
	ldr	w8, [x8, :lo12:periph_enabled]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	adrp	x9, periph_enabled
	str	w8, [x9, :lo12:periph_enabled]
	adrp	x8, PERIPH_RMT_MODULE
	ldr	w0, [x8, :lo12:PERIPH_RMT_MODULE]
	bl	periph_module_enable
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	adrp	x8, OUTPUT
	ldr	w1, [x8, :lo12:OUTPUT]
	bl	pinMode
	ldur	w0, [x29, #-4]
	adrp	x8, RMT_SIG_OUT0_IDX
	ldr	x8, [x8, :lo12:RMT_SIG_OUT0_IDX]
	ldrsw	x9, [sp, #8]
	add	x1, x8, x9
	mov	w3, wzr
	mov	w2, w3
	bl	pinMatrixOutAttach
	b	.LBB0_5
.LBB0_4:
	ldur	w0, [x29, #-4]
	adrp	x8, INPUT
	ldr	w1, [x8, :lo12:INPUT]
	bl	pinMode
	ldur	w0, [x29, #-4]
	adrp	x8, RMT_SIG_IN0_IDX
	ldr	x8, [x8, :lo12:RMT_SIG_IN0_IDX]
	ldrsw	x9, [sp, #8]
	add	x1, x8, x9
	mov	w2, wzr
	bl	pinMatrixInAttach
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	_initPin, .Lfunc_end0-_initPin
                                        // -- End function
	.type	periph_enabled,@object          // @periph_enabled
	.bss
	.globl	periph_enabled
	.p2align	2
periph_enabled:
	.word	0                               // 0x0
	.size	periph_enabled, 4
	.type	PERIPH_RMT_MODULE,@object       // @PERIPH_RMT_MODULE
	.globl	PERIPH_RMT_MODULE
	.p2align	2
PERIPH_RMT_MODULE:
	.word	0                               // 0x0
	.size	PERIPH_RMT_MODULE, 4
	.type	OUTPUT,@object                  // @OUTPUT
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.word	0                               // 0x0
	.size	OUTPUT, 4
	.type	RMT_SIG_OUT0_IDX,@object        // @RMT_SIG_OUT0_IDX
	.globl	RMT_SIG_OUT0_IDX
	.p2align	3
RMT_SIG_OUT0_IDX:
	.xword	0                               // 0x0
	.size	RMT_SIG_OUT0_IDX, 8
	.type	INPUT,@object                   // @INPUT
	.globl	INPUT
	.p2align	2
INPUT:
	.word	0                               // 0x0
	.size	INPUT, 4
	.type	RMT_SIG_IN0_IDX,@object         // @RMT_SIG_IN0_IDX
	.globl	RMT_SIG_IN0_IDX
	.p2align	3
RMT_SIG_IN0_IDX:
	.xword	0                               // 0x0
	.size	RMT_SIG_IN0_IDX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _initPin
	.addrsig_sym periph_module_enable
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym pinMatrixInAttach
	.addrsig_sym periph_enabled
	.addrsig_sym PERIPH_RMT_MODULE
	.addrsig_sym OUTPUT
	.addrsig_sym RMT_SIG_OUT0_IDX
	.addrsig_sym INPUT
	.addrsig_sym RMT_SIG_IN0_IDX