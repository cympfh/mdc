# mdc -- markdown compiler (markdown-to-markdown)

## Basic usage

`mdc` is an executable script (in Ruby),
which read markdown from stdin
and otuput compiled markdown to stdout.


```bash
mdc < in.md > out.md
```

or if you wish pandoc

```bash
mdc < in.md | pandoc -o out.html
```

## dot (graphviz)

`--dot` translate dot blocks in the input to `<svg>` images.

### Usage

```bash
mdc --dot < in.md | pandoc -o out.html
```

### Example

```markdown
The following diagram shows something

\`\`\`dot
digraph {
    {vim dot} -> vimdot
}
\`\`\`
```

translated into the following

```markdown
The following diagram shows something

<svg code>
```

