# GSB Kart Uygulaması


🏫 GSB Kart Uygulaması

Node.js Backend + Flutter Frontend

Bu proje, üniversite öğrencilerinin QR kod ile indirim, puan kazanma, etkinlik yoklama,
ve market sistemi gibi özelliklerden yararlanmasını sağlayan bir mobil uygulama ve backend API’sidir.

📌 Proje Yapısı:
gsb-kart-app/
│
├── backend/     # Node.js REST API
├── mobile/      # Flutter mobil uygulaması
├── infra/       # Docker, nginx, compose dosyaları
├── docs/        # Gereksinim, mimari tasarım, API dokümantasyonu
└── README.md


⚙️ Kullanılan Teknolojiler
Backend
Node.js (Express / NestJS)
PostgreSQL
Prisma / Sequelize ORM
JWT Authentication
QR Code Service
GPS doğrulama

Frontend (Flutter)
Flutter (Dart)
State Management (Bloc / Provider / Riverpod)
Dio HTTP Client
QR Kod Scanner
Google Maps API
DevOps
Docker & Docker Compose
GitHub Actions (CI/CD)
SSH Deployment

🔀 GitFlow Branching Modeli:
main        → Production branch
develop     → Aktif geliştirme
feature/*   → Yeni özellikler
release/*   → Yayın hazırlık sürümleri
hotfix/*    → Production acil düzeltmeleri

🧱 Backend Başlangıç Kurulumu:
cd backend
npm install
npm run dev

Env dosyası::
PORT=3000
DATABASE_URL=postgresql://user:pass@localhost:5432/gsb
JWT_SECRET=your-secret-key

📱 Flutter Başlangıç Kurulumu:
cd mobile
flutter pub get
flutter run

🐳 Docker Kullanımı
Build & Run:
docker-compose up --build

Backend → http://localhost:3000
PostgreSQL → localhost:5432

🚦 CI/CD (GitHub Actions)

Push → Test → Build → Deploy pipeline’ı çalışır
Backend için Node.js test runner
Flutter için build pipeline
Docker image üretimi

👥 Ekip İş Bölümü:
| Rol                | Sorumluluk                                      |
| ------------------ | ----------------------------------------------- |
| Backend Developer  | Auth, QR, Puan, Etkinlik, Market API            |
| Frontend Developer | Flutter UI/UX, QR tarayıcı, harita entegrasyonu |
| DevOps             | CI/CD, Docker, Deploy                           |
| QA Tester          | Manuel ve otomasyon testleri                    |

📄 API Dokümantasyonu:
Swagger veya Postman Collection proje ilerledikçe buraya eklenecek.

📌 Proje Durumu:
🟢 Aktif geliştirme devam ediyor
🔄 Sprint planlamaları docs klasöründe tutuluyor
📦 Docker altyapısı hazırlanıyor

✨ Kurulum & Katkı
Projeyi klonlayın:
git clone git@github.com:alikalender0024/gsb-kart-app.git

📧 İletişim:
Geliştirici: Ali Kalender
Geliştirici: Beytullah Uzundal
GitHub: https://github.com/alikalender0024
GitHub: https://github.com/beytullah-42