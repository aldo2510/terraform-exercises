# Módulo básico — estructura de solución

La solución debe tener un root module y un módulo local:

```text
06-modules/01-basic-module/
├── main.tf
├── variables.tf
├── outputs.tf
├── lab.md
├── solution.md
└── modules/
    └── storage/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

El módulo debe recibir únicamente inputs necesarios y no debe contener credenciales.