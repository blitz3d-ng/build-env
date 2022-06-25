$LLVM_VERSION = "14.0.4"
$BUILD_DIR = ".\build"
$DEST_DIR = ".\llvm"

Invoke-WebRequest -Uri "https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-$LLVM_VERSION.zip" -OutFile "llvm.zip"
Expand-Archive llvm.zip -DestinationPath .\

cmake -S llvm-project-llvmorg-$LLVM_VERSION\llvm -B $BUILD_DIR `
  -DCMAKE_BUILD_TYPE=Release `
  -DCMAKE_INSTALL_PREFIX=$DEST_DIR `
  -DCMAKE_CXX_STANDARD=14 `
  -DLLVM_ENABLE_PROJECTS=lld `
  -DLLVM_ENABLE_RUNTIMES="" `
  -DLLVM_TARGETS_TO_BUILD="AArch64;ARM;WebAssembly;X86" `
  -DLLVM_BUILD_TOOLS=OFF `
  -DLLVM_HAVE_LIBXAR=OFF

cmake --build $BUILD_DIR
cmake --install $BUILD_DIR
