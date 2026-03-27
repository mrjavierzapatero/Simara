#!/bin/bash
# ════════════════════════════════════════════════════════════════
#  SIMARA · Creación de estructura de proyecto
#  Ejecutar desde: ~/Desktop/Matrix/
#  Uso: bash setup_simara.sh
# ════════════════════════════════════════════════════════════════

set -e  # Detener si hay error

BASE="$HOME/Desktop/Matrix/Simara"

echo ""
echo "  ┌─────────────────────────────────────┐"
echo "  │   SIMARA · Creando estructura...    │"
echo "  └─────────────────────────────────────┘"
echo ""

# ── CARPETAS PRINCIPALES ─────────────────────────────────────────
mkdir -p "$BASE"

# 01 · WEB ─────────────────────────────────────────────────────
mkdir -p "$BASE/01_Web/src"
mkdir -p "$BASE/01_Web/src/assets/images"
mkdir -p "$BASE/01_Web/src/assets/fonts"
mkdir -p "$BASE/01_Web/src/assets/icons"
mkdir -p "$BASE/01_Web/src/css"
mkdir -p "$BASE/01_Web/src/js"
mkdir -p "$BASE/01_Web/src/pages"       # aviso-legal, privacidad, etc.
mkdir -p "$BASE/01_Web/exports"         # versiones para entregar/subir
mkdir -p "$BASE/01_Web/referencias"     # capturas, moodboard

# 02 · MARCA ───────────────────────────────────────────────────
mkdir -p "$BASE/02_Marca/logo/originales"
mkdir -p "$BASE/02_Marca/logo/variantes"
mkdir -p "$BASE/02_Marca/logo/formatos_web"
mkdir -p "$BASE/02_Marca/paleta_tipografia"
mkdir -p "$BASE/02_Marca/brand_kit"
mkdir -p "$BASE/02_Marca/referencias_visuales"

# 03 · CONTENIDO ───────────────────────────────────────────────
mkdir -p "$BASE/03_Contenido/textos_web"
mkdir -p "$BASE/03_Contenido/textos_legales"
mkdir -p "$BASE/03_Contenido/palabras_con_alma"
mkdir -p "$BASE/03_Contenido/blog_futuro"
mkdir -p "$BASE/03_Contenido/traducciones"

# 04 · COMUNICACIÓN ────────────────────────────────────────────
mkdir -p "$BASE/04_Comunicacion/redes_sociales/plantillas"
mkdir -p "$BASE/04_Comunicacion/redes_sociales/publicaciones"
mkdir -p "$BASE/04_Comunicacion/newsletter"
mkdir -p "$BASE/04_Comunicacion/email_marketing"
mkdir -p "$BASE/04_Comunicacion/fotografias"

# 05 · SERVICIOS Y CLASES ──────────────────────────────────────
mkdir -p "$BASE/05_Servicios/materiales_clases"
mkdir -p "$BASE/05_Servicios/programas"
mkdir -p "$BASE/05_Servicios/calendarios"
mkdir -p "$BASE/05_Servicios/plantillas_presupuestos"

# 06 · CLIENTES ────────────────────────────────────────────────
mkdir -p "$BASE/06_Clientes/individuales"
mkdir -p "$BASE/06_Clientes/organizaciones"
mkdir -p "$BASE/06_Clientes/testimonios"
mkdir -p "$BASE/06_Clientes/formularios"

# 07 · ADMINISTRACIÓN ──────────────────────────────────────────
mkdir -p "$BASE/07_Admin/facturas/emitidas"
mkdir -p "$BASE/07_Admin/facturas/recibidas"
mkdir -p "$BASE/07_Admin/contratos"
mkdir -p "$BASE/07_Admin/fiscal"
# ⚠️  PRIVADO — esta carpeta NO va a GitHub
mkdir -p "$BASE/07_Admin/_PRIVADO_NO_SUBIR/credenciales"
mkdir -p "$BASE/07_Admin/_PRIVADO_NO_SUBIR/datos_bancarios"
mkdir -p "$BASE/07_Admin/_PRIVADO_NO_SUBIR/accesos_hosting"

# 08 · PROYECTO / ROADMAP ──────────────────────────────────────
mkdir -p "$BASE/08_Proyecto/roadmap"
mkdir -p "$BASE/08_Proyecto/reuniones_notas"
mkdir -p "$BASE/08_Proyecto/versiones_anteriores"
mkdir -p "$BASE/08_Proyecto/investigacion"

# 09 · ANALÍTICA ───────────────────────────────────────────────
mkdir -p "$BASE/09_Analitica/google_analytics"
mkdir -p "$BASE/09_Analitica/search_console"
mkdir -p "$BASE/09_Analitica/informes"

# ── ARCHIVOS RAÍZ DEL PROYECTO ───────────────────────────────
# README
cat > "$BASE/README.md" << 'EOF'
# SIMARA · Proyecto Web y Marca

**Marca:** SIMARA  
**Responsable:** Simona Fabbri  
**Web:** [simaraproject.com](https://simaraproject.com)  
**Email:** simona.fabbri@simaraproject.com

---

## Estructura del proyecto

| Carpeta | Contenido |
|---|---|
| `01_Web/` | Código fuente, exports y referencias visuales |
| `02_Marca/` | Logo, paleta, tipografía, brand kit |
| `03_Contenido/` | Textos web, legales, Palabras con Alma |
| `04_Comunicacion/` | Redes, newsletter, fotografías |
| `05_Servicios/` | Materiales de clases, programas, calendarios |
| `06_Clientes/` | Fichas, testimonios, formularios |
| `07_Admin/` | Facturas, contratos, fiscal · **_PRIVADO** no en repo |
| `08_Proyecto/` | Roadmap, notas, versiones anteriores |
| `09_Analitica/` | GA4, Search Console, informes |

---

## ⚠️ Seguridad

La carpeta `07_Admin/_PRIVADO_NO_SUBIR/` está excluida del repositorio via `.gitignore`.  
**Nunca subir:** contraseñas, credenciales, datos bancarios, accesos a hosting.

---

## Estado del proyecto

- [ ] Estructura de carpetas creada
- [ ] Logo y brand kit organizados
- [ ] Web v1 lista
- [ ] Dominio configurado
- [ ] Analytics instalado
- [ ] Textos legales completos

EOF

# NOTAS RÁPIDAS
cat > "$BASE/NOTAS.md" << 'EOF'
# Notas del proyecto

## Pendiente
- [ ] Completar datos en Política de Privacidad (NIF, domicilio)
- [ ] Completar Política de Cookies (herramientas de terceros)
- [ ] Añadir fotos reales de Simona
- [ ] Configurar dominio simaraproject.com
- [ ] Instalar Google Analytics 4
- [ ] Definir precios y añadirlos a la web
- [ ] Crear favicon con logo SIMARA

## Decisiones de diseño
- Tipografía: Cormorant (títulos) + Jost (texto)
- Paleta: pergamino cálido / arena / terracota / fondo oscuro cálido
- Estilo: editorial minimalista cálido

## Contacto proveedor web
[falta información]

EOF

# ── INIT GIT ──────────────────────────────────────────────────
cd "$BASE"
git init -q

# .gitignore robusto
cat > "$BASE/.gitignore" << 'EOF'
# ════════════════════════════════════════
#  SIMARA · .gitignore
# ════════════════════════════════════════

# ── PRIVADO — NUNCA SUBIR ─────────────
07_Admin/_PRIVADO_NO_SUBIR/
**/credenciales/
**/accesos_hosting/
**/datos_bancarios/
**/*.env
**/*.env.local
**/.env*
**/secrets.*
**/passwords.*
**/contraseñas.*

# ── SISTEMA OPERATIVO ─────────────────
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
desktop.ini

# ── EDITORES ──────────────────────────
.vscode/
.idea/
*.swp
*.swo
*~

# ── NODE / NPM (por si se usa) ─────────
node_modules/
npm-debug.log*
yarn-error.log
.npm
.yarn

# ── ARCHIVOS TEMPORALES ───────────────
*.tmp
*.temp
*.log
*.bak
*.orig

# ── ARCHIVOS COMPILADOS ───────────────
dist/
build/
.cache/

# ── IMÁGENES ORIGINALES GRANDES ───────
# (subir solo versiones optimizadas)
02_Marca/logo/originales/*.ai
02_Marca/logo/originales/*.psd
02_Marca/logo/originales/*.indd

EOF

# Primer commit
git add .
git commit -q -m "🌿 Inicio del proyecto SIMARA — estructura base"

echo ""
echo "  ✅  Carpetas creadas en:"
echo "      $BASE"
echo ""
echo "  ✅  Repositorio Git inicializado"
echo "      Primer commit realizado"
echo ""
echo "  ─────────────────────────────────────"
echo ""
echo "  PRÓXIMO PASO — conectar con GitHub:"
echo ""
echo "  1. Ve a github.com y crea un repo llamado 'simara'"
echo "     (privado recomendado)"
echo ""
echo "  2. Luego ejecuta estos dos comandos:"
echo ""
echo "     cd \"$BASE\""
echo "     git remote add origin https://github.com/TU_USUARIO/simara.git"
echo "     git push -u origin main"
echo ""
echo "  ─────────────────────────────────────"
echo ""
echo "  🌿 SIMARA lista para empezar."
echo ""
