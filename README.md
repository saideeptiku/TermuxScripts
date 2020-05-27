# TermuxScripts

Scripts to install Termux on Android through ADB. Along with preparing Termux for python3 with sklearn.

## A. On Host Side (Linux/MAC)

1. Download repository using ```git``` and ```cd``` into directory

```bash
git clone https://github.com/saitiku/TermuxScripts
cd TermuxScripts/
```

2. Run script on host. Make sure you ADB, WGET working before hand.

```bash
chmod +x run_host.sh
./run_host.sh
```

The above command will download APK and install it. The script should end with ```Success```. 


## B. On Android Client Side (Installing Python3 for ML)

1. Open the Termux App on the Android device. If it is the first time, it will install some additional components. Wait for install to finish.
2. Once install is finished. Run the following command in the Termux App.

```bash
apt update && apt upgrade -y && apt install -y git wget curl 
```

3. Download the same repository on Android device.


```bash
git clone https://github.com/saitiku/TermuxScripts
cd TermuxScripts/
```

4. Execute the Termux Script as follows:

```bash
chmod +x run_termux.sh
./run_termux.sh
```
This will take some time to finish.