function getErrMsg()
{
if [ $? -ne 0 ]; then

    echo -e "\e[33m$1\e[0m"
    exit $?
fi

echo -e "\e[32$1\e[0m"
}