# Check if the script is being sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "This script must be sourced. Run 'source run_server.sh'"
    exit 1
fi

if [[ -z "$VIRTUAL_ENV" ]]; then
    echo "No virtual environment detected. Loading the local .env..."
    
    # Activate the virtual environment
    source .env/bin/activate
fi

echo "========================="
echo "Find the Jupyter servert at:"
echo "http://127.0.0.1:8888/tree?token=SuperSecretToken"
echo "========================="

jupyter notebook --NotebookApp.token=SuperSecretToken