### rubber ducky overview

docs: https://docs.hak5.org/hak5-usb-rubber-ducky/advanced-features/holding-keys
payloads: https://github.com/hak5/usbrubberducky-payloads/tree/master/payloads
loader: https://payloadstudio.hak5.org/community/ 

!!! input keys en keyboard
##### Keys:
HOLD RELEASE
DELAY
ENTER (STRINGLN)
CTRL ALT GUI SPACE t r z...
STRING jfkdf
STRINGLN ls

RANDOM_CHAR

Attackmode:
ATTACKMODE HID / STORAGE / OFF for dev choose: `ATTACKMODE HID STORAGE

```
REM Target: Linux
ATTACKMODE HID STORAGE
DELAY 2000
CTRL ALT t
DELAY 1000
STRING ls
END_STRING
ENTER

```

```
REM win + r -> powershell oder cmd 
GUI r
DELAY 1000
STRING powershell
ENTER
```

hide powershell 
```
DELAY 2000
ALT SPACE
DELAY 100
m
DELAY 100
HOLD DOWNARROW
DELAY 3000
RELEASE DOWNARROW
ENTER
```

LED:
```
LED_OFF

ATTACKMODE HID STORAGE
WHILE TRUE
	IF ($_CAPSLOCK_ON == TRUE) THEN
		LED_R
	ELSE IF ($_CAPSLOCK_ON == FALSE) THEN
		LED_OFF
	END_IF
END_WHILE
```
green idle
green blink processing payload
red solid no inject.bin root

### Attack Modes
min one mode must be active
optional:
VID & PID
MAN, PROD, serial
#### multi-vector attack
keystroke injection
##### modes:
- HID
- storage
- off

hide payload: 
`HIDE_PAYLOAD RESTORE_PAYLOAD

Jitter:
random payload deployment
```
ATTACKMODE HID STORAGE
DELAY 2000

$_JITTER_ENABLED = TRUE
	WHILE TRUE
		RANDOM_CHAR
	END_WHILE
```

button:
sticker inside case above button
squeeze case

```
WAIT_FOR_BUTTON_PRESS

BUTTON_DEF

DISABLE_BUTTON
ATTACKMODE_OFF
LED_OFF
```

Vendor and product id:
spoofing `ATTACKMODE HID VID_HEX PID_HEX
HEX: 16 bits ID - VID_064D PID_...
`ATTACKMODE HID VID_05AC PID_021E MAN_HAK5 PROD_DUCKY SERIAL_1337
