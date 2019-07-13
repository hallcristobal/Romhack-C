#![no_std]

#[cfg(any(target_arch = "powerpc", target_arch = "wasm32"))]
#[panic_handler]
pub fn panic(_info: &::core::panic::PanicInfo) -> ! {
    loop {}
}
