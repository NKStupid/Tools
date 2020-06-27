# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.el7_8.x86_64
M2_HOME=/usr/local/bin/apache-maven-3.6.3
M2=$M2_HOME/bin
PATH=$PATH:$HOME/.local/bin:$HOME/bin:$JAVA_HOME:$M2_HOME:$M2

export PATH

