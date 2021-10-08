from struct import *
f = open('build/Blink.elf', 'rb')
a = open('build/a.txt', 'r')
k = open('build/Olink.elf', 'wb')


data = f.read()
funcdata = a.read()
patched_data = []

#off = funcdata.find('<array_retblock>:')
off = funcdata.find('<func_deobfus>:')
for test in range(len(data)):
    patched_data.append(data[test])
while off != -1:
    address = []
    #print("offset: " + str(off))
    # twooff = funcdata.find('pop', off+1)
    endoff = funcdata.find('\n\n', off+1)
    twooff = funcdata.find('0008', off+1, endoff+1)
    print("GOOD")
    count = 0
    while twooff != -1:
    #print("second offset: " + str(twooff))
    ┆   threeoff = funcdata.find('\t', twooff+1, endoff+1)
    ┆   addressstring = funcdata[twooff:threeoff]
    ┆   addressstring = addressstring[3:-1]
    ┆   addressfindstring = addressstring + ":"
    ┆   addressoff = funcdata.find(addressfindstring)
    ┆   addressendoff = funcdata.find('pop', addressoff+1)
    ┆   nextinstoff = funcdata.find('\n', addressendoff+1)
    ┆   nextaddressoff = funcdata.find(':', nextinstoff+1)
    ┆   returndata = funcdata[addressoff:nextaddressoff]
    ┆   returndata = returndata.split('\n')
    ┆   print(returndata)
    ┆   startaddress = returndata[0].split('\t')[0].replace(' ','').replace(':','')
    ┆   endaddress = returndata[-1].replace(' ','').replace(':','').replace('\t','')[0:8]
    ┆   print(endaddress)
    ┆   startaddress_int = int(startaddress,16) - 0x80000 + 0x8000
    ┆   endaddress_int = int(endaddress,16) - 0x80000 + 0x8000
    ┆   ┆
    ┆   print(startaddress_int)
    ┆   print(endaddress_int)

    ┆   minus_offset = endaddress_int - startaddress_int

    ┆   for patch_off in range(minus_offset):
    ┆   ┆   print(startaddress, " Before:", patched_data[startaddress_int + patch_off])
    ┆   ┆   patched_data[startaddress_int + patch_off] = patched_data[startaddress_int + patch_off] ^ 0x33;
    ┆   ┆   print(startaddress, " After:", patched_data[startaddress_int + patch_off])
    ┆   tmpoff = funcdata.find('\n', twooff+1, endoff+1)
    ┆   twooff = funcdata.find('000', tmpoff+1, endoff+1)
    ┆   count+=1
    print(count)
    print(len(address))
    off = funcdata.find('<func_deobfus>:', off + 1)
    """
    addrdata = ""
    threeoff = off
    while threeoff != -1:
    ┆   if(threeoff >= twooff):
    ┆   ┆   break
    ┆   tmpoff = threeoff
    ┆   threeoff = funcdata.find('\n', threeoff+1, twooff-1)
    ┆   if (threeoff == -1):
    ┆   ┆   addrdata = funcdata[tmpoff:twooff]
    ┆   ┆   break

    #print(addrdata)
    splitdata = addrdata.split('\t')
    #print(splitdata)
    addr_off = splitdata[0].replace(' ','').replace('\n','').replace(':','')
    enc_off = splitdata[1].replace(' ','').replace('\n','').replace(':','')
    #print(addr_off)
    #print(enc_off)
    enc_off_int = int(enc_off, 16)
    addr_off_int = int(addr_off, 16)
    minus_offset = addr_off_int - enc_off_int
    #print(minus_offset)
    findstr = pack('I', enc_off_int)
    data_offset = data.find(findstr)
    data_offset = data_offset-minus_offset
    for test in range(len(data)):
    ┆   patched_data.append(data[test])
    for patch_off in range(minus_offset):
