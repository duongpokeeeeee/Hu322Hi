import base64
with open('result.txt','r')as encoded_file:encoded_content=encoded_file.read()
decoded_content=base64.b64decode(encoded_content).decode('utf-8')
exec(decoded_content)
