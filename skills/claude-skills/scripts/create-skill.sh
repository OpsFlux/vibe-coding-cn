#!/bin/bash
# Quick Skill directory structure generator
# Usage: ./create-skill.sh <skill-name>

SKILL_NAME=$1

if [ -z "$SKILL_NAME" ]; then
    echo "Usage: ./create-skill.sh <skill-name>"
    echo "Example: ./create-skill.sh my-awesome-skill"
    exit 1
fi

mkdir -p "$SKILL_NAME"/{assets,scripts,references}

cat > "$SKILL_NAME/SKILL.md" << 'EOF'
---
name: SKILL_NAME_PLACEHOLDER
description: Skill description
---

# Skill Name

## Overview

Brief explanation of the skill's purpose.

## When to Use This Skill

- Scenario 1
- Scenario 2

## Instructions

[Detailed instructions]

## Examples

[Usage examples]

## Constraints

- Limitation 1
- Limitation 2
EOF

sed -i "s/SKILL_NAME_PLACEHOLDER/$SKILL_NAME/g" "$SKILL_NAME/SKILL.md"

echo "✅ Created Skill: $SKILL_NAME/"
echo "   ├── SKILL.md"
echo "   ├── assets/"
echo "   ├── scripts/"
echo "   └── references/"
echo ""
echo "Next: Edit $SKILL_NAME/SKILL.md to add your instructions"
