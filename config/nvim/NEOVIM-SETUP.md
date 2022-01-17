# Neovim Setup
## Directory Structure
plugin
    naming convention: name_of_plugin.vim
    these files are sourced for all file types

doc
    naming convention: name_of_plugin.vim
    these files document the functionality of a plugin

color
    naming convention: name_of_colorscheme.vim
    these files define a colorscheme for syntax highlighting

syntax
    naming convention: filetype.vim
    these files define the operators, keywords and constructs of a language
    the syntax groups defined here are used by the colorscheme
    (much like HTML elements, ids and classes provide hooks for CSS styling)

indent
    naming convention: filetype.vim
    these files define the `indentexpr` for a language
    the `indentexpr` is used by the `=`, `o` and `O` commands

ftplugin
    naming convention: filetype.vim
    these files are sourced only for the specified filetype
    suitable for defining functionality for one particular language
    e.g. a command to build an HTML document from a markdown source

autoload
    naming convention: ???.vim
    Vim provides a mechanism to ensure that startup time isn't compromised 
    when large scripts are loaded. Functions, commands and mappings defined
    in the autoload directory are defined with an empty implementation on
    startup. It is only when these commands are invoked by the user that the
    script is sourced in full, and each command is attached to its
    implementation.
    :help autoload-functions
    :help 41.14

Neovim supports the following directories at runtime:
- `colors/`
- `compiler/`
- `ftplugin/`
- `ftdetect/`
- `indent/`
- `plugin/`
- `syntax/`

**Note:** Since neovim doesn't support `autoload`, custom functions are in the following directory: `../nvim/lua/helper`

## My Directory Structure
TODO: Insert ASCII tree and explanation

## References
- https://github.com/nanotee/nvim-lua-guide
- https://gist.github.com/nelstrom/1056049/784e252c3de653e204e9e128653010e19fbd493f
