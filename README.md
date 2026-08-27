# Fin Track — Personal Finance & Subscription Tracker 📊 💳

Fin Track is a production-ready, beautiful, dark-themed **Personal Finance & Wealth Management application** built using the **Flutter SDK**. It provides users with a comprehensive workspace to seamlessly monitor daily expenses, visualize categorical budget distributions, track active subscription billing cycles, and manage card analytics through fluid, custom-painted user interfaces.

---

## 🚀 Architectural & Core Features

* **Advanced Layout Engineering:** Custom-built layout flows explicitly structured with `SingleChildScrollView` wrappers to eliminate bottom-overflow flags (`RenderFlex overflowed by X pixels`) across arbitrary device form factors during soft-keyboard presentation.
* **Deterministic Navigation Stack Routing:** Leverages secure stateful stack overrides (`Navigator.pushAndRemoveUntil`) upon successful entry execution. This prevents standard hardware back-button actions from reversing logged-in states back into vulnerable credential onboarding pools.
* **Stateful Centralized Shell Navigation:** Features a robust state-retaining bottom navigation layout shell (`MainTabView`) controlling structural view context transitions flawlessly.
* **Custom Graphical Canvas Rendering:** Employs precise geometric rendering calculations using Flutter’s `CustomPainter` canvas toolchains (`custom_arc_180_painter`, `custom_arc_painter`) to illustrate beautiful progress arcs and budget usage visualization rings.
* **Granular Functional Modularity:** Complete modular distribution containing multi-category operational domain components (Asset Cards management, Payment Calendars, Spend Metrics analytics, and granular Subscriptions telemetry updates).

---

## 🛠️ Technology Stack & Dependencies

* **Cross-Platform UI Framework:** [Flutter Ecosystem](https://flutter.dev) (Dart Programming Language)
* **Backend Infrastructure Ready:** Configured to map directly against [Google Firebase App Services](https://google.com) core SDK bindings for seamless cloud state authentication tracking.

---

## 📂 Project Structure & Layout Blueprint

The actual operational hierarchy of this repository maps exactly to the structural layout blueprint below:

```text
lib/
├── common/                  # Application-wide global extension modules and theme utility profiles
│   └── color_extension.dart # Centralized dark-theme configuration palette control
├── common_widget/           # Highly optimized, atomic reusable components and row views
│   ├── budgets_row.dart     # Dynamic metric container block for budget allowances
│   ├── custom_arc_painter.dart # Custom drawing canvas mapping circular spending statistics
│   ├── primary_button.dart  # Core primary button component with standard visual states
│   ├── round_textfield.dart # Standardized text input box with custom padding configurations
│   └── upcoming_bill_row.dart # Unified presentation row for active pending bills
├── view/                    # Application interface layout contexts
│   ├── add_subscription/    # Interactive view container to record recurring invoices
│   ├── calender/            # Interactive scheduling log tracking timeline payments
│   ├── card/                # Management interfaces tracking credit and debit instruments
│   ├── home/                # Dynamic visual console with real-time indicators and meters
│   ├── login/               # Authentication hub (Welcome, Social, Sign In, and Sign Up)
│   ├── main_tab/            # Master layout shell controlling core bottom tab switches
│   ├── settings/            # User settings, preferences, and account controls
│   ├── spending_budgets/    # Detailed analytical data blocks and visual budget tracking
│   └── subscription_info/   # Complete cost matrix details and billing history analytics
└── main.dart                # Consolidated orchestration bootstrap file and core entry point
```

---

## ⚙️ Development Environment Setup

### 📋 Prerequisites
Ensure your developer machine environment has a stable installation of the **Flutter SDK** and the respective **Android Studio / Xcode toolchains**.

### 💻 Local Deployment Steps

1. **Clone this repository locally to your machine:**
   ```bash
   git clone https://github.com
   cd fin_track
   ```

2. **Fetch and update the package ecosystem dependencies:**
   ```bash
   flutter pub get
   ```

3. **Backend Credential Provisioning (Critical Environment Requirement):**
   To seamlessly connect with cloud authentication workflows, ensure your unique backend provisioning profiles are downloaded from your Google Firebase console and positioned precisely inside these target directories:
   * **Android Platform:** Drop your file at `android/app/google-services.json`
   * **iOS Platform:** Drop your file at `ios/Runner/GoogleService-Info.plist` *(Remember to correctly link this configuration mapping inside Xcode)*

4. **Launch the application on an emulator or active hardware test device:**
   ```bash
   flutter run
   ```

---

## 🔒 Security Configuration Note
Your sensitive environment configurations (`google-services.json` and `GoogleService-Info.plist`) are securely isolated using standard `.gitignore` filter arrays to keep private project keys completely protected from accidental tracking distributions.
