; ModuleID = '/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/variants/arduino_due_x/variant.cpp'
source_filename = "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/variants/arduino_due_x/variant.cpp"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-ebi"

%struct._PinDescription = type { %struct.Pio*, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.Pio = type { i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, [3 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32, [1 x i32], i32, i32, i32 }
%class.RingBuffer = type { [128 x i8], i32, i32 }
%class.UARTClass = type { %class.HardwareSerial, %class.RingBuffer*, %class.RingBuffer*, %struct.Uart*, i8, i32 }
%class.HardwareSerial = type { %class.Stream }
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i32 }
%struct.Uart = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [55 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%class.USARTClass = type { %class.UARTClass, %struct.Usart* }
%struct.Usart = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, [1 x i32], i32, i32, i32, i32, [34 x i32], i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Adc = type { i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], [1 x i32], i32, [19 x i32], i32, i32, [5 x i32], i32, i32, [2 x i32], i32, i32, [2 x i32], i32, i32 }
%struct.SysTick_Type = type { i32, i32, i32, i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [4 x i32], [5 x i32], [5 x i32], i32 }
%struct.NVIC_Type = type { [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [24 x i32], [8 x i32], [56 x i32], [240 x i8], [644 x i32], i32 }

@g_APinDescription = dso_local constant [93 x %struct._PinDescription] [%struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 256, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 512, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 33554432, i32 12, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 0 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 268435456, i32 13, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 14 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 67108864, i32 13, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 13 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 33554432, i32 13, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 12 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 16777216, i32 13, i8 2, i32 0, i32 12, i8 -1, i8 -1, i8 7, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 8388608, i32 13, i8 2, i32 0, i32 12, i8 -1, i8 -1, i8 6, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 4194304, i32 13, i8 2, i32 0, i32 12, i8 -1, i8 -1, i8 5, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 2097152, i32 13, i8 2, i32 0, i32 12, i8 -1, i8 -1, i8 4, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 536870912, i32 13, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 15 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 128, i32 14, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 16 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 256, i32 14, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 17 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 134217728, i32 12, i8 2, i32 0, i32 20, i8 -1, i8 -1, i8 -1, i8 1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 16, i32 14, i8 2, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 32, i32 14, i8 2, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 8192, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 4096, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 2048, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 1024, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 4096, i32 12, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 8192, i32 12, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 67108864, i32 12, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 16384, i32 11, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 32768, i32 11, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 1, i32 14, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 2, i32 14, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 4, i32 14, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 8, i32 14, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 64, i32 14, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 512, i32 14, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 128, i32 11, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 1024, i32 14, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 2, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 4, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 8, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 16, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 32, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 64, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 128, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 256, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 512, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 524288, i32 11, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 1048576, i32 11, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 524288, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 262144, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 131072, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 65536, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 32768, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 16384, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 8192, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 4096, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 2097152, i32 12, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 16384, i32 12, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 65536, i32 11, i8 3, i32 0, i32 2, i8 0, i8 7, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 16777216, i32 11, i8 3, i32 0, i32 2, i8 1, i8 6, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 8388608, i32 11, i8 3, i32 0, i32 2, i8 2, i8 5, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 4194304, i32 11, i8 3, i32 0, i32 2, i8 3, i8 4, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 64, i32 11, i8 3, i32 0, i32 2, i8 4, i8 3, i8 -1, i8 5 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 16, i32 11, i8 3, i32 0, i32 2, i8 5, i8 2, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 8, i32 11, i8 3, i32 0, i32 2, i8 6, i8 1, i8 -1, i8 3 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 4, i32 11, i8 3, i32 0, i32 2, i8 7, i8 0, i8 -1, i8 2 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 131072, i32 12, i8 3, i32 0, i32 2, i8 8, i8 10, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 262144, i32 12, i8 3, i32 0, i32 2, i8 9, i8 11, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 524288, i32 12, i8 3, i32 0, i32 2, i8 10, i8 12, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 1048576, i32 12, i8 3, i32 0, i32 2, i8 11, i8 13, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 32768, i32 12, i8 3, i32 0, i32 2, i8 12, i8 16, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 65536, i32 12, i8 3, i32 0, i32 2, i8 13, i8 17, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 2, i32 11, i8 1, i32 0, i32 4, i8 14, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 1, i32 11, i8 1, i32 0, i32 4, i8 15, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 131072, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 262144, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 1073741824, i32 13, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 2097152, i32 11, i8 4, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 33554432, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 67108864, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 134217728, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 268435456, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 8388608, i32 12, i8 2, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 393216, i32 11, i8 1, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 12288, i32 12, i8 1, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 768, i32 11, i8 1, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 3072, i32 11, i8 1, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 12288, i32 11, i8 1, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 48, i32 14, i8 2, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 3072, i32 12, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 2097152, i32 12, i8 2, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 536870912, i32 11, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 32768, i32 12, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 16384, i32 12, i8 1, i32 0, i32 4, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 3, i32 11, i8 1, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 49152, i32 12, i8 1, i32 0, i32 5, i8 -1, i8 -1, i8 -1, i8 -1 }, %struct._PinDescription { %struct.Pio* null, i32 0, i32 0, i8 0, i32 0, i32 0, i8 -1, i8 -1, i8 -1, i8 -1 }], align 4, !dbg !0
@g_pinStatus = dso_local global [79 x i8] zeroinitializer, align 1, !dbg !310
@rx_buffer1 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !316
@tx_buffer1 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !336
@Serial = dso_local global %class.UARTClass zeroinitializer, align 4, !dbg !338
@rx_buffer2 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !342
@rx_buffer3 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !344
@rx_buffer4 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !346
@tx_buffer2 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !348
@tx_buffer3 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !350
@tx_buffer4 = dso_local global %class.RingBuffer zeroinitializer, align 4, !dbg !352
@Serial1 = dso_local global %class.USARTClass zeroinitializer, align 4, !dbg !354
@Serial2 = dso_local global %class.USARTClass zeroinitializer, align 4, !dbg !358
@Serial3 = dso_local global %class.USARTClass zeroinitializer, align 4, !dbg !360
@SystemCoreClock = external dso_local global i32, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_variant.cpp, i8* null }]

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init() #0 !dbg !388 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @rx_buffer1), !dbg !392
  ret void, !dbg !392
}

declare dso_local arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* returned) unnamed_addr #1

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.1() #0 !dbg !393 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @tx_buffer1), !dbg !394
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.2() #0 !dbg !395 {
entry:
  %call = call arm_aapcscc %class.UARTClass* @_ZN9UARTClassC1EP4Uart4IRQnjP10RingBufferS4_(%class.UARTClass* @Serial, %struct.Uart* inttoptr (i32 1074661376 to %struct.Uart*), i8 signext 8, i32 8, %class.RingBuffer* @rx_buffer1, %class.RingBuffer* @tx_buffer1), !dbg !396
  ret void, !dbg !397
}

declare dso_local arm_aapcscc %class.UARTClass* @_ZN9UARTClassC1EP4Uart4IRQnjP10RingBufferS4_(%class.UARTClass* returned, %struct.Uart*, i8 signext, i32, %class.RingBuffer*, %class.RingBuffer*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc void @_Z11serialEventv() #2 !dbg !398 {
entry:
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @UART_Handler() #2 !dbg !400 {
entry:
  call arm_aapcscc void @_ZN9UARTClass10IrqHandlerEv(%class.UARTClass* @Serial), !dbg !401
  ret void, !dbg !402
}

declare dso_local arm_aapcscc void @_ZN9UARTClass10IrqHandlerEv(%class.UARTClass*) #1

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.3() #0 !dbg !403 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @rx_buffer2), !dbg !404
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.4() #0 !dbg !405 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @rx_buffer3), !dbg !406
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.5() #0 !dbg !407 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @rx_buffer4), !dbg !408
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.6() #0 !dbg !409 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @tx_buffer2), !dbg !410
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.7() #0 !dbg !411 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @tx_buffer3), !dbg !412
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.8() #0 !dbg !413 {
entry:
  %call = call arm_aapcscc %class.RingBuffer* @_ZN10RingBufferC1Ev(%class.RingBuffer* @tx_buffer4), !dbg !414
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.9() #0 !dbg !415 {
entry:
  %call = call arm_aapcscc %class.USARTClass* @_ZN10USARTClassC1EP5Usart4IRQnjP10RingBufferS4_(%class.USARTClass* @Serial1, %struct.Usart* inttoptr (i32 1074364416 to %struct.Usart*), i8 signext 17, i32 17, %class.RingBuffer* @rx_buffer2, %class.RingBuffer* @tx_buffer2), !dbg !416
  ret void, !dbg !417
}

declare dso_local arm_aapcscc %class.USARTClass* @_ZN10USARTClassC1EP5Usart4IRQnjP10RingBufferS4_(%class.USARTClass* returned, %struct.Usart*, i8 signext, i32, %class.RingBuffer*, %class.RingBuffer*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc void @_Z12serialEvent1v() #2 !dbg !418 {
entry:
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.10() #0 !dbg !420 {
entry:
  %call = call arm_aapcscc %class.USARTClass* @_ZN10USARTClassC1EP5Usart4IRQnjP10RingBufferS4_(%class.USARTClass* @Serial2, %struct.Usart* inttoptr (i32 1074380800 to %struct.Usart*), i8 signext 18, i32 18, %class.RingBuffer* @rx_buffer3, %class.RingBuffer* @tx_buffer3), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc void @_Z12serialEvent2v() #2 !dbg !423 {
entry:
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @__cxx_global_var_init.11() #0 !dbg !425 {
entry:
  %call = call arm_aapcscc %class.USARTClass* @_ZN10USARTClassC1EP5Usart4IRQnjP10RingBufferS4_(%class.USARTClass* @Serial3, %struct.Usart* inttoptr (i32 1074413568 to %struct.Usart*), i8 signext 20, i32 20, %class.RingBuffer* @rx_buffer4, %class.RingBuffer* @tx_buffer4), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc void @_Z12serialEvent3v() #2 !dbg !428 {
entry:
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @USART0_Handler() #2 !dbg !430 {
entry:
  call arm_aapcscc void @_ZN9UARTClass10IrqHandlerEv(%class.UARTClass* getelementptr inbounds (%class.USARTClass, %class.USARTClass* @Serial1, i32 0, i32 0)), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @USART1_Handler() #2 !dbg !433 {
entry:
  call arm_aapcscc void @_ZN9UARTClass10IrqHandlerEv(%class.UARTClass* getelementptr inbounds (%class.USARTClass, %class.USARTClass* @Serial2, i32 0, i32 0)), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @USART3_Handler() #2 !dbg !436 {
entry:
  call arm_aapcscc void @_ZN9UARTClass10IrqHandlerEv(%class.UARTClass* getelementptr inbounds (%class.USARTClass, %class.USARTClass* @Serial3, i32 0, i32 0)), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcscc void @_Z14serialEventRunv() #2 !dbg !439 {
entry:
  %call = call arm_aapcscc i32 @_ZN9UARTClass9availableEv(%class.UARTClass* @Serial), !dbg !440
  %tobool = icmp ne i32 %call, 0, !dbg !442
  br i1 %tobool, label %if.then, label %if.end, !dbg !443

if.then:                                          ; preds = %entry
  call arm_aapcscc void @_Z11serialEventv(), !dbg !444
  br label %if.end, !dbg !444

if.end:                                           ; preds = %if.then, %entry
  %call1 = call arm_aapcscc i32 @_ZN9UARTClass9availableEv(%class.UARTClass* getelementptr inbounds (%class.USARTClass, %class.USARTClass* @Serial1, i32 0, i32 0)), !dbg !445
  %tobool2 = icmp ne i32 %call1, 0, !dbg !447
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !448

if.then3:                                         ; preds = %if.end
  call arm_aapcscc void @_Z12serialEvent1v(), !dbg !449
  br label %if.end4, !dbg !449

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call arm_aapcscc i32 @_ZN9UARTClass9availableEv(%class.UARTClass* getelementptr inbounds (%class.USARTClass, %class.USARTClass* @Serial2, i32 0, i32 0)), !dbg !450
  %tobool6 = icmp ne i32 %call5, 0, !dbg !452
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !453

if.then7:                                         ; preds = %if.end4
  call arm_aapcscc void @_Z12serialEvent2v(), !dbg !454
  br label %if.end8, !dbg !454

if.end8:                                          ; preds = %if.then7, %if.end4
  %call9 = call arm_aapcscc i32 @_ZN9UARTClass9availableEv(%class.UARTClass* getelementptr inbounds (%class.USARTClass, %class.USARTClass* @Serial3, i32 0, i32 0)), !dbg !455
  %tobool10 = icmp ne i32 %call9, 0, !dbg !457
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !458

if.then11:                                        ; preds = %if.end8
  call arm_aapcscc void @_Z12serialEvent3v(), !dbg !459
  br label %if.end12, !dbg !459

if.end12:                                         ; preds = %if.then11, %if.end8
  ret void, !dbg !460
}

declare dso_local arm_aapcscc i32 @_ZN9UARTClass9availableEv(%class.UARTClass*) unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @init() #2 !dbg !461 {
entry:
  %i = alloca i32, align 4
  call arm_aapcscc void @SystemInit(), !dbg !462
  %0 = load i32, i32* @SystemCoreClock, align 4, !dbg !463
  %div = udiv i32 %0, 1000, !dbg !465
  %call = call arm_aapcscc i32 @_ZL14SysTick_Configj(i32 %div), !dbg !466
  %tobool = icmp ne i32 %call, 0, !dbg !466
  br i1 %tobool, label %if.then, label %if.end, !dbg !467

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !468

while.body:                                       ; preds = %if.then, %while.body
  br label %while.body, !dbg !468, !llvm.loop !470

if.end:                                           ; preds = %entry
  call arm_aapcscc void @__libc_init_array(), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %i, metadata !473, metadata !DIExpression()), !dbg !475
  store i32 0, i32* %i, align 4, !dbg !475
  br label %for.cond, !dbg !476

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !477
  %cmp = icmp ult i32 %1, 79, !dbg !479
  br i1 %cmp, label %for.body, label %for.end, !dbg !480

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !481
  call arm_aapcscc void @digitalWrite(i32 %2, i32 0), !dbg !482
  br label %for.inc, !dbg !482

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !483
  %inc = add i32 %3, 1, !dbg !483
  store i32 %inc, i32* %i, align 4, !dbg !483
  br label %for.cond, !dbg !484, !llvm.loop !485

for.end:                                          ; preds = %for.cond
  store volatile i32 -1, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074662912 to %struct.Pio*), i32 0, i32 35), align 4, !dbg !487
  store volatile i32 -1, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074663424 to %struct.Pio*), i32 0, i32 35), align 4, !dbg !488
  store volatile i32 -1, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074663936 to %struct.Pio*), i32 0, i32 35), align 4, !dbg !489
  store volatile i32 -1, i32* getelementptr inbounds (%struct.Pio, %struct.Pio* inttoptr (i32 1074664448 to %struct.Pio*), i32 0, i32 35), align 4, !dbg !490
  %4 = load %struct.Pio*, %struct.Pio** getelementptr inbounds ([93 x %struct._PinDescription], [93 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 81, i32 0), align 4, !dbg !491
  %call1 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %4, i8 zeroext 1, i32 768, i32 0), !dbg !492
  call arm_aapcscc void @digitalWrite(i32 0, i32 1), !dbg !493
  %5 = load %struct.Pio*, %struct.Pio** getelementptr inbounds ([93 x %struct._PinDescription], [93 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 82, i32 0), align 4, !dbg !494
  %call2 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %5, i8 zeroext 1, i32 3072, i32 0), !dbg !495
  %6 = load %struct.Pio*, %struct.Pio** getelementptr inbounds ([93 x %struct._PinDescription], [93 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 83, i32 0), align 4, !dbg !496
  %call3 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %6, i8 zeroext 1, i32 12288, i32 0), !dbg !497
  %7 = load %struct.Pio*, %struct.Pio** getelementptr inbounds ([93 x %struct._PinDescription], [93 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 84, i32 0), align 4, !dbg !498
  %call4 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %7, i8 zeroext 2, i32 48, i32 0), !dbg !499
  %8 = load %struct.Pio*, %struct.Pio** getelementptr inbounds ([93 x %struct._PinDescription], [93 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 85, i32 0), align 4, !dbg !500
  %call5 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %8, i8 zeroext 1, i32 3072, i32 0), !dbg !501
  %9 = load %struct.Pio*, %struct.Pio** getelementptr inbounds ([93 x %struct._PinDescription], [93 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 90, i32 0), align 4, !dbg !502
  %call6 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %9, i8 zeroext 1, i32 3, i32 0), !dbg !503
  %10 = load %struct.Pio*, %struct.Pio** getelementptr inbounds ([93 x %struct._PinDescription], [93 x %struct._PinDescription]* @g_APinDescription, i32 0, i32 91, i32 0), align 4, !dbg !504
  %call7 = call arm_aapcscc i32 @PIO_Configure(%struct.Pio* %10, i8 zeroext 1, i32 49152, i32 0), !dbg !505
  %call8 = call arm_aapcscc i32 @pmc_enable_periph_clk(i32 37), !dbg !506
  %11 = load i32, i32* @SystemCoreClock, align 4, !dbg !507
  %call9 = call arm_aapcscc i32 @adc_init(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i32 %11, i32 20000000, i8 zeroext 12), !dbg !508
  call arm_aapcscc void @adc_configure_timing(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i8 zeroext 0, i32 3145728, i8 zeroext 1), !dbg !509
  call arm_aapcscc void @adc_configure_trigger(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i8 zeroext 0, i8 zeroext 0), !dbg !510
  call arm_aapcscc void @adc_disable_interrupt(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*), i32 -1), !dbg !511
  call arm_aapcscc void @adc_disable_all_channel(%struct.Adc* inttoptr (i32 1074528256 to %struct.Adc*)), !dbg !512
  call arm_aapcscc void @analogOutputInit(), !dbg !513
  ret void, !dbg !514
}

declare dso_local arm_aapcscc void @SystemInit() #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc i32 @_ZL14SysTick_Configj(i32 %ticks) #2 !dbg !515 {
entry:
  %retval = alloca i32, align 4
  %ticks.addr = alloca i32, align 4
  store i32 %ticks, i32* %ticks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ticks.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i32, i32* %ticks.addr, align 4, !dbg !520
  %cmp = icmp ugt i32 %0, 16777215, !dbg !522
  br i1 %cmp, label %if.then, label %if.end, !dbg !523

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !524
  br label %return, !dbg !524

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ticks.addr, align 4, !dbg !525
  %and = and i32 %1, 16777215, !dbg !526
  %sub = sub i32 %and, 1, !dbg !527
  store volatile i32 %sub, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 1), align 4, !dbg !528
  call arm_aapcscc void @_ZL16NVIC_SetPriority4IRQnj(i8 signext -1, i32 15), !dbg !529
  store volatile i32 0, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 2), align 4, !dbg !530
  store volatile i32 7, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !531
  store i32 0, i32* %retval, align 4, !dbg !532
  br label %return, !dbg !532

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !533
  ret i32 %2, !dbg !533
}

declare dso_local arm_aapcscc void @__libc_init_array() #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare dso_local arm_aapcscc void @digitalWrite(i32, i32) #1

declare dso_local arm_aapcscc i32 @PIO_Configure(%struct.Pio*, i8 zeroext, i32, i32) #1

declare dso_local arm_aapcscc i32 @pmc_enable_periph_clk(i32) #1

declare dso_local arm_aapcscc i32 @adc_init(%struct.Adc*, i32, i32, i8 zeroext) #1

declare dso_local arm_aapcscc void @adc_configure_timing(%struct.Adc*, i8 zeroext, i32, i8 zeroext) #1

declare dso_local arm_aapcscc void @adc_configure_trigger(%struct.Adc*, i8 zeroext, i8 zeroext) #1

declare dso_local arm_aapcscc void @adc_disable_interrupt(%struct.Adc*, i32) #1

declare dso_local arm_aapcscc void @adc_disable_all_channel(%struct.Adc*) #1

declare dso_local arm_aapcscc void @analogOutputInit() #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcscc void @_ZL16NVIC_SetPriority4IRQnj(i8 signext %IRQn, i32 %priority) #2 !dbg !534 {
entry:
  %IRQn.addr = alloca i8, align 1
  %priority.addr = alloca i32, align 4
  store i8 %IRQn, i8* %IRQn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %IRQn.addr, metadata !538, metadata !DIExpression()), !dbg !539
  store i32 %priority, i32* %priority.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %priority.addr, metadata !540, metadata !DIExpression()), !dbg !541
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !542
  %conv = sext i8 %0 to i32, !dbg !542
  %cmp = icmp slt i32 %conv, 0, !dbg !544
  br i1 %cmp, label %if.then, label %if.else, !dbg !545

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %priority.addr, align 4, !dbg !546
  %shl = shl i32 %1, 4, !dbg !548
  %and = and i32 %shl, 255, !dbg !549
  %conv1 = trunc i32 %and to i8, !dbg !550
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !551
  %conv2 = sext i8 %2 to i32, !dbg !552
  %and3 = and i32 %conv2, 15, !dbg !553
  %sub = sub i32 %and3, 4, !dbg !554
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 6), i32 0, i32 %sub, !dbg !555
  store volatile i8 %conv1, i8* %arrayidx, align 1, !dbg !556
  br label %if.end, !dbg !557

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %priority.addr, align 4, !dbg !558
  %shl4 = shl i32 %3, 4, !dbg !560
  %and5 = and i32 %shl4, 255, !dbg !561
  %conv6 = trunc i32 %and5 to i8, !dbg !562
  %4 = load i8, i8* %IRQn.addr, align 1, !dbg !563
  %conv7 = sext i8 %4 to i32, !dbg !564
  %arrayidx8 = getelementptr inbounds [240 x i8], [240 x i8]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 10), i32 0, i32 %conv7, !dbg !565
  store volatile i8 %conv6, i8* %arrayidx8, align 1, !dbg !566
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind
define internal arm_aapcscc void @_GLOBAL__sub_I_variant.cpp() #0 !dbg !568 {
entry:
  call arm_aapcscc void @__cxx_global_var_init(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.1(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.2(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.3(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.4(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.5(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.6(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.7(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.8(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.9(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.10(), !dbg !570
  call arm_aapcscc void @__cxx_global_var_init.11(), !dbg !570
  ret void
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!383, !384, !385, !386}
!llvm.ident = !{!387}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_APinDescription", scope: !2, file: !312, line: 120, type: !362, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !140, globals: !309, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/aaa/.arduino15/packages/arduino/hardware/sam/1.6.12/variants/arduino_due_x/variant.cpp", directory: "/home/aaa/llvm-arduino-due")
!4 = !{!5, !15, !38, !49, !70, !123, !131}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EPioType", file: !6, line: 44, baseType: !7, size: 8, elements: !8, identifier: "_ZTS9_EPioType")
!6 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/libsam/include/pio.h", directory: "/home/aaa")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "PIO_NOT_A_PIN", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "PIO_PERIPH_A", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "PIO_PERIPH_B", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "PIO_INPUT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "PIO_OUTPUT_0", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "PIO_OUTPUT_1", value: 5, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EAnalogChannel", file: !16, line: 86, baseType: !17, size: 8, elements: !18, identifier: "_ZTS15_EAnalogChannel")
!16 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/Arduino.h", directory: "/home/aaa")
!17 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!19 = !DIEnumerator(name: "NO_ADC", value: -1)
!20 = !DIEnumerator(name: "ADC0", value: 0)
!21 = !DIEnumerator(name: "ADC1", value: 1)
!22 = !DIEnumerator(name: "ADC2", value: 2)
!23 = !DIEnumerator(name: "ADC3", value: 3)
!24 = !DIEnumerator(name: "ADC4", value: 4)
!25 = !DIEnumerator(name: "ADC5", value: 5)
!26 = !DIEnumerator(name: "ADC6", value: 6)
!27 = !DIEnumerator(name: "ADC7", value: 7)
!28 = !DIEnumerator(name: "ADC8", value: 8)
!29 = !DIEnumerator(name: "ADC9", value: 9)
!30 = !DIEnumerator(name: "ADC10", value: 10)
!31 = !DIEnumerator(name: "ADC11", value: 11)
!32 = !DIEnumerator(name: "ADC12", value: 12)
!33 = !DIEnumerator(name: "ADC13", value: 13)
!34 = !DIEnumerator(name: "ADC14", value: 14)
!35 = !DIEnumerator(name: "ADC15", value: 15)
!36 = !DIEnumerator(name: "DA0", value: 16)
!37 = !DIEnumerator(name: "DA1", value: 17)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EPWMChannel", file: !16, line: 112, baseType: !17, size: 8, elements: !39, identifier: "_ZTS12_EPWMChannel")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48}
!40 = !DIEnumerator(name: "NOT_ON_PWM", value: -1)
!41 = !DIEnumerator(name: "PWM_CH0", value: 0)
!42 = !DIEnumerator(name: "PWM_CH1", value: 1)
!43 = !DIEnumerator(name: "PWM_CH2", value: 2)
!44 = !DIEnumerator(name: "PWM_CH3", value: 3)
!45 = !DIEnumerator(name: "PWM_CH4", value: 4)
!46 = !DIEnumerator(name: "PWM_CH5", value: 5)
!47 = !DIEnumerator(name: "PWM_CH6", value: 6)
!48 = !DIEnumerator(name: "PWM_CH7", value: 7)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ETCChannel", file: !16, line: 126, baseType: !17, size: 8, elements: !50, identifier: "_ZTS11_ETCChannel")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!51 = !DIEnumerator(name: "NOT_ON_TIMER", value: -1)
!52 = !DIEnumerator(name: "TC0_CHA0", value: 0)
!53 = !DIEnumerator(name: "TC0_CHB0", value: 1)
!54 = !DIEnumerator(name: "TC0_CHA1", value: 2)
!55 = !DIEnumerator(name: "TC0_CHB1", value: 3)
!56 = !DIEnumerator(name: "TC0_CHA2", value: 4)
!57 = !DIEnumerator(name: "TC0_CHB2", value: 5)
!58 = !DIEnumerator(name: "TC1_CHA3", value: 6)
!59 = !DIEnumerator(name: "TC1_CHB3", value: 7)
!60 = !DIEnumerator(name: "TC1_CHA4", value: 8)
!61 = !DIEnumerator(name: "TC1_CHB4", value: 9)
!62 = !DIEnumerator(name: "TC1_CHA5", value: 10)
!63 = !DIEnumerator(name: "TC1_CHB5", value: 11)
!64 = !DIEnumerator(name: "TC2_CHA6", value: 12)
!65 = !DIEnumerator(name: "TC2_CHB6", value: 13)
!66 = !DIEnumerator(name: "TC2_CHA7", value: 14)
!67 = !DIEnumerator(name: "TC2_CHB7", value: 15)
!68 = !DIEnumerator(name: "TC2_CHA8", value: 16)
!69 = !DIEnumerator(name: "TC2_CHB8", value: 17)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !71, line: 64, baseType: !17, size: 8, elements: !72, identifier: "_ZTS4IRQn")
!71 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/sam3x8e.h", directory: "/home/aaa")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!73 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!74 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!75 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!76 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!77 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!78 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!79 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!80 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!81 = !DIEnumerator(name: "SUPC_IRQn", value: 0)
!82 = !DIEnumerator(name: "RSTC_IRQn", value: 1)
!83 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!84 = !DIEnumerator(name: "RTT_IRQn", value: 3)
!85 = !DIEnumerator(name: "WDT_IRQn", value: 4)
!86 = !DIEnumerator(name: "PMC_IRQn", value: 5)
!87 = !DIEnumerator(name: "EFC0_IRQn", value: 6)
!88 = !DIEnumerator(name: "EFC1_IRQn", value: 7)
!89 = !DIEnumerator(name: "UART_IRQn", value: 8)
!90 = !DIEnumerator(name: "SMC_IRQn", value: 9)
!91 = !DIEnumerator(name: "PIOA_IRQn", value: 11)
!92 = !DIEnumerator(name: "PIOB_IRQn", value: 12)
!93 = !DIEnumerator(name: "PIOC_IRQn", value: 13)
!94 = !DIEnumerator(name: "PIOD_IRQn", value: 14)
!95 = !DIEnumerator(name: "USART0_IRQn", value: 17)
!96 = !DIEnumerator(name: "USART1_IRQn", value: 18)
!97 = !DIEnumerator(name: "USART2_IRQn", value: 19)
!98 = !DIEnumerator(name: "USART3_IRQn", value: 20)
!99 = !DIEnumerator(name: "HSMCI_IRQn", value: 21)
!100 = !DIEnumerator(name: "TWI0_IRQn", value: 22)
!101 = !DIEnumerator(name: "TWI1_IRQn", value: 23)
!102 = !DIEnumerator(name: "SPI0_IRQn", value: 24)
!103 = !DIEnumerator(name: "SSC_IRQn", value: 26)
!104 = !DIEnumerator(name: "TC0_IRQn", value: 27)
!105 = !DIEnumerator(name: "TC1_IRQn", value: 28)
!106 = !DIEnumerator(name: "TC2_IRQn", value: 29)
!107 = !DIEnumerator(name: "TC3_IRQn", value: 30)
!108 = !DIEnumerator(name: "TC4_IRQn", value: 31)
!109 = !DIEnumerator(name: "TC5_IRQn", value: 32)
!110 = !DIEnumerator(name: "TC6_IRQn", value: 33)
!111 = !DIEnumerator(name: "TC7_IRQn", value: 34)
!112 = !DIEnumerator(name: "TC8_IRQn", value: 35)
!113 = !DIEnumerator(name: "PWM_IRQn", value: 36)
!114 = !DIEnumerator(name: "ADC_IRQn", value: 37)
!115 = !DIEnumerator(name: "DACC_IRQn", value: 38)
!116 = !DIEnumerator(name: "DMAC_IRQn", value: 39)
!117 = !DIEnumerator(name: "UOTGHS_IRQn", value: 40)
!118 = !DIEnumerator(name: "TRNG_IRQn", value: 41)
!119 = !DIEnumerator(name: "EMAC_IRQn", value: 42)
!120 = !DIEnumerator(name: "CAN0_IRQn", value: 43)
!121 = !DIEnumerator(name: "CAN1_IRQn", value: 44)
!122 = !DIEnumerator(name: "PERIPH_COUNT_IRQn", value: 45)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "adc_settling_time_t", file: !124, line: 132, baseType: !125, size: 32, elements: !126, identifier: "_ZTS19adc_settling_time_t")
!124 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/libsam/include/adc.h", directory: "/home/aaa")
!125 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "ADC_SETTLING_TIME_0", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "ADC_SETTLING_TIME_1", value: 1048576, isUnsigned: true)
!129 = !DIEnumerator(name: "ADC_SETTLING_TIME_2", value: 2097152, isUnsigned: true)
!130 = !DIEnumerator(name: "ADC_SETTLING_TIME_3", value: 3145728, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "adc_trigger_t", file: !124, line: 72, baseType: !7, size: 8, elements: !132, identifier: "_ZTS13adc_trigger_t")
!132 = !{!133, !134, !135, !136, !137, !138, !139}
!133 = !DIEnumerator(name: "ADC_TRIG_SW", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "ADC_TRIG_EXT", value: 1, isUnsigned: true)
!135 = !DIEnumerator(name: "ADC_TRIG_TIO_CH_0", value: 3, isUnsigned: true)
!136 = !DIEnumerator(name: "ADC_TRIG_TIO_CH_1", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "ADC_TRIG_TIO_CH_2", value: 7, isUnsigned: true)
!138 = !DIEnumerator(name: "ADC_TRIG_PWM_EVENT_LINE_0", value: 9, isUnsigned: true)
!139 = !DIEnumerator(name: "ADC_TRIG_PWM_EVENT_LINE_1", value: 11, isUnsigned: true)
!140 = !{!141, !145, !149, !225, !229, !238, !157, !277}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uart", file: !143, line: 62, baseType: !144)
!143 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_uart.h", directory: "/home/aaa")
!144 = !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 41, flags: DIFlagFwdDecl, identifier: "_ZTS4Uart")
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "Usart", file: !147, line: 75, baseType: !148)
!147 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_usart.h", directory: "/home/aaa")
!148 = !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 41, flags: DIFlagFwdDecl, identifier: "_ZTS5Usart")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pio", file: !151, line: 96, baseType: !152)
!151 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_pio.h", directory: "/home/aaa")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 41, size: 1888, flags: DIFlagTypePassByValue, elements: !153, identifier: "_ZTS3Pio")
!153 = !{!154, !161, !162, !164, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !198, !199, !200, !201, !202, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PER", scope: !152, file: !151, line: 42, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "WoReg", file: !71, line: 53, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 66, baseType: !159)
!158 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/stdint.h", directory: "/home/aaa")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !160, line: 56, baseType: !125)
!160 = !DIFile(filename: ".arduino15/packages/arduino/tools/arm-none-eabi-gcc/4.8.3-2014q1/arm-none-eabi/include/machine/_default_types.h", directory: "/home/aaa")
!161 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PDR", scope: !152, file: !151, line: 43, baseType: !155, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PSR", scope: !152, file: !151, line: 44, baseType: !163, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "RoReg", file: !71, line: 51, baseType: !156)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !152, file: !151, line: 45, baseType: !165, size: 32, offset: 96)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 32, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 1)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OER", scope: !152, file: !151, line: 46, baseType: !155, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ODR", scope: !152, file: !151, line: 47, baseType: !155, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OSR", scope: !152, file: !151, line: 48, baseType: !163, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !152, file: !151, line: 49, baseType: !165, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFER", scope: !152, file: !151, line: 50, baseType: !155, size: 32, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFDR", scope: !152, file: !151, line: 51, baseType: !155, size: 32, offset: 288)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFSR", scope: !152, file: !151, line: 52, baseType: !163, size: 32, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved3", scope: !152, file: !151, line: 53, baseType: !165, size: 32, offset: 352)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SODR", scope: !152, file: !151, line: 54, baseType: !155, size: 32, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_CODR", scope: !152, file: !151, line: 55, baseType: !155, size: 32, offset: 416)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ODSR", scope: !152, file: !151, line: 56, baseType: !179, size: 32, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "RwReg", file: !71, line: 54, baseType: !156)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PDSR", scope: !152, file: !151, line: 57, baseType: !163, size: 32, offset: 480)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IER", scope: !152, file: !151, line: 58, baseType: !155, size: 32, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IDR", scope: !152, file: !151, line: 59, baseType: !155, size: 32, offset: 544)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IMR", scope: !152, file: !151, line: 60, baseType: !163, size: 32, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ISR", scope: !152, file: !151, line: 61, baseType: !163, size: 32, offset: 608)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDER", scope: !152, file: !151, line: 62, baseType: !155, size: 32, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDDR", scope: !152, file: !151, line: 63, baseType: !155, size: 32, offset: 672)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_MDSR", scope: !152, file: !151, line: 64, baseType: !163, size: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved4", scope: !152, file: !151, line: 65, baseType: !165, size: 32, offset: 736)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUDR", scope: !152, file: !151, line: 66, baseType: !155, size: 32, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUER", scope: !152, file: !151, line: 67, baseType: !155, size: 32, offset: 800)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_PUSR", scope: !152, file: !151, line: 68, baseType: !163, size: 32, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved5", scope: !152, file: !151, line: 69, baseType: !165, size: 32, offset: 864)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ABSR", scope: !152, file: !151, line: 70, baseType: !179, size: 32, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved6", scope: !152, file: !151, line: 71, baseType: !195, size: 96, offset: 928)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 96, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 3)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SCIFSR", scope: !152, file: !151, line: 72, baseType: !155, size: 32, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_DIFSR", scope: !152, file: !151, line: 73, baseType: !155, size: 32, offset: 1056)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_IFDGSR", scope: !152, file: !151, line: 74, baseType: !163, size: 32, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_SCDR", scope: !152, file: !151, line: 75, baseType: !179, size: 32, offset: 1120)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved7", scope: !152, file: !151, line: 76, baseType: !203, size: 128, offset: 1152)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 4)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWER", scope: !152, file: !151, line: 77, baseType: !155, size: 32, offset: 1280)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWDR", scope: !152, file: !151, line: 78, baseType: !155, size: 32, offset: 1312)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_OWSR", scope: !152, file: !151, line: 79, baseType: !163, size: 32, offset: 1344)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved8", scope: !152, file: !151, line: 80, baseType: !165, size: 32, offset: 1376)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMER", scope: !152, file: !151, line: 81, baseType: !155, size: 32, offset: 1408)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMDR", scope: !152, file: !151, line: 82, baseType: !155, size: 32, offset: 1440)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_AIMMR", scope: !152, file: !151, line: 83, baseType: !163, size: 32, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved9", scope: !152, file: !151, line: 84, baseType: !165, size: 32, offset: 1504)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ESR", scope: !152, file: !151, line: 85, baseType: !155, size: 32, offset: 1536)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_LSR", scope: !152, file: !151, line: 86, baseType: !155, size: 32, offset: 1568)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_ELSR", scope: !152, file: !151, line: 87, baseType: !163, size: 32, offset: 1600)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved10", scope: !152, file: !151, line: 88, baseType: !165, size: 32, offset: 1632)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_FELLSR", scope: !152, file: !151, line: 89, baseType: !155, size: 32, offset: 1664)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_REHLSR", scope: !152, file: !151, line: 90, baseType: !155, size: 32, offset: 1696)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_FRLHSR", scope: !152, file: !151, line: 91, baseType: !163, size: 32, offset: 1728)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved11", scope: !152, file: !151, line: 92, baseType: !165, size: 32, offset: 1760)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_LOCKSR", scope: !152, file: !151, line: 93, baseType: !163, size: 32, offset: 1792)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_WPMR", scope: !152, file: !151, line: 94, baseType: !179, size: 32, offset: 1824)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "PIO_WPSR", scope: !152, file: !151, line: 95, baseType: !163, size: 32, offset: 1856)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "Adc", file: !227, line: 76, baseType: !228)
!227 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/Device/ATMEL/sam3xa/include/component/component_adc.h", directory: "/home/aaa")
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 41, flags: DIFlagFwdDecl, identifier: "_ZTS3Adc")
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !231, line: 574, baseType: !232)
!231 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/system/CMSIS/CMSIS/Include/core_cm3.h", directory: "/home/aaa")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !231, line: 568, size: 128, flags: DIFlagTypePassByValue, elements: !233, identifier: "_ZTS12SysTick_Type")
!233 = !{!234, !235, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !232, file: !231, line: 570, baseType: !156, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !232, file: !231, line: 571, baseType: !156, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !232, file: !231, line: 572, baseType: !156, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !232, file: !231, line: 573, baseType: !156, size: 32, offset: 96)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !231, line: 329, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !231, line: 306, size: 1120, flags: DIFlagTypePassByValue, elements: !241, identifier: "_ZTS8SCB_Type")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !255, !256, !257, !258, !259, !260, !261, !262, !266, !267, !268, !270, !274, !276}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !240, file: !231, line: 308, baseType: !156, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !240, file: !231, line: 309, baseType: !156, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !240, file: !231, line: 310, baseType: !156, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !240, file: !231, line: 311, baseType: !156, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !240, file: !231, line: 312, baseType: !156, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !240, file: !231, line: 313, baseType: !156, size: 32, offset: 160)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !240, file: !231, line: 314, baseType: !249, size: 96, offset: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 96, elements: !253)
!250 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !158, line: 42, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !160, line: 28, baseType: !7)
!253 = !{!254}
!254 = !DISubrange(count: 12)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !240, file: !231, line: 315, baseType: !156, size: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !240, file: !231, line: 316, baseType: !156, size: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !240, file: !231, line: 317, baseType: !156, size: 32, offset: 352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !240, file: !231, line: 318, baseType: !156, size: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !240, file: !231, line: 319, baseType: !156, size: 32, offset: 416)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !240, file: !231, line: 320, baseType: !156, size: 32, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !240, file: !231, line: 321, baseType: !156, size: 32, offset: 480)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !240, file: !231, line: 322, baseType: !263, size: 64, offset: 512)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 2)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !240, file: !231, line: 323, baseType: !156, size: 32, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !240, file: !231, line: 324, baseType: !156, size: 32, offset: 608)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !240, file: !231, line: 325, baseType: !269, size: 128, offset: 640)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !204)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !240, file: !231, line: 326, baseType: !271, size: 160, offset: 768)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 5)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !240, file: !231, line: 327, baseType: !275, size: 160, offset: 928)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 160, elements: !272)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !240, file: !231, line: 328, baseType: !156, size: 32, offset: 1088)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !231, line: 289, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !231, line: 274, size: 28704, flags: DIFlagTypePassByValue, elements: !280, identifier: "_ZTS9NVIC_Type")
!280 = !{!281, !285, !289, !290, !291, !292, !293, !294, !295, !296, !300, !304, !308}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !279, file: !231, line: 276, baseType: !282, size: 256)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 8)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !279, file: !231, line: 277, baseType: !286, size: 768, offset: 256)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 768, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 24)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !279, file: !231, line: 278, baseType: !282, size: 256, offset: 1024)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !279, file: !231, line: 279, baseType: !286, size: 768, offset: 1280)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !279, file: !231, line: 280, baseType: !282, size: 256, offset: 2048)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !279, file: !231, line: 281, baseType: !286, size: 768, offset: 2304)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !279, file: !231, line: 282, baseType: !282, size: 256, offset: 3072)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !279, file: !231, line: 283, baseType: !286, size: 768, offset: 3328)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !279, file: !231, line: 284, baseType: !282, size: 256, offset: 4096)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !279, file: !231, line: 285, baseType: !297, size: 1792, offset: 4352)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1792, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 56)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !279, file: !231, line: 286, baseType: !301, size: 1920, offset: 6144)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1920, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 240)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !279, file: !231, line: 287, baseType: !305, size: 20608, offset: 8064)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 20608, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 644)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !279, file: !231, line: 288, baseType: !156, size: 32, offset: 28672)
!309 = !{!0, !310, !316, !336, !338, !342, !344, !346, !348, !350, !352, !354, !358, !360}
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "g_pinStatus", scope: !2, file: !312, line: 295, type: !313, isLocal: false, isDefinition: true)
!312 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/variants/arduino_due_x/variant.cpp", directory: "/home/aaa")
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 632, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 79)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "rx_buffer1", scope: !2, file: !312, line: 304, type: !318, isLocal: false, isDefinition: true)
!318 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RingBuffer", file: !319, line: 30, size: 1088, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !320, identifier: "_ZTS10RingBuffer")
!319 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/RingBuffer.h", directory: "/home/aaa")
!320 = !{!321, !325, !328, !329, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_aucBuffer", scope: !318, file: !319, line: 33, baseType: !322, size: 1024, flags: DIFlagPublic)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1024, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_iHead", scope: !318, file: !319, line: 34, baseType: !326, size: 32, offset: 1024, flags: DIFlagPublic)
!326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !327)
!327 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_iTail", scope: !318, file: !319, line: 35, baseType: !326, size: 32, offset: 1056, flags: DIFlagPublic)
!329 = !DISubprogram(name: "RingBuffer", scope: !318, file: !319, line: 38, type: !330, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!333 = !DISubprogram(name: "store_char", linkageName: "_ZN10RingBuffer10store_charEh", scope: !318, file: !319, line: 39, type: !334, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !332, !251}
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "tx_buffer1", scope: !2, file: !312, line: 305, type: !318, isLocal: false, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "Serial", scope: !2, file: !312, line: 307, type: !340, isLocal: false, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_class_type, name: "UARTClass", file: !341, line: 35, flags: DIFlagFwdDecl)
!341 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/UARTClass.h", directory: "/home/aaa")
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "rx_buffer2", scope: !2, file: !312, line: 321, type: !318, isLocal: false, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "rx_buffer3", scope: !2, file: !312, line: 322, type: !318, isLocal: false, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "rx_buffer4", scope: !2, file: !312, line: 323, type: !318, isLocal: false, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "tx_buffer2", scope: !2, file: !312, line: 324, type: !318, isLocal: false, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "tx_buffer3", scope: !2, file: !312, line: 325, type: !318, isLocal: false, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "tx_buffer4", scope: !2, file: !312, line: 326, type: !318, isLocal: false, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "Serial1", scope: !2, file: !312, line: 328, type: !356, isLocal: false, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_class_type, name: "USARTClass", file: !357, line: 66, flags: DIFlagFwdDecl, identifier: "_ZTS10USARTClass")
!357 = !DIFile(filename: ".arduino15/packages/arduino/hardware/sam/1.6.12/cores/arduino/USARTClass.h", directory: "/home/aaa")
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "Serial2", scope: !2, file: !312, line: 331, type: !356, isLocal: false, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "Serial3", scope: !2, file: !312, line: 334, type: !356, isLocal: false, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 20832, elements: !381)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "PinDescription", file: !16, line: 181, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PinDescription", file: !16, line: 169, size: 224, flags: DIFlagTypePassByValue, elements: !366, identifier: "_ZTS15_PinDescription")
!366 = !{!367, !368, !369, !370, !372, !373, !374, !376, !377, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pPort", scope: !365, file: !16, line: 171, baseType: !149, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ulPin", scope: !365, file: !16, line: 172, baseType: !157, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ulPeripheralId", scope: !365, file: !16, line: 173, baseType: !157, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ulPinType", scope: !365, file: !16, line: 174, baseType: !371, size: 8, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "EPioType", file: !6, line: 56, baseType: !5)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ulPinConfiguration", scope: !365, file: !16, line: 175, baseType: !157, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ulPinAttribute", scope: !365, file: !16, line: 176, baseType: !157, size: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ulAnalogChannel", scope: !365, file: !16, line: 177, baseType: !375, size: 8, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "EAnalogChannel", file: !16, line: 107, baseType: !15)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ulADCChannelNumber", scope: !365, file: !16, line: 178, baseType: !375, size: 8, offset: 200)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ulPWMChannel", scope: !365, file: !16, line: 179, baseType: !378, size: 8, offset: 208)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "EPWMChannel", file: !16, line: 123, baseType: !38)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ulTCChannel", scope: !365, file: !16, line: 180, baseType: !380, size: 8, offset: 216)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ETCChannel", file: !16, line: 147, baseType: !49)
!381 = !{!382}
!382 = !DISubrange(count: 93)
!383 = !{i32 7, !"Dwarf Version", i32 4}
!384 = !{i32 2, !"Debug Info Version", i32 3}
!385 = !{i32 1, !"wchar_size", i32 4}
!386 = !{i32 1, !"min_enum_size", i32 1}
!387 = !{!"clang version 10.0.1 (http://khuhub.khu.ac.kr/2020-1-capstone-design1/JJS_Project1.git fa09a32a02e425f42aa5254b8429818823ef46b2)"}
!388 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !312, file: !312, line: 304, type: !389, scopeLine: 304, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{null}
!391 = !{}
!392 = !DILocation(line: 304, column: 12, scope: !388)
!393 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !312, file: !312, line: 305, type: !389, scopeLine: 305, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!394 = !DILocation(line: 305, column: 12, scope: !393)
!395 = distinct !DISubprogram(name: "__cxx_global_var_init.2", scope: !312, file: !312, line: 307, type: !389, scopeLine: 307, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!396 = !DILocation(line: 307, column: 11, scope: !395)
!397 = !DILocation(line: 307, column: 58, scope: !395)
!398 = distinct !DISubprogram(name: "serialEvent", linkageName: "_Z11serialEventv", scope: !312, file: !312, line: 309, type: !389, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!399 = !DILocation(line: 309, column: 22, scope: !398)
!400 = distinct !DISubprogram(name: "UART_Handler", scope: !312, file: !312, line: 312, type: !389, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!401 = !DILocation(line: 314, column: 10, scope: !400)
!402 = !DILocation(line: 315, column: 1, scope: !400)
!403 = distinct !DISubprogram(name: "__cxx_global_var_init.3", scope: !312, file: !312, line: 321, type: !389, scopeLine: 321, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!404 = !DILocation(line: 321, column: 12, scope: !403)
!405 = distinct !DISubprogram(name: "__cxx_global_var_init.4", scope: !312, file: !312, line: 322, type: !389, scopeLine: 322, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!406 = !DILocation(line: 322, column: 12, scope: !405)
!407 = distinct !DISubprogram(name: "__cxx_global_var_init.5", scope: !312, file: !312, line: 323, type: !389, scopeLine: 323, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!408 = !DILocation(line: 323, column: 12, scope: !407)
!409 = distinct !DISubprogram(name: "__cxx_global_var_init.6", scope: !312, file: !312, line: 324, type: !389, scopeLine: 324, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!410 = !DILocation(line: 324, column: 12, scope: !409)
!411 = distinct !DISubprogram(name: "__cxx_global_var_init.7", scope: !312, file: !312, line: 325, type: !389, scopeLine: 325, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!412 = !DILocation(line: 325, column: 12, scope: !411)
!413 = distinct !DISubprogram(name: "__cxx_global_var_init.8", scope: !312, file: !312, line: 326, type: !389, scopeLine: 326, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!414 = !DILocation(line: 326, column: 12, scope: !413)
!415 = distinct !DISubprogram(name: "__cxx_global_var_init.9", scope: !312, file: !312, line: 328, type: !389, scopeLine: 328, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!416 = !DILocation(line: 328, column: 12, scope: !415)
!417 = !DILocation(line: 328, column: 66, scope: !415)
!418 = distinct !DISubprogram(name: "serialEvent1", linkageName: "_Z12serialEvent1v", scope: !312, file: !312, line: 330, type: !389, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!419 = !DILocation(line: 330, column: 23, scope: !418)
!420 = distinct !DISubprogram(name: "__cxx_global_var_init.10", scope: !312, file: !312, line: 331, type: !389, scopeLine: 331, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!421 = !DILocation(line: 331, column: 12, scope: !420)
!422 = !DILocation(line: 331, column: 66, scope: !420)
!423 = distinct !DISubprogram(name: "serialEvent2", linkageName: "_Z12serialEvent2v", scope: !312, file: !312, line: 333, type: !389, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!424 = !DILocation(line: 333, column: 23, scope: !423)
!425 = distinct !DISubprogram(name: "__cxx_global_var_init.11", scope: !312, file: !312, line: 334, type: !389, scopeLine: 334, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!426 = !DILocation(line: 334, column: 12, scope: !425)
!427 = !DILocation(line: 334, column: 66, scope: !425)
!428 = distinct !DISubprogram(name: "serialEvent3", linkageName: "_Z12serialEvent3v", scope: !312, file: !312, line: 336, type: !389, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!429 = !DILocation(line: 336, column: 23, scope: !428)
!430 = distinct !DISubprogram(name: "USART0_Handler", scope: !312, file: !312, line: 339, type: !389, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!431 = !DILocation(line: 341, column: 11, scope: !430)
!432 = !DILocation(line: 342, column: 1, scope: !430)
!433 = distinct !DISubprogram(name: "USART1_Handler", scope: !312, file: !312, line: 344, type: !389, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!434 = !DILocation(line: 346, column: 11, scope: !433)
!435 = !DILocation(line: 347, column: 1, scope: !433)
!436 = distinct !DISubprogram(name: "USART3_Handler", scope: !312, file: !312, line: 349, type: !389, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!437 = !DILocation(line: 351, column: 11, scope: !436)
!438 = !DILocation(line: 352, column: 1, scope: !436)
!439 = distinct !DISubprogram(name: "serialEventRun", linkageName: "_Z14serialEventRunv", scope: !312, file: !312, line: 356, type: !389, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!440 = !DILocation(line: 358, column: 14, scope: !441)
!441 = distinct !DILexicalBlock(scope: !439, file: !312, line: 358, column: 7)
!442 = !DILocation(line: 358, column: 7, scope: !441)
!443 = !DILocation(line: 358, column: 7, scope: !439)
!444 = !DILocation(line: 358, column: 27, scope: !441)
!445 = !DILocation(line: 359, column: 15, scope: !446)
!446 = distinct !DILexicalBlock(scope: !439, file: !312, line: 359, column: 7)
!447 = !DILocation(line: 359, column: 7, scope: !446)
!448 = !DILocation(line: 359, column: 7, scope: !439)
!449 = !DILocation(line: 359, column: 28, scope: !446)
!450 = !DILocation(line: 360, column: 15, scope: !451)
!451 = distinct !DILexicalBlock(scope: !439, file: !312, line: 360, column: 7)
!452 = !DILocation(line: 360, column: 7, scope: !451)
!453 = !DILocation(line: 360, column: 7, scope: !439)
!454 = !DILocation(line: 360, column: 28, scope: !451)
!455 = !DILocation(line: 361, column: 15, scope: !456)
!456 = distinct !DILexicalBlock(scope: !439, file: !312, line: 361, column: 7)
!457 = !DILocation(line: 361, column: 7, scope: !456)
!458 = !DILocation(line: 361, column: 7, scope: !439)
!459 = !DILocation(line: 361, column: 28, scope: !456)
!460 = !DILocation(line: 362, column: 1, scope: !439)
!461 = distinct !DISubprogram(name: "init", scope: !312, file: !312, line: 372, type: !389, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !391)
!462 = !DILocation(line: 374, column: 3, scope: !461)
!463 = !DILocation(line: 377, column: 22, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !312, line: 377, column: 7)
!465 = !DILocation(line: 377, column: 38, scope: !464)
!466 = !DILocation(line: 377, column: 7, scope: !464)
!467 = !DILocation(line: 377, column: 7, scope: !461)
!468 = !DILocation(line: 380, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !312, line: 378, column: 3)
!470 = distinct !{!470, !468, !471}
!471 = !DILocation(line: 380, column: 17, scope: !469)
!472 = !DILocation(line: 384, column: 3, scope: !461)
!473 = !DILocalVariable(name: "i", scope: !474, file: !312, line: 387, type: !125)
!474 = distinct !DILexicalBlock(scope: !461, file: !312, line: 387, column: 3)
!475 = !DILocation(line: 387, column: 17, scope: !474)
!476 = !DILocation(line: 387, column: 8, scope: !474)
!477 = !DILocation(line: 387, column: 24, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !312, line: 387, column: 3)
!479 = !DILocation(line: 387, column: 26, scope: !478)
!480 = !DILocation(line: 387, column: 3, scope: !474)
!481 = !DILocation(line: 388, column: 17, scope: !478)
!482 = !DILocation(line: 388, column: 4, scope: !478)
!483 = !DILocation(line: 387, column: 41, scope: !478)
!484 = !DILocation(line: 387, column: 3, scope: !478)
!485 = distinct !{!485, !480, !486}
!486 = !DILocation(line: 388, column: 23, scope: !474)
!487 = !DILocation(line: 391, column: 18, scope: !461)
!488 = !DILocation(line: 392, column: 18, scope: !461)
!489 = !DILocation(line: 393, column: 18, scope: !461)
!490 = !DILocation(line: 394, column: 18, scope: !461)
!491 = !DILocation(line: 398, column: 34, scope: !461)
!492 = !DILocation(line: 397, column: 3, scope: !461)
!493 = !DILocation(line: 402, column: 3, scope: !461)
!494 = !DILocation(line: 404, column: 36, scope: !461)
!495 = !DILocation(line: 403, column: 3, scope: !461)
!496 = !DILocation(line: 409, column: 36, scope: !461)
!497 = !DILocation(line: 408, column: 3, scope: !461)
!498 = !DILocation(line: 414, column: 36, scope: !461)
!499 = !DILocation(line: 413, column: 3, scope: !461)
!500 = !DILocation(line: 421, column: 33, scope: !461)
!501 = !DILocation(line: 420, column: 3, scope: !461)
!502 = !DILocation(line: 428, column: 34, scope: !461)
!503 = !DILocation(line: 427, column: 3, scope: !461)
!504 = !DILocation(line: 433, column: 34, scope: !461)
!505 = !DILocation(line: 432, column: 3, scope: !461)
!506 = !DILocation(line: 439, column: 3, scope: !461)
!507 = !DILocation(line: 440, column: 17, scope: !461)
!508 = !DILocation(line: 440, column: 3, scope: !461)
!509 = !DILocation(line: 441, column: 3, scope: !461)
!510 = !DILocation(line: 442, column: 3, scope: !461)
!511 = !DILocation(line: 443, column: 3, scope: !461)
!512 = !DILocation(line: 444, column: 3, scope: !461)
!513 = !DILocation(line: 447, column: 3, scope: !461)
!514 = !DILocation(line: 448, column: 1, scope: !461)
!515 = distinct !DISubprogram(name: "SysTick_Config", linkageName: "_ZL14SysTick_Configj", scope: !231, file: !231, line: 1147, type: !516, scopeLine: 1148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!516 = !DISubroutineType(types: !517)
!517 = !{!157, !157}
!518 = !DILocalVariable(name: "ticks", arg: 1, scope: !515, file: !231, line: 1147, type: !157)
!519 = !DILocation(line: 1147, column: 50, scope: !515)
!520 = !DILocation(line: 1149, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !515, file: !231, line: 1149, column: 7)
!522 = !DILocation(line: 1149, column: 13, scope: !521)
!523 = !DILocation(line: 1149, column: 7, scope: !515)
!524 = !DILocation(line: 1149, column: 41, scope: !521)
!525 = !DILocation(line: 1151, column: 21, scope: !515)
!526 = !DILocation(line: 1151, column: 27, scope: !515)
!527 = !DILocation(line: 1151, column: 54, scope: !515)
!528 = !DILocation(line: 1151, column: 18, scope: !515)
!529 = !DILocation(line: 1152, column: 3, scope: !515)
!530 = !DILocation(line: 1153, column: 18, scope: !515)
!531 = !DILocation(line: 1154, column: 18, scope: !515)
!532 = !DILocation(line: 1157, column: 3, scope: !515)
!533 = !DILocation(line: 1158, column: 1, scope: !515)
!534 = distinct !DISubprogram(name: "NVIC_SetPriority", linkageName: "_ZL16NVIC_SetPriority4IRQnj", scope: !231, file: !231, line: 1022, type: !535, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !537, !157}
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !71, line: 120, baseType: !70)
!538 = !DILocalVariable(name: "IRQn", arg: 1, scope: !534, file: !231, line: 1022, type: !537)
!539 = !DILocation(line: 1022, column: 49, scope: !534)
!540 = !DILocalVariable(name: "priority", arg: 2, scope: !534, file: !231, line: 1022, type: !157)
!541 = !DILocation(line: 1022, column: 64, scope: !534)
!542 = !DILocation(line: 1024, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !534, file: !231, line: 1024, column: 6)
!544 = !DILocation(line: 1024, column: 11, scope: !543)
!545 = !DILocation(line: 1024, column: 6, scope: !534)
!546 = !DILocation(line: 1025, column: 46, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !231, line: 1024, column: 16)
!548 = !DILocation(line: 1025, column: 55, scope: !547)
!549 = !DILocation(line: 1025, column: 82, scope: !547)
!550 = !DILocation(line: 1025, column: 44, scope: !547)
!551 = !DILocation(line: 1025, column: 26, scope: !547)
!552 = !DILocation(line: 1025, column: 25, scope: !547)
!553 = !DILocation(line: 1025, column: 32, scope: !547)
!554 = !DILocation(line: 1025, column: 38, scope: !547)
!555 = !DILocation(line: 1025, column: 5, scope: !547)
!556 = !DILocation(line: 1025, column: 42, scope: !547)
!557 = !DILocation(line: 1025, column: 91, scope: !547)
!558 = !DILocation(line: 1027, column: 36, scope: !559)
!559 = distinct !DILexicalBlock(scope: !543, file: !231, line: 1026, column: 8)
!560 = !DILocation(line: 1027, column: 45, scope: !559)
!561 = !DILocation(line: 1027, column: 72, scope: !559)
!562 = !DILocation(line: 1027, column: 34, scope: !559)
!563 = !DILocation(line: 1027, column: 25, scope: !559)
!564 = !DILocation(line: 1027, column: 24, scope: !559)
!565 = !DILocation(line: 1027, column: 5, scope: !559)
!566 = !DILocation(line: 1027, column: 32, scope: !559)
!567 = !DILocation(line: 1028, column: 1, scope: !534)
!568 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_variant.cpp", scope: !3, file: !3, type: !569, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !391)
!569 = !DISubroutineType(types: !391)
!570 = !DILocation(line: 0, scope: !568)
