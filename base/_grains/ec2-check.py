import urllib

def ec2_check():

    #Initiate grain dictionary
    grains = {}

    #Intiate grains key cloud info
    grains['cloud_info'] = []

    #Base url
    base_url = 'http://169.254.169.254/latest/meta-data/'

    instance_id = urllib.urlopen(base_url + '/instance_id')
    instance_type = urllib.urlopen(base_url + 'instance-type')
    instance_id = instance_id.read()
    instance_type = instance_type.read()

    grains['cloud_info'].append('provider':'Amazon')
    grains['cloud_info'][0]['instance_id'] = instance_id
    grains['cloud_info'][0]['instance_type'] = instance_type
    
    return grains

if __name__ == '__main__':
    ec2_check()

