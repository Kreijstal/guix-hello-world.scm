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
/gnu/store/*/dumb-package-0.1/bin/dumb-package
```

The exact store path will vary but will be shown after the build completes.

## Files

- `hello.c` - The main C source file
- `dumb-package.scm` - The Guix package definition

## License

This project is in the public domain.
