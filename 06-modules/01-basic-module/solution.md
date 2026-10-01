# Solución — Módulo básico

La solución separa:

```text
root/
├── main.tf
├── variables.tf
├── outputs.tf
└── modules/
    └── storage/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

El módulo recibe inputs mínimos y devuelve únicamente outputs necesarios.

El root module es responsable de composición; el módulo encapsula la implementación del componente.