# 🚗 Contador de Fuscas

Um app feito com 💙 por Giovani e Carol para registrar quem viu mais Fuscas no dia!  
Porque ver Fusca na rua virou competição séria por aqui. 😄

## 📱 Sobre o App

Este é um contador simples onde cada pessoa pode registrar quantos Fuscas encontrou.  
Os dados são salvos localmente, então mesmo fechando o app, os números continuam lá!

Feito com Flutter e usando `shared_preferences` para armazenar os dados.

## ✨ Funcionalidades

- ✅ Contador individual para Carol e Gi
- ➕ Botões para incrementar ou decrementar
- 💾 Dados persistentes com `SharedPreferences`
- 🎯 Interface amigável e intuitiva
- 🧩 Organização com model `FuscaCounter`

 ## 🖼️ Prints

### Tela inicial
![Tela Inicial](https://github.com/user-attachments/assets/72117dfc-a775-4447-bb6d-babb1948e037)


## 🧱 Estrutura do Projeto

```
fusca_counter_new/
├── android/                    # Projeto Android nativo
├── build/                      # Arquivos gerados automaticamente (builds)
├── ios/                        # Projeto iOS nativo
├── lib/                        # Código principal do app
│   ├── models/
│   │   └── counter.dart        # Modelo FuscaCounter
│   ├── home_page.dart          # Tela principal com os contadores
│   └── main.dart               # Entrada da aplicação
├── linux/                      # Suporte para Linux
├── macos/                      # Suporte para macOS
├── test/                       # Testes unitários
├── web/                        # Suporte para web
├── windows/                    # Suporte para Windows
├── pubspec.yaml                # Configuração de dependências do Flutter
├── .gitignore                  # Arquivos ignorados pelo Git
└── README.md                   # Este arquivo
```

## 🧪 Tecnologias

- Flutter
- Dart
- Shared Preferences (para persistência local)

## 🚀 Como rodar o projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/giovanischitcoski/contador-de-fuscas.git
   ```
2. Navegue até a pasta do projeto:
   ```bash
   cd contador-de-fuscas
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```
4. Rode no emulador ou dispositivo:
   ```bash
   flutter run
   ```

## 📦 Gerar APK (Android)

Se quiser instalar no celular:

```bash
flutter build apk --release
```

O APK gerado estará em:  
`build/app/outputs/flutter-apk/app-release.apk`

## 👥 Desenvolvedores

- Giovani
- Carol

Feito com amor, risadas e muitos Fuscas pelo caminho. ❤️
