
if [ -f ${SETUP_RES_CONTAINER}/.root_pw ]; then
    echo "ROOT PASSWORD EXIST!"
    exit 0
fi

## set user passord or auto-gen
if [ ${ROOT_PW} ]; then
    # specified passowrd
    echo "Specified root password: "${ROOT_PW}
else
    # auto gen
    ROOT_PW=$(openssl rand 8 -base64)
    echo "Auto generate root password: "$ROOT_PW
fi
echo "root:"$ROOT_PW | chpasswd
echo $ROOT_PW >> ${SETUP_RES_CONTAINER}/.root_pw

echo "=================================="
echo "root password = $ROOT_PW"
echo "=================================="

