	.text
	.globl	__attachInterruptFunctionalArg  // -- Begin function __attachInterruptFunctionalArg
	.p2align	2
	.type	__attachInterruptFunctionalArg,@function
__attachInterruptFunctionalArg:         // @__attachInterruptFunctionalArg
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	str	w4, [sp, #16]
	adrp	x8, __attachInterruptFunctionalArg.interrupt_initialized
	ldr	w8, [x8, :lo12:__attachInterruptFunctionalArg.interrupt_initialized]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	adrp	x9, __attachInterruptFunctionalArg.interrupt_initialized
	str	w8, [x9, :lo12:__attachInterruptFunctionalArg.interrupt_initialized]
	adrp	x8, ETS_GPIO_INTR_SOURCE
	ldr	w0, [x8, :lo12:ETS_GPIO_INTR_SOURCE]
	adrp	x8, ESP_INTR_FLAG_IRAM
	ldr	x8, [x8, :lo12:ESP_INTR_FLAG_IRAM]
	mov	w1, w8
	adrp	x8, __onPinInterrupt
	ldr	w2, [x8, :lo12:__onPinInterrupt]
	mov	x3, xzr
	adrp	x4, gpio_intr_handle
	add	x4, x4, :lo12:gpio_intr_handle
	bl	esp_intr_alloc
	b	.LBB0_2
.LBB0_2:
	adrp	x8, __pinInterruptHandlers
	ldr	x8, [x8, :lo12:__pinInterruptHandlers]
	ldur	x9, [x29, #-8]
	mov	x10, #24
	mul	x9, x9, x10
	ldr	w8, [x8, x9]
	cbz	w8, .LBB0_5
	b	.LBB0_3
.LBB0_3:
	adrp	x8, __pinInterruptHandlers
	ldr	x8, [x8, :lo12:__pinInterruptHandlers]
	ldur	x9, [x29, #-8]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, __pinInterruptHandlers
	ldr	x8, [x8, :lo12:__pinInterruptHandlers]
	ldur	x9, [x29, #-8]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x0, [x8, #8]
	bl	cleanupFunctional
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	adrp	x9, __pinInterruptHandlers
	ldr	x10, [x9, :lo12:__pinInterruptHandlers]
	ldur	x12, [x29, #-8]
	mov	x11, #24
	mul	x12, x12, x11
	add	x10, x10, x12
	str	x8, [x10, #16]
	ldr	x8, [sp, #24]
	ldr	x10, [x9, :lo12:__pinInterruptHandlers]
	ldur	x12, [x29, #-8]
	mul	x12, x12, x11
	add	x10, x10, x12
	str	x8, [x10, #8]
	ldr	w8, [sp, #16]
	ldr	x9, [x9, :lo12:__pinInterruptHandlers]
	ldur	x10, [x29, #-8]
	mul	x10, x10, x11
	str	w8, [x9, x10]
	adrp	x8, gpio_intr_handle
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:gpio_intr_handle]
	bl	esp_intr_disable
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:gpio_intr_handle]
	bl	esp_intr_get_cpu
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, GPIO
	ldr	x9, [x8, :lo12:GPIO]
	ldur	x8, [x29, #-8]
	lsl	x10, x8, #3
	mov	w8, #1
	str	w8, [x9, x10]
	b	.LBB0_8
.LBB0_7:
	adrp	x8, GPIO
	ldr	x9, [x8, :lo12:GPIO]
	ldur	x8, [x29, #-8]
	lsl	x10, x8, #3
	mov	w8, #4
	str	w8, [x9, x10]
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #20]
	adrp	x9, GPIO
	ldr	x9, [x9, :lo12:GPIO]
	ldur	x10, [x29, #-8]
	add	x9, x9, x10, lsl #3
	str	w8, [x9, #4]
	adrp	x8, gpio_intr_handle
	ldr	w0, [x8, :lo12:gpio_intr_handle]
	bl	esp_intr_enable
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	__attachInterruptFunctionalArg, .Lfunc_end0-__attachInterruptFunctionalArg
                                        // -- End function
	.type	__attachInterruptFunctionalArg.interrupt_initialized,@object // @__attachInterruptFunctionalArg.interrupt_initialized
	.local	__attachInterruptFunctionalArg.interrupt_initialized
	.comm	__attachInterruptFunctionalArg.interrupt_initialized,4,4
	.type	ETS_GPIO_INTR_SOURCE,@object    // @ETS_GPIO_INTR_SOURCE
	.bss
	.globl	ETS_GPIO_INTR_SOURCE
	.p2align	2
ETS_GPIO_INTR_SOURCE:
	.word	0                               // 0x0
	.size	ETS_GPIO_INTR_SOURCE, 4
	.type	ESP_INTR_FLAG_IRAM,@object      // @ESP_INTR_FLAG_IRAM
	.globl	ESP_INTR_FLAG_IRAM
	.p2align	3
ESP_INTR_FLAG_IRAM:
	.xword	0                               // 0x0
	.size	ESP_INTR_FLAG_IRAM, 8
	.type	__onPinInterrupt,@object        // @__onPinInterrupt
	.globl	__onPinInterrupt
	.p2align	2
__onPinInterrupt:
	.word	0                               // 0x0
	.size	__onPinInterrupt, 4
	.type	gpio_intr_handle,@object        // @gpio_intr_handle
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
	.addrsig_sym esp_intr_alloc
	.addrsig_sym cleanupFunctional
	.addrsig_sym esp_intr_disable
	.addrsig_sym esp_intr_get_cpu
	.addrsig_sym esp_intr_enable
	.addrsig_sym __attachInterruptFunctionalArg.interrupt_initialized
	.addrsig_sym ETS_GPIO_INTR_SOURCE
	.addrsig_sym ESP_INTR_FLAG_IRAM
	.addrsig_sym __onPinInterrupt
	.addrsig_sym gpio_intr_handle
	.addrsig_sym __pinInterruptHandlers
	.addrsig_sym GPIO