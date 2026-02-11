# GSD Framework - OpenClaw Skill

**GSD** = **G**et **S**hit **D**one

Adaptación del framework GSD para OpenClaw/Claude Code. Proporciona estructura y templates para gestionar proyectos de forma pragmática y efectiva.

> 🏗️ Basado en [get-shit-done](https://github.com/gsd-build/get-shit-done) por GSD Build

---

## 🎯 ¿Qué es GSD?

GSD es una metodología ligera de gestión de proyectos que prioriza:
- **Claridad** sobre complejidad
- **Acción** sobre planificación excesiva
- **Resultados** sobre procesos

---

## 📁 Estructura de Proyecto GSD

```
mi-proyecto/
└── .planning/
    ├── PROJECT.md       # Identidad y visión del proyecto
    ├── REQUIREMENTS.md  # Requisitos v1 (must-have) y v2 (nice-to-have)
    ├── ROADMAP.md       # Fases de ejecución
    └── STATE.md         # Estado actual y próximos pasos
```

### Archivos

| Archivo | Propósito | Actualización |
|---------|-----------|---------------|
| **PROJECT.md** | ¿Por qué existe este proyecto? | Inicio + cambios mayores |
| **REQUIREMENTS.md** | ¿Qué vamos a construir? | Inicio + pivots |
| **ROADMAP.md** | ¿Cómo lo construimos? | Cada fase completada |
| **STATE.md** | ¿Dónde estamos ahora? | **Después de cada sesión** |

---

## 🚀 Uso

### En OpenClaw

El skill se activa automáticamente con frases como:
- *"Iniciar proyecto GSD"*
- *"Aplicar framework GSD"*
- *"Crear estructura GSD para [proyecto]"*
- *"Necesito un PROJECT.md"*

### Manualmente

```bash
# Copiar templates a tu proyecto
cp -r ~/.openclaw/skills/gsd-framework/assets/gsd-templates/* ./.planning/

# Validar estructura GSD
~/.openclaw/skills/gsd-framework/scripts/check-gsd.sh /ruta/al/proyecto
```

---

## 📋 Principios GSD

1. **Crear los 4 archivos al inicio** — No postergar REQUIREMENTS ni ROADMAP
2. **Rellenar templates completamente** — Secciones vacías = deuda técnica
3. **Actualizar STATE.md después de cada sesión** — Documentar progreso real
4. **Usar fases como guardarraíles** — No saltar etapas
5. **Archivar fases completadas** — Mantener ROADMAP limpio
6. **Ser explícito sobre v2** — Escribir lo que **NO** se construye ahora

---

## 🛠️ Templates Incluidos

- `PROJECT.md.template` — Visión, usuarios, métricas de éxito
- `REQUIREMENTS.md.template` — Requisitos funcionales y no-funcionales
- `ROADMAP.md.template` — Fases con criterios de aceptación
- `STATE.md.template` — Seguimiento de sesiones y decisiones

---

## 📖 Ejemplo de Workflow

**Día 1 — Inicio:**
```bash
# Crear estructura
mkdir mi-proyecto && cd mi-proyecto
mkdir .planning

# Copiar y rellenar templates
cp ~/.openclaw/skills/gsd-framework/assets/gsd-templates/* .planning/
# → Editar PROJECT.md con el problema a resolver
# → Editar REQUIREMENTS.md con funcionalidades v1
# → Editar ROADMAP.md con fases realistas
# → Editar STATE.md marcando Fase 0
```

**Día N — Después de cada sesión:**
```bash
# Actualizar STATE.md
# - Qué se hizo
# - Decisiones tomadas
# - Bloqueos encontrados
# - Próximos pasos

git add .planning/STATE.md
git commit -m "Update STATE: completed X, next Y"
```

---

## 🔍 Validación

```bash
# Verificar que un proyecto sigue GSD
./scripts/check-gsd.sh /ruta/al/proyecto

# Salidas:
# ✅ COMPLETE — Los 4 archivos existen y están poblados
# ⚠️  PARTIAL — Archivos existen pero pueden estar vacíos
# ❌ INCOMPLETE — Faltan archivos
```

---

## 📚 Recursos

- **Original:** [gsd-build/get-shit-done](https://github.com/gsd-build/get-shit-done)
- **AgentSkills Spec:** [agentskills.io](https://agentskills.io)

---

## 🤝 Contribuir

Este es un fork adaptado para OpenClaw. Para mejoras al framework base, visita el [repositorio original](https://github.com/gsd-build/get-shit-done).

---

## 📄 Licencia

Mismo license que el proyecto original. Ver [get-shit-done/LICENSE](https://github.com/gsd-build/get-shit-done/blob/main/LICENSE).

---

**Creado por:** Zeux (AI) para 3DWorks  
**Adaptado para:** OpenClaw/Claude Code
