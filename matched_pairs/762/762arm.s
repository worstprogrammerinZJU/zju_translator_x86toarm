	.text
	.globl	__detachInterrupt               // -- Begin function __detachInterrupt
	.p2align	2
	.type	__detachInterrupt,@function
__detachInterrupt:                      // @__detachInterrupt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, gpio_intr_handle
	ldr	w0, [x8, :lo12:gpio_intr_handle]
	bl	esp_intr_disable
	adrp	x8, __pinInterruptHandlers
	ldr	x8, [x8, :lo12:__pinInterruptHandlers]
	ldr	x9, [sp, #8]
	mov	x10, #24
	mul	x9, x9, x10
	ldr	w8, [x8, x9]
	cbz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	adrp	x8, __pinInterruptHandlers
	ldr	x8, [x8, :lo12:__pinInterruptHandlers]
	ldr	x9, [sp, #8]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, __pinInterruptHandlers
	ldr	x8, [x8, :lo12:__pinInterruptHandlers]
	ldr	x9, [sp, #8]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x0, [x8, #8]
	bl	cleanupFunctional
	b	.LBB0_3
.LBB0_3:
	adrp	x8, __pinInterruptHandlers
	ldr	x9, [x8, :lo12:__pinInterruptHandlers]
	ldr	x11, [sp, #8]
	mov	x10, #24
	mul	x11, x11, x10
	add	x9, x9, x11
                                        // kill: def $x11 killed $xzr
	str	xzr, [x9, #16]
	ldr	x9, [x8, :lo12:__pinInterruptHandlers]
	ldr	x11, [sp, #8]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	xzr, [x9, #8]
	ldr	x9, [x8, :lo12:__pinInterruptHandlers]
	ldr	x8, [sp, #8]
	mul	x10, x8, x10
	mov	w8, wzr
	str	w8, [x9, x10]
	adrp	x9, GPIO
	ldr	x8, [x9, :lo12:GPIO]
	ldr	x10, [sp, #8]
	add	x10, x8, x10, lsl #4
	mov	x8, xzr
	str	xzr, [x10, #8]
	ldr	x9, [x9, :lo12:GPIO]
	ldr	x10, [sp, #8]
	lsl	x10, x10, #4
	str	x8, [x9, x10]
	adrp	x8, gpio_intr_handle
	ldr	w0, [x8, :lo12:gpio_intr_handle]
	bl	esp_intr_enable
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	__detachInterrupt, .Lfunc_end0-__detachInterrupt
                                        // -- End function
	.type	gpio_intr_handle,@object        // @gpio_intr_handle
	.bss
	.globl	gpio_intr_handle
	.p2align	2
gpio_intr_handle:
	.word	0                               // 0x0
	.size	gpio_intr_handle, 4
	.type	__pinInterruptHandlers,@object  // @__pinInterruptHandlers
	.globl	__pinInterruptHandlers
	.p2align	3
__pinInterruptHandlers:
	.xword	0
	.size	__pinInterruptHandlers, 8
	.type	GPIO,@object                    // @GPIO
	.globl	GPIO
	.p2align	3
GPIO:
	.zero	8
	.size	GPIO, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym esp_intr_disable
	.addrsig_sym cleanupFunctional
	.addrsig_sym esp_intr_enable
	.addrsig_sym gpio_intr_handle
	.addrsig_sym __pinInterruptHandlers
	.addrsig_sym GPIO