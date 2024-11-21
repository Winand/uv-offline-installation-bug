An exampe of a uv project which can be installed in an air-gapped environment.

1. Download packages using `download-requirements.ps1`
2. Enable offline mode in `~/.config/uv/uv.toml` on the target machine
    ```toml
    offline = true
    no-index = true
    ```
2. Copy packages to the `packages` folder on the target machine
3. Install project using `install.sh`

See also [uv #9277](https://github.com/astral-sh/uv/issues/9277)
