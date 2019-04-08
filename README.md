# Assembler
Low Level Assembler Coding

chmod +x input/create.sh

run ./input/create.sh input to create the object-file input.o and the linker to execute the file

|Operation Name|Operation Name (signed)|Description|
| --- | --- | --- |
|add a, b| - |a=a+b|
|sub a, b| - |a=a-b|
|mul reg | imul reg | rax=rax*reg|
|div reg | idiv reg | rax=rax/reg|
|neg reg | - | reg=-reg|
|inc reg | - | reg=reg+1|
|dec reg | - | reg=reg-1|
|adc a, b| - | a=a+b+CF|
|sbb a, b| - | a=a-b-CF|