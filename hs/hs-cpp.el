(defvar msbuild-old-path-var (getenv "PATH"))

(defun msbuild-2019-x64-setup ()
  "Set enviorment variables to load Microsoft Visual C++ Compiler (MSVC) 64 bits"
  (interactive)
  (message "Setting 64 bits building tools.")
  (setenv "PATH" msbuild-old-path-var)
  (setenv "INCLUDE"
        (concat
             "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/ATLMFC/include"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/include"
         ";" "C:/Program Files (x86)/Windows Kits/NETFXSDK/4.6.1/include/um"
         ";" "C:/Program Files (x86)/Windows Kits/10/include/10.0.19041.0/ucrt"
         ";" "C:/Program Files (x86)/Windows Kits/10/include/10.0.19041.0/shared"
         ";" "C:/Program Files (x86)/Windows Kits/10/include/10.0.19041.0/um"
         ";" "C:/Program Files (x86)/Windows Kits/10/include/10.0.19041.0/winrt"
         ))

  (setenv "LIB"
        (concat
             "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/ATLMFC/lib/x64"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/lib/x64"
         ";" "C:/Program Files (x86)/Windows Kits/NETFXSDK/4.8/lib/um/x64"
         ";" "C:/Program Files (x86)/Windows Kits/10/lib/10.0.19041.0/ucrt/x64"
         ";" "C:/Program Files (x86)/Windows Kits/10/lib/10.0.19041.0/um/x64"             
         ))

  (setenv  "LIBPATH"
         (concat
              "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/ATLMFC/lib/x64"
          ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/lib/x64"
          ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/lib/x64/store/references"
          ";" "C:/Program Files (x86)/Windows Kits/10/UnionMetadata/10.0.19041.0"
          ";" "C:/Program Files (x86)/Windows Kits/10/References/10.0.19041.0"
          ";" "C:/Windows/Microsoft.NET/Framework/v4.0.30319"
          ))

  (setenv "PATH"
        (concat
         (getenv "PATH")
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Tools/MSVC/14.29.30133/bin/HostX86/x64"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE/VC/VCPackages"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE/CommonExtensions/Microsoft/TestWindow"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE/CommonExtensions/Microsoft/TeamFoundation/Team Explorer"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/MSBuild/Current/bin/Roslyn"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Team Tools/Performance Tools"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/Shared/Common/VSPerfCollectionTools/"
         ";" "C:/Program Files (x86)/Microsoft SDKs/Windows/v10.0A/bin/NETFX 4.8 Tools/"
         ";" "C:/Program Files (x86)/Microsoft SDKs/F#/4.1/Framework/v4.0/"
         ";" "C:/Program Files (x86)/Windows Kits/10/bin/x64"
         ";" "C:/Program Files (x86)/Windows Kits/10/bin/10.0.19041.0/x64"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional//MSBuild/Current/bin"
         ";" "C:/Windows/Microsoft.NET/Framework/v4.0.30319"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/IDE/"
         ";" "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/Common7/Tools/"
         )))

(defun msbuild ()
  (interactive)
  (msbuild-2019-x64-setup)
  (let ((compile-command (format "msbuild \"%s\""
                                 (file-name-nondirectory "d:\\fatshark-stingray\\build\\msvc16\\engine\\win64\\stingray_engine_win64.sln")))
        (compilation-ask-about-save nil))))

(defun compile-msvc-x64 ()
  (interactive)
  (msbuild-2019-x64-setup)
  (let ((compile-command (format "cl.exe \"%s\""
                                 (file-name-nondirectory (buffer-file-name))))
        (compilation-ask-about-save nil))
    (call-interactively #'compile )))

(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'yas-minor-mode)

(provide 'hs-cpp)
