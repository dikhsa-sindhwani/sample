import requests
import json

# Azure Instance Metadata service endpoint
metadata_endpoint = "http://169.254.169.254/metadata/instance?api-version=2021-02-01"

# Function to retrieve metadata
def get_azure_instance_metadata():
    headers = {'Metadata': 'true'}
    response = requests.get(metadata_endpoint, headers=headers)
    if response.status_code == 200:
        metadata_json = response.json()
        return metadata_json
    else:
        return None

# Retrieve metadata
metadata = get_azure_instance_metadata()

# Check if metadata retrieval was successful
if metadata is not None:
    # Convert metadata to JSON format
    json_output = json.dumps(metadata, indent=4)
    print("Full metadata:")
    print(json_output)
    
    # Retrieve a specific data key
    specific_key = "compute/vmId"
    if specific_key in metadata:
        value = metadata[specific_key]
        print(f"\nValue of '{specific_key}': {value}")
    else:
        print(f"\n'{specific_key}' not found in metadata.")
else:
    print("Failed to retrieve metadata.")