## Example of how to build using CryZe's Romhack Compiler using C code instead of Rust
You must have the rust build system installed and in your path to use this still. It is not "Rust Free"

===

## Compiling
You can choose not copy or rename it if you would prefer, just make sure that the lines in
Romhack.toml match the iso path.
```Toml
...
[src]
iso = "<iso-path/file-name>"
...
```

### Setup the compiler

You will need rust to compile the libraries and iso, you can download it from
[https://rustup.rs](https://rustup.rs).

Set the compiler to work on the nightly build with
```
rustup override set nightly
```

Add the `powerpc-unknown-linux-gnu` toolchain with
```
rustup target add powerpc-unknown-linux-gnu
```

And then do a install the Romhack Compiler with
```
cargo install romhack --git https://github.com/CryZe/romhack-compiler
```

Run the romhack compiler to build a new iso - Using make in this case
```
make
```

The new iso will, by default, be put in the `target` folder. You can change this
in the Romhack.toml file if you'd like by editing the lines
```Toml
...
[build]
map = "target/framework.map"
iso = "<path-to/new-iso>"
...
```
