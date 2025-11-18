#!/bin/bash
# setup_bash_project.sh

BASE_DIR=/mnt/c/data/bash_projects/BashLearning

# 1️⃣ Создаем папки
mkdir -p "$BASE_DIR"/{01_basics,02_conditions,03_loops,04_functions,05_files,06_text_processing,07_projects,utils}

# 2️⃣ Скрипты

# 01_basics
cat > "$BASE_DIR/01_basics/hello.sh" << 'EOF'
#!/bin/bash
echo "Hello, Bash!"
EOF

cat > "$BASE_DIR/01_basics/variables.sh" << 'EOF'
#!/bin/bash
name="Shiraz"
age=25
echo "My name is $name and I am $age years old"
EOF

cat > "$BASE_DIR/01_basics/args.sh" << 'EOF'
#!/bin/bash
echo "Script name: $0"
echo "First arg: $1"
echo "All args: $@"
EOF

# 02_conditions
cat > "$BASE_DIR/02_conditions/if_example.sh" << 'EOF'
#!/bin/bash
read -p "Enter a number: " num
if [ $num -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or less"
fi
EOF

cat > "$BASE_DIR/02_conditions/case_example.sh" << 'EOF'
#!/bin/bash
read -p "Enter a fruit (apple/orange/banana): " fruit
case $fruit in
    apple) echo "You chose apple";;
    orange) echo "You chose orange";;
    banana) echo "You chose banana";;
    *) echo "Unknown fruit";;
esac
EOF

# 03_loops
cat > "$BASE_DIR/03_loops/for_loop.sh" << 'EOF'
#!/bin/bash
for i in {1..5}; do
    echo "Iteration $i"
done
EOF

cat > "$BASE_DIR/03_loops/while_loop.sh" << 'EOF'
#!/bin/bash
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done
EOF

# 05_files
cat > "$BASE_DIR/05_files/create_dirs.sh" << 'EOF'
#!/bin/bash
for i in {01..05}; do
    mkdir -p "M$i"
    touch "M$i/file1.txt"
done
EOF

cat > "$BASE_DIR/05_files/check_file.sh" << 'EOF'
#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 filename"
    exit 1
fi

if [ -f "$1" ]; then
    echo "File $1 exists"
else
    echo "File $1 does not exist"
fi
EOF

# utils
cat > "$BASE_DIR/utils/common_functions.sh" << 'EOF'
#!/bin/bash
function greet {
    local name="$1"
    echo "Hello, $name!"
}

function check_dir {
    local dir="$1"
    if [ -d "$dir" ]; then
        echo "Directory $dir exists"
    else
        echo "Directory $dir does not exist"
    fi
}
EOF

# 3️⃣ Сделать все скрипты исполняемыми
chmod +x "$BASE_DIR"/*/*.sh

echo "✅ BashLearning проект создан в $BASE_DIR"
