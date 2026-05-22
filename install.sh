#!/bin/bash
# Hermes Agent Skill Pack — Installer
# Usage: chmod +x install.sh && ./install.sh

set -e

BOLD='\033[1m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${CYAN}"
echo "╔═══════════════════════════════════════════╗"
echo "║   Hermes Agent — Premium Skill Pack       ║"
echo "║   Installer v1.0                          ║"
echo "╚═══════════════════════════════════════════╝"
echo -e "${NC}"

SKILLS_DIR="${HOME}/.hermes/skills"
PACK_DIR="$(cd "$(dirname "$0")" && pwd)"

echo -e "${BOLD}📁 Installing to:${NC} ${SKILLS_DIR}"
echo ""

# Create skills directory if needed
mkdir -p "${SKILLS_DIR}"

# Copy each skill
SKILL_COUNT=0
for skill_dir in "${PACK_DIR}/skills"/*/; do
    skill_name=$(basename "${skill_dir}")
    if [ -f "${skill_dir}/SKILL.md" ]; then
        target="${SKILLS_DIR}/${skill_name}"
        mkdir -p "${target}"
        cp "${skill_dir}/SKILL.md" "${target}/"
        echo -e "  ${GREEN}✓${NC} Installed: ${BOLD}${skill_name}${NC}"
        SKILL_COUNT=$((SKILL_COUNT + 1))
    fi
done

echo ""
echo -e "${BOLD}📊 Summary:${NC}"
echo -e "  ${GREEN}${SKILL_COUNT}${NC} skills installed to ${SKILLS_DIR}"
echo ""

# Optional: enable
echo -e "${YELLOW}To enable a skill, use /load <skill-name> in any conversation.${NC}"
echo ""
echo -e "${YELLOW}Example:${NC}"
echo -e "  /load smart-scheduler"
echo -e "  /load daily-briefing"
echo ""

echo -e "${GREEN}✅ Installation complete!${NC}"
echo -e "${CYAN}Need help? Email: hermes-business@agentmail.to${NC}"
