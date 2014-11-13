module Paths_learn_haskell (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [1,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/JP16163/.cabal/bin"
libdir     = "/Users/JP16163/.cabal/lib/x86_64-osx-ghc-7.6.3/learn-haskell-1.0"
datadir    = "/Users/JP16163/.cabal/share/x86_64-osx-ghc-7.6.3/learn-haskell-1.0"
libexecdir = "/Users/JP16163/.cabal/libexec"
sysconfdir = "/Users/JP16163/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "learn_haskell_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "learn_haskell_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "learn_haskell_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "learn_haskell_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "learn_haskell_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
