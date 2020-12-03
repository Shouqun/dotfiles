alias ls='ls -G'
alias rm='rm -i'
alias cp='cp -i'
alias grep='grep --color=auto'
alias l='ls -G'
alias v='vim'

export PS1='\[\033[1;34m\][\[\033[1;33m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h \[\033[1;32m\]\t \[\033[1;34m\]]:\[\033[01;34m\] \w\[\033[31m\]\$ \[\033[m\]'

alias map32='${ANDROID_NDK}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-addr2line -Cfi -e '
alias map64='${ANDROID_NDK}/toolchains/aarch64-linux-android-4.9/prebuilt/darwin-x86_64/bin/aarch64-linux-android-addr2line -Cfi -e '
