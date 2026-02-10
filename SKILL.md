---
name: gsd-framework
description: Initialize and manage projects using the GSD (Get Shit Done) methodology. Use when the user wants to (1) Start a new project with GSD structure, (2) Check if a project follows GSD, (3) Apply GSD templates to existing projects, (4) Create PROJECT.md, REQUIREMENTS.md, ROADMAP.md, or STATE.md files.
---

# GSD Framework - Get Shit Done

This skill implements the GSD (Get Shit Done) project management methodology through structured documentation and clear workflow tracking.

## GSD Structure

Every GSD project contains these 4 core files in a `.planning/` directory:

```
project-root/
└── .planning/
    ├── PROJECT.md       # Project identity and vision
    ├── REQUIREMENTS.md  # What needs to be built
    ├── ROADMAP.md       # How to build it (phases)
    └── STATE.md         # Current status and next steps
```

### File Purposes

**PROJECT.md** - Identity and context
- Problem being solved
- Target users
- Success metrics
- Constraints and assumptions

**REQUIREMENTS.md** - What to build
- Functional requirements (v1 must-haves)
- Non-functional requirements
- v2 nice-to-haves (explicitly out of scope for now)

**ROADMAP.md** - Execution plan
- Phases with clear deliverables
- Definition of done per phase
- Current phase indicator

**STATE.md** - Living document
- Current phase status
- Blockers and decisions
- Updated after each work session

## When to Use This Skill

**Trigger phrases:**
- "Iniciar proyecto GSD"
- "Aplicar framework GSD"
- "Crear estructura GSD"
- "Necesito PROJECT.md"
- "Organizar proyecto con GSD"
- "Check GSD structure"

## Workflow

### 1. Initialize New GSD Project

Use when starting a new project with GSD:

```bash
# Create GSD structure
cp -r assets/gsd-templates/* ./.planning/
```

Then populate each file with project-specific information.

### 2. Apply GSD to Existing Project

Use when a project exists but lacks GSD structure:

1. Check if `.planning/` exists
2. Create directory if missing
3. Copy templates
4. Populate with existing project info
5. Mark current phase based on progress

### 3. Validate GSD Structure

Check if a project follows GSD:

```bash
./scripts/check-gsd.sh /path/to/project
```

Returns: ✅ Complete, ⚠️ Partial, ❌ Missing

### 4. Update STATE.md

After each work session:

1. Read current STATE.md
2. Update "Last session" section
3. Mark completed tasks
4. Add new blockers/decisions
5. Update "Next steps"

## Templates

Templates are in `assets/gsd-templates/`:

- `PROJECT.md.template` - Project identity template
- `REQUIREMENTS.md.template` - Requirements template
- `ROADMAP.md.template` - Roadmap with phases template
- `STATE.md.template` - State tracking template

Copy these to `.planning/` and customize.

## Best Practices

1. **Create all 4 files at start** - Don't defer REQUIREMENTS.md or ROADMAP.md
2. **Fill templates completely** - Empty sections are technical debt
3. **Update STATE.md after each session** - Keep it alive
4. **Use phases as guardrails** - Don't jump ahead
5. **Archive completed phases** - Move to "Completed" section
6. **Be explicit about v2** - Write what you're NOT building now

## Example Usage

**User:** "Inicia un proyecto GSD para un sistema de monitoreo de impresoras 3D"

**Codex actions:**
1. Create `.planning/` directory
2. Copy all 4 templates
3. Populate PROJECT.md with problem/vision
4. Fill REQUIREMENTS.md with v1 features
5. Create ROADMAP.md with phases
6. Initialize STATE.md at Phase 1

**User:** "Actualiza el estado del proyecto"

**Codex actions:**
1. Read current STATE.md
2. Check git status / recent commits
3. Update completed tasks
4. Add new decisions/blockers
5. Write updated STATE.md
