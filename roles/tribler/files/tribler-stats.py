import json
import requests
import math

api_key = '8752d9c236775201d8c7589cdb07f8ee'
api_url_base = 'http://localhost:8085/'

headers = {'Content-Type': 'application/json',
           'X-Api-Key': api_key}

def convert_size(size_bytes):
    if size_bytes == 0:
        return "0  B"
    size_name = ("B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB")
    i = int(math.floor(math.log(size_bytes, 1024)))
    p = math.pow(1024, i)
    s = size_bytes / p
    return "{:.2f} {:>2}".format(s, size_name[i])

def get_downloads():
    api_url = '{0}downloads'.format(api_url_base)

    response = requests.get(api_url, headers=headers)

    if response.status_code == 200:
        return json.loads(response.content.decode('utf-8'))
    else:
        return None


downloads = get_downloads()

if downloads is not None:
    for download in sorted(downloads['downloads'], key = lambda i: i['time_added'], reverse=True):
        name = download['name']
        progress = download['progress']
        speed_down = convert_size(download['speed_down'])
        status = download['status'][9:]
        size = convert_size(download['size'])
        availability = download['availability']
        anon_download = "Anon" if download['anon_download'] else "----"
        hops = download['hops']

        print('{: <80.80}  {:>6.1%}  {:>10}  {:>10}  {:>5.2f}  {:}({:})  {:}'.format(name, progress, speed_down, size, availability, anon_download, hops, status))

else:
    print('[!] Request Failed')

