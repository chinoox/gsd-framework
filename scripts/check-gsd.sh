#!/bin/bash
# check-gsd.sh - Validate if a project follows GSD structure

PROJECT_PATH="${1:-.}"
PLANNING_DIR="$PROJECT_PATH/.planning"

ERRORS=0
WARNINGS=0

echo "🔍 Checking GSD structure in: $PROJECT_PATH"
echo ""

# Check if .planning directory exists
if [ ! -d "$PLANNING_DIR" ]; then
    echo "❌ Missing: .planning/ directory"
    ERRORS=$((ERRORS + 1))
else
    echo "✅ Found: .planning/ directory"
fi

# Check required files
FILES=("PROJECT.md" "REQUIREMENTS.md" "ROADMAP.md" "STATE.md")

for file in "${FILES[@]}"; do
    filepath="$PLANNING_DIR/$file"
    if [ -f "$filepath" ]; then
        # Check if file has content (not just template placeholders)
        if grep -q "PROJECT_NAME\|YYYY-MM-DD\|\[Descripción\]" "$filepath" 2>/dev/null; then
            echo "⚠️  $file exists but may be empty/template"
            WARNINGS=$((WARNINGS + 1))
        else
            echo "✅ $file exists and populated"
        fi
    else
        echo "❌ Missing: $file"
        ERRORS=$((ERRORS + 1))
    fi
done

echo ""
echo "---"
if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo "✅ GSD structure: COMPLETE"
    exit 0
elif [ $ERRORS -eq 0 ]; then
    echo "⚠️  GSD structure: PARTIAL ($WARNINGS warnings)"
    exit 0
else
    echo "❌ GSD structure: INCOMPLETE ($ERRORS errors, $WARNINGS warnings)"
    exit 1
fi
