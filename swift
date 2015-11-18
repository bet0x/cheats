# Get authentication URL and Auth Token
swift -A https://cluster.objectstorage.softlayer.net/auth/v1.0/ -U $api_user -K $api_key stat -v

# with Environment variables set
swift -A $ST_AUTH -U $ST_USER -K $ST_KEY stat -v

# List containers
swift --os-auth-token <AUTH_TOKEN> --os-storage-url <AUTH_URL> list

# List objects in a container
swift --os-auth-token <AUTH_TOKEN> --os-storage-url <AUTH_URL>/<CONTAINER> list

# Upload a file
swift upload <CONTAINER> <LOCAL_FILE> --os-auth-token <AUTH_TOKEN> --os-storage-url <AUTH_URL>

# Create a container
swift post <CONTAINER_NAME> --os-auth-token <AUTH_TOKEN> --os-storage-url <AUTH_URL>

# Delete an object
swift delete <CONTAINER> <FILE> --os-auth-token <AUTH_TOKEN> --os-storage-url <AUTH_URL>

