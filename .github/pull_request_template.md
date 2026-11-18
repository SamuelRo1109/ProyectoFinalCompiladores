## Sesión / alcance
<!-- S1, S2, S3 o hotfix. Qué aspecto(s) MPS toca. -->

## Qué cambia
-

## Cómo verificar (revisor/a)
1. `gh pr checkout <n>` y abrir `domus/` en MPS
2. `Build → Rebuild Project`
3. `domus.tests → Run tests`
4. …

## Requisitos de la guía cubiertos
<!-- IDs de docs/03_TRAZABILIDAD_GUIA.md, p. ej. A1, B2, C1 -->

## Checklist
- [ ] Rebuild sin errores (salvo modelos `invalidos.*`, que fallan a propósito)
- [ ] Pruebas en verde
- [ ] `docs/BITACORA.md` actualizado
- [ ] `docs/02_ESPECIFICACION_FORMAL.md` refleja cualquier cambio de diseño
- [ ] Sin archivos generados (`source_gen`, `classes_gen`, `test_gen`, `workspace.xml`)
- [ ] Handoff escrito (si cierra sesión)
