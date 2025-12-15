# Project Context

## Purpose
This repository contains the final report for an academic/professional project. It serves as a version-controlled documentation system with spec-driven development using OpenSpec to manage changes and maintain consistency across documentation iterations.

## Tech Stack
- **Version Control**: Git, GitHub
- **Documentation**: Markdown
- **Spec Management**: OpenSpec
- **Workflow Automation**: GitHub CLI, PowerShell scripts
- **Code Editor**: Compatible with AI coding assistants (Antigravity, Cursor, etc.)

## Project Conventions

### Code Style
- Use Markdown for all documentation files
- Follow GitHub Flavored Markdown (GFM) syntax
- Use clear, descriptive headings with proper hierarchy
- Keep lines reasonably short for readability
- Use code blocks with language specification for syntax highlighting

### Architecture Patterns
- **Spec-Driven Development**: Use OpenSpec to propose, track, and implement changes
- **Separation of Concerns**: Keep specifications (`specs/`) separate from active changes (`changes/`)
- **Archived History**: Maintain completed changes in `changes/archive/` with timestamps

### Testing Strategy
- **Validation**: Run `openspec validate --strict` before committing changes
- **Review Process**: All change proposals require review before implementation
- **Documentation Testing**: Verify all links and references are valid

### Git Workflow
- **Branching**: Use `main` branch for stable documentation
- **Commit Messages**: Clear, descriptive messages following conventional commits style
- **Change Numbering**: Use OpenSpec change IDs with verb-led prefixes (e.g., `01-add-introduction`, `02-update-methodology`)
- **Automatic Numbering**: New create changes should be automatically numbered starting from `01-` and incrementing

## Domain Context
This is an academic/professional final report repository. Content may include:
- Research methodology and findings
- Technical implementations and analysis
- Literature reviews and citations
- Data analysis and visualizations
- Conclusions and recommendations

All AI assistants should maintain academic integrity, proper citation practices, and professional documentation standards.

## Important Constraints
- **Academic Standards**: Maintain professional and academic writing quality
- **Version Control**: All changes must be tracked through Git and OpenSpec
- **Review Required**: Breaking changes or major content additions require proposal approval
- **Numbering Convention**: Change proposals must follow sequential numbering (01-, 02-, 03-, etc.)

## External Dependencies
- GitHub (remote repository hosting)
- OpenSpec CLI (specification management)
- Markdown renderers (GitHub, VS Code, etc.)

