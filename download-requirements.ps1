<#
.SYNOPSIS
Download project dependencies for CentOS 7.
#>
docker run --rm `
    -v "$pwd/pyproject.toml:/pyproject.toml" `
    -v "$pwd/uv.lock:/uv.lock" `
    -v "$pwd/packages:/packages" `
    quay.io/pypa/manylinux2014_x86_64 `
    sh -c ( 
        "uv export --no-hashes --no-emit-project --locked -o requirements-dev.txt && " + `
        "python3.12 -m pip download --no-cache-dir -r requirements-dev.txt -d packages"
    )
