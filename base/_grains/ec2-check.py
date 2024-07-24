import urllib.request

def get_metadata(token, endpoint):
    request = urllib.request.Request(endpoint)
    request.add_header('X-aws-ec2-metadata-token', token)
    with urllib.request.urlopen(request) as response:
        return response.read().decode('utf-8')

def ec2_check():
    # Initiate grain dictionary
    grains = {}

    # Initiate grains key cloud info
    grains['cloud_info'] = []

    # Base URL
    base_url = 'http://169.254.169.254/latest/meta-data/'

    # Get a token for IMDSv2
    token_url = 'http://169.254.169.254/latest/api/token'
    token_request = urllib.request.Request(token_url, method='PUT')
    token_request.add_header('X-aws-ec2-metadata-token-ttl-seconds', '21600')  # Token validity period
    with urllib.request.urlopen(token_request) as response:
        token = response.read().decode('utf-8')

    # Fetch instance data using the token
    instance_id = get_metadata(token, base_url + 'instance-id')
    instance_type = get_metadata(token, base_url + 'instance-type')

    # Append provider and instance details
    cloud_info = {
        'provider': 'Amazon',
        'instance_id': instance_id,
        'instance_type': instance_type
    }
    grains['cloud_info'].append(cloud_info)

    return grains

