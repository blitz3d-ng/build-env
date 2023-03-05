$LLVM_VERSION = "16.0.0-rc3"
$BUILD_DIR = ".\build"
$DEST_DIR = ".\llvm"

Invoke-WebRequest -Uri "https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-$LLVM_VERSION.zip" -OutFile "llvm.zip"
Expand-Archive llvm.zip -DestinationPath .\

cmake `
  -G Ninja `
  -S llvm-project-llvmorg-$LLVM_VERSION\llvm `
  -B $BUILD_DIR `
  -DCMAKE_TOOLCHAIN_FILE=llvm.cmake `
  -DCMAKE_INSTALL_PREFIX=$DEST_DIR

cmake --build $BUILD_DIR
cmake --install $BUILD_DIR
