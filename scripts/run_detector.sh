#!/bin/bash

# AndroidLoginDetector - Main Run Script
# Handles environment checking, compilation, and execution

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Default values
CHECK_ENVIRONMENT=true
COMPILE_PROJECT=true
SHOW_STRUCTURE=false
ENVIRONMENT_CHECK_ONLY=false

# Log file
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
LOG_FILE="$PROJECT_ROOT/logs/run_detector_${TIMESTAMP}.log"

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to log messages
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

# Function to show usage
show_usage() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -c, --check-only      Run environment check only"
    echo "  --no-check           Skip environment check"
    echo "  --no-compile         Skip compilation (use existing class files)"
    echo "  -s, --show-structure Show project structure"
    echo "  -h, --help           Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0                    # Full run with environment check and compilation"
    echo "  $0 --no-check         # Skip environment check"
    echo "  $0 --no-compile       # Skip compilation"
    echo "  $0 -c                 # Environment check only"
    echo "  $0 -s                 # Show project structure"
}

# Function to show project structure
show_project_structure() {
    print_status "Project Structure:"
    echo ""
    echo "AndroidLoginDetector/"
    echo "├── src/main/java/           # Core Java code"
    echo "│   ├── AndroidLoginDetector.java    # Main controller"
    echo "│   ├── FridaManager.java            # Frida management"
    echo "│   ├── UIManager.java               # UI automation (ADB-based)"
    echo "│   ├── StateMachineManager.java     # State machine validation"
    echo "│   ├── ConfigLoader.java            # Configuration loader"
    echo "│   └── LoginReportManager.java      # Report management"
    echo "├── src/main/resources/      # Configuration files"
    echo "│   ├── config.properties            # Main configuration"
    echo "│   ├── regex_patterns.txt           # API regex patterns"
    echo "│   └── login_agent.js               # Frida agent script"
    echo "├── scripts/                 # Scripts"
    echo "│   ├── frida_controller.py          # Frida controller"
    echo "│   ├── docker-environment-check.sh  # Environment check script"
    echo "│   └── run_detector.sh              # Main run script (this file)"
    echo "├── pools/                   # Credential pools"
    echo "├── logs/                    # Log files"
    echo "├── reports/                 # Report files"
    echo "├── apps/                    # APK files"
    echo "├── docker-compose.yml       # Docker configuration"
    echo "├── Dockerfile               # Docker image"
    echo "└── pom.xml                  # Maven configuration"
    echo ""
}

# Function to check basic environment
check_basic_environment() {
    print_status "Checking basic environment..."
    
    # Check if we're in the right directory
    if [[ ! -f "$PROJECT_ROOT/pom.xml" ]]; then
        print_error "pom.xml not found. Please run this script from the project root or scripts directory."
        exit 1
    fi
    
    # Check Java
    if ! command -v java &> /dev/null; then
        print_error "Java is not installed or not in PATH"
        exit 1
    fi
    
    # Check Maven
    if ! command -v mvn &> /dev/null; then
        print_error "Maven is not installed or not in PATH"
        exit 1
    fi
    
    # Check Python
    if ! command -v python3 &> /dev/null; then
        print_error "Python3 is not installed or not in PATH"
        exit 1
    fi
    
    # Check ADB
    if ! command -v adb &> /dev/null; then
        print_warning "ADB is not installed or not in PATH"
    fi
    
    # Check Frida
    if ! command -v frida &> /dev/null; then
        print_warning "Frida is not installed or not in PATH"
    fi
    
    # Create necessary directories
    mkdir -p "$PROJECT_ROOT/logs"
    mkdir -p "$PROJECT_ROOT/reports"
    
    print_success "Basic environment check completed"
}

# Function to run environment check
run_environment_check() {
    print_status "Running comprehensive environment check..."
    
    if [[ -f "$SCRIPT_DIR/docker-environment-check.sh" ]]; then
        "$SCRIPT_DIR/docker-environment-check.sh"
    else
        print_warning "docker-environment-check.sh not found, running basic check"
        check_basic_environment
    fi
}

# Function to compile project
compile_project() {
    print_status "Compiling Java project..."
    
    cd "$PROJECT_ROOT"
    
    if mvn clean compile; then
        print_success "Project compiled successfully"
    else
        print_error "Project compilation failed"
        exit 1
    fi
}

# Function to run the detector
run_detector() {
    print_status "Starting Android Login Detector..."
    
    cd "$PROJECT_ROOT"
    
    # Check if compiled classes exist
    if [[ ! -d "target/classes" ]]; then
        print_error "Compiled classes not found. Please compile the project first."
        exit 1
    fi
    
    # Check if main class exists
    if [[ ! -f "target/classes/AndroidLoginDetector.class" ]]; then
        print_error "AndroidLoginDetector.class not found. Please compile the project first."
        exit 1
    fi
    
    # Run the detector
    print_status "Executing AndroidLoginDetector..."
    java -cp "target/classes:target/dependency/*" AndroidLoginDetector 2>&1 | tee -a "$LOG_FILE"
    
    if [[ ${PIPESTATUS[0]} -eq 0 ]]; then
        print_success "Android Login Detector completed successfully"
    else
        print_error "Android Login Detector failed"
        exit 1
    fi
}

# Function to check Docker environment
check_docker_environment() {
    print_status "Checking Docker environment..."
    
    if ! command -v docker &> /dev/null; then
        print_warning "Docker is not installed or not in PATH"
        return 1
    fi
    
    if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
        print_warning "Docker Compose is not installed or not in PATH"
        return 1
    fi
    
    print_success "Docker environment check completed"
    return 0
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -c|--check-only)
            ENVIRONMENT_CHECK_ONLY=true
            shift
            ;;
        --no-check)
            CHECK_ENVIRONMENT=false
            shift
            ;;
        --no-compile)
            COMPILE_PROJECT=false
            shift
            ;;
        -s|--show-structure)
            SHOW_STRUCTURE=true
            shift
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        *)
            print_error "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

# Main execution
main() {
    log_message "Starting AndroidLoginDetector run script"
    
    # Show project structure if requested
    if [[ "$SHOW_STRUCTURE" == true ]]; then
        show_project_structure
        exit 0
    fi
    
    # Environment check only
    if [[ "$ENVIRONMENT_CHECK_ONLY" == true ]]; then
        run_environment_check
        exit 0
    fi
    
    # Check environment if requested
    if [[ "$CHECK_ENVIRONMENT" == true ]]; then
        run_environment_check
    fi
    
    # Compile project if requested
    if [[ "$COMPILE_PROJECT" == true ]]; then
        compile_project
    fi
    
    # Run the detector
    run_detector
    
    log_message "AndroidLoginDetector run script completed"
    print_success "All operations completed successfully"
    print_status "Log file: $LOG_FILE"
}

# Run main function
main "$@" 