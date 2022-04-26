from cryptography.fernet import Fernet


file = open('key.key','rb')
key = file.read()
file.close	

with open('/home/client/Documents/GSLW_TP3_stationcryptage/TP3_stationcryptage/TP3_stationcryptage/toDecrypt/todecrypt.txt','rb') as f:
	data = f.read()
f.close()

fernet = Fernet(key)
decrypted = fernet.decrypt(data)

#write encypted file

with open('/home/client/Documents/GSLW_TP3_stationcryptage/TP3_stationcryptage/TP3_stationcryptage/decrypted/decryptedMsg.txt','wb') as f:
	f.write(decrypted)

f.close()
