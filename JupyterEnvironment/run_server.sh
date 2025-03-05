# Check if the script is being sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "This script must be sourced. Run 'source run_server.sh'"
    exit 1
fi

if [[ -z "$VIRTUAL_ENV" ]]; then
    echo "No virtual environment detected. Creating a new one..."
    
    # Activate the virtual environment
    source .env/bin/activate
fi

jupyter notebook