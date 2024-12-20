# Dumb Package

A simple C program that prints "Hello from dumb package!"

## Building

This package uses the GNU Guix package manager. To build it:

```bash
guix build -f dumb-package.scm
```

## Running

After building, you can run the program using:

```bash
$(guix build -f dumb-package.scm)/bin/dumb-package
```

This command will automatically use the correct store path.

## Files

- `hello.c` - The main C source file
- `dumb-package.scm` - The Guix package definition

## License

This project is in the public domain.
