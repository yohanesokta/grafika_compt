
#### OpenGL-GLUT Project on Camps
> Project is a collection of graphical applications developed using C++, OpenGL, and the GLUT library. It demonstrates basic rendering techniques, specifically drawing geometric primitives.

Since the project uses standard OpenGL and GLUT/FreeGLUT libraries along with CMake, it is cross-platform and can be run on **Windows**, **Linux**, and **macOS**.

> Ini bahkan jauh lebih stabil karena menggunakan FreeGlut yang package nya masih di ter maintenance dengan baik
---

## Prasyarat & Instalasi / Prerequisites & Installation

Untuk membangun dan menjalankan proyek ini, Anda memerlukan kompiler C++, CMake, dan pustaka pengembangan FreeGLUT yang terinstal di sistem Anda.

*To build and run this project, you need a C++ compiler, CMake, and the FreeGLUT development libraries installed on your system.*

### 1. Windows (Disarankan: MSYS2 / Recommended: MSYS2)

Cara termudah untuk mendapatkan lingkungan mirip Unix dengan manajer paket di Windows adalah menggunakan [MSYS2](https://www.msys2.org/).

*The easiest way to get a Unix-like environment with a package manager on Windows is to use [MSYS2](https://www.msys2.org/).*

1.  **Instal MSYS2 / Install MSYS2**:
    Unduh instalernya dari [msys2.org](https://www.msys2.org/) dan ikuti petunjuk instalasinya.
    *Download the installer from [msys2.org](https://www.msys2.org/) and follow the installation instructions.*

2.  **Buka Terminal / Open the Terminal**:
    Jalankan terminal `MSYS2 MinGW 64-bit` dari menu Start Anda.
    *Launch the `MSYS2 MinGW 64-bit` terminal from your Start menu.*

3.  **Perbarui Paket / Update Packages**:
    Jalankan perintah berikut untuk memperbarui basis data paket dan paket sistem inti:
    *Run the following command to update the package database and core system packages:*
    ```bash
    pacman -Syu
    ```
    (Anda mungkin perlu menutup dan membuka kembali terminal jika diminta).
    *(You may need to close and reopen the terminal if prompted).*

4.  **Instal Dependensi / Install Dependencies**:
    Instal toolchain MinGW-w64 (gcc, g++, dll.), FreeGLUT, dan CMake:
    *Install the MinGW-w64 toolchain (gcc, g++, etc.), FreeGLUT, and CMake:*
    ```bash
    pacman -S mingw-w64-x86_64-toolchain mingw-w64-x86_64-freeglut mingw-w64-x86_64-cmake
    ```
    *Tekan Enter saat diminta untuk memilih anggota grup (untuk menginstal semua komponen default).*
    *Press Enter when asked to select members of the group (to install all default components).*

### 2. Linux

Instal paket yang diperlukan menggunakan manajer paket distribusi Anda.

*Install the required packages using your distribution's package manager.*

*   **Ubuntu / Debian**:
    ```bash
    sudo apt update
    sudo apt install freeglut3-dev cmake build-essential
    ```

*   **Arch Linux**:
    ```bash
    sudo pacman -S freeglut cmake base-devel
    ```

*   **Fedora**:
    ```bash
    sudo dnf install freeglut-devel cmake gcc-c++
    ```

### 3. macOS

Gunakan [Homebrew](https://brew.sh/) untuk menginstal dependensi.

*Use [Homebrew](https://brew.sh/) to install the dependencies.*

1.  **Instal Homebrew** (jika belum terinstal) / **Install Homebrew** (if not already installed):
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
2.  **Instal Dependensi / Install Dependencies**:
    ```bash
    brew install freeglut cmake
    ```

---

## Pengaturan & Build / Setup & Build

Gunakan skrip `build.sh` yang disediakan untuk mengelola proses build proyek.

*Use the provided `build.sh` script to manage the project build process.*

### 1. Inisialisasi (Pengaturan Awal) / Initialization (First Time Setup)
Jalankan perintah ini sekali untuk menghasilkan file build:

*Run this command once to generate the build files:*
```bash
./build.sh setup
```

### 2. Kompilasi Proyek / Compile the Project
Untuk mengompilasi semua target (executable):

*To compile all targets (executables):*
```bash
./build.sh
```

## Menjalankan Aplikasi / Running the Application

Setelah kompilasi berhasil, file executable ditempatkan di direktori `bin/`.

*Upon successful compilation, executables are placed in the `bin/` directory.*

### Target yang Tersedia / Available Targets
- `main`: Aplikasi titik masuk utama. (*The main entry point application.*)
- `codeblok`: Demonstrasi primitif geometris. (*Geometric primitives demonstration.*)
- `tugas2`: Tugas kuliah / Pertemuan 2. (*Coursework assignment / Pertemuan 2.*)

### Cara Menjalankan / How to Run
Anda dapat menjalankan target secara langsung menggunakan skrip pembantu:

*You can run a target directly using the helper script:*
```bash
./build.sh main
./build.sh codeblok
./build.sh tugas2
```

Atau, jalankan executable langsung dari folder `bin/`:

*Alternatively, run the executables directly from the `bin/` folder:*
```bash
./bin/main
# atau / or
./bin/codeblok
# atau / or
./bin/tugas2
```

## Struktur Proyek / Project Structure

- `main.cpp`: Kode sumber aplikasi utama. (*Main application source code.*)
- `codeblok.cpp`: Kode sumber untuk demo primitif geometris. (*Source code for geometric primitives demo.*)
- `coursework/`: Folder berisi tugas kuliah (misalnya, `pertemuan2.cpp`). (*Folder containing coursework assignments (e.g., `pertemuan2.cpp`).*)
- `bin/`: Direktori output untuk executable yang dikompilasi dan DLL (seperti `libfreeglut.dll` di Windows). (*Output directory for compiled executables and DLLs.*)
- `build/`: Artefak build CMake (dihasilkan saat pengaturan). (*CMake build artifacts (generated during setup).*
- `build.sh`: Skrip Bash untuk menyederhanakan pengaturan, kompilasi, dan eksekusi. (*Bash script to simplify setup, compilation, and execution.*)
- `CMakeLists.txt`: File konfigurasi CMake yang mendefinisikan target build dan dependensi. (*CMake configuration file defining build targets and dependencies.*)