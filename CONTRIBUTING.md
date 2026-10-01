# Guía para agregar nuevos ejercicios

Cada nuevo laboratorio debería seguir esta estructura:

```text
XX-categoria/
└── XX-nombre/
    ├── README.md
    ├── lab.md
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── terraform.tfvars.example
    └── solution.md
```

Cuando sea necesario agregar configuración especializada:

- `providers.tf`
- `versions.tf`
- `locals.tf`
- `data.tf`
- `backend.tf`
- `modules/`

No incluir credenciales, secretos, state ni archivos `.tfvars` reales.

Todo ejercicio debe poder ser ejecutado por un alumno con su propia cuenta cloud y debe incluir instrucciones de limpieza.