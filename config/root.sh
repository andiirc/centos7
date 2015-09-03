
if [ -f ${SETUP_RES_CONTAINER}/.root_pw ]; then
    echo "ROOT PASSWORD EXIST!"
    exit 0
fi

## set user passord or auto-gen
if [ ${PASSROOT} ]; then
    # specified passowrd
    echo "Specified root password: "${PASSROOT}
else
    # auto gen
    PASSROOT=$(openssl rand 8 -base64)
    echo "Auto generate root password: "$PASSROOT
fi
echo "root:"$PASSROOT| chpasswd
echo $PASSROOT >> ${SETUP_RES_CONTAINER}/.root_pw

echo "=================================="
echo "root password = $PASSROOT"
echo "=================================="

