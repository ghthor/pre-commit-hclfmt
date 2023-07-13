# pre-commit-hclfmt

[Pre-commit][pre-commit] hook for running [hclfmt][hclfmt].

## Requirements

The hook will fail if golang is not installed and available on the system as
that is required to install & run the hclfmt program provided by hashicorp as
there are not precompiled binaries available.

## Usage

To use, add the following to your `.pre-commit-hooks.yaml`:

```yaml
- repo: https://github.com/ghthor/pre-commit-hclfmt
  rev: v1.0.0
  hooks:
    - id: hclfmt
```

# See Also

| Project | Link |
| - | - |
| vim plugin | https://github.com/ghthor/vim-hclfmt |
| hcl | https://github.com/hashicorp/hcl |
| hclfmt | 	https://github.com/hashicorp/hcl/tree/main/cmd/hclfmt |

[hclfmt]: https://github.com/hashicorp/hcl/blob/527ec318631dc6db59da91e8ca7f205fc989ebc5/cmd/hclfmt/main.go
[pre-commit]: https://pre-commit.com
