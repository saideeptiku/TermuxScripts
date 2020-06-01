# Benchmark TF Lite on Termux

## A. Setup SSH on Termux

1. Execute ```ssh_setup.sh``` from within Termux to setup ssh on Termux

```bash
bash run_ssh.sh
```

2. The script will ask you to set the password for termux. You will use it to login in to the Termux session.

3. You can find the IP of your android device in the device seetings; or in Termux using:

```bash
apt install net-tools
ifconfig
```

4. You can now connect to your Termux session by executing following on your host machine

```bash
ssh -p 8022 <inset-android-device-ip-here-without-angle-brackets>
```

5. You will be asked for password that you created before. You should now have Termux session running on host linux machine


## B. Capture Current Discharge

1. Connect android device to linux host using USB cable.
2. Install current discharge app from host linux machine onto Android device

```bash
adb install apk/batt_stat.apk
```

##. Execute TF Lite models

1. Download TF lite models

```bash
bash download_tflite.sh
```

2. Execute models

```bash
bash run_tflite.sh
```