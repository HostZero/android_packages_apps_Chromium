.class Lorg/chromium/content/browser/input/GamepadMappings;
.super Ljava/lang/Object;
.source "GamepadMappings.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final AMAZON_FIRE_DEVICE_NAME:Ljava/lang/String; = "Amazon Fire Game Controller"

.field static final MICROSOFT_XBOX_PAD_DEVICE_NAME:Ljava/lang/String; = "Microsoft X-Box 360 pad"

.field static final NVIDIA_SHIELD_DEVICE_NAME_PREFIX:Ljava/lang/String; = "NVIDIA Corporation NVIDIA Controller"

.field static final PS3_SIXAXIS_DEVICE_NAME:Ljava/lang/String; = "Sony PLAYSTATION(R)3 Controller"

.field static final SAMSUNG_EI_GP20_DEVICE_NAME:Ljava/lang/String; = "Samsung Game Pad EI-GP20"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mapAmazonFireGamepad([F[F[F[F)V
    .locals 0

    .prologue
    .line 166
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonXYABButtons([F[F)V

    .line 167
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapTriggerButtonsToTopShoulder([F[F)V

    .line 168
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonThumbstickButtons([F[F)V

    .line 169
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonStartSelectMetaButtons([F[F)V

    .line 170
    invoke-static {p0, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapPedalAxesToBottomShoulder([F[F)V

    .line 171
    invoke-static {p0, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapHatAxisToDpadButtons([F[F)V

    .line 173
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapXYAxes([F[F)V

    .line 174
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapZAndRZAxesToRightStick([F[F)V

    .line 175
    return-void
.end method

.method private static mapCommonDpadButtons([F[F)V
    .locals 5

    .prologue
    .line 95
    const/16 v0, 0x14

    aget v0, p1, v0

    .line 96
    const/16 v1, 0x13

    aget v1, p1, v1

    .line 97
    const/16 v2, 0x15

    aget v2, p1, v2

    .line 98
    const/16 v3, 0x16

    aget v3, p1, v3

    .line 99
    const/16 v4, 0xd

    aput v0, p0, v4

    .line 100
    const/16 v0, 0xc

    aput v1, p0, v0

    .line 101
    const/16 v0, 0xe

    aput v2, p0, v0

    .line 102
    const/16 v0, 0xf

    aput v3, p0, v0

    .line 103
    return-void
.end method

.method private static mapCommonStartSelectMetaButtons([F[F)V
    .locals 4

    .prologue
    .line 65
    const/16 v0, 0x6c

    aget v0, p1, v0

    .line 66
    const/16 v1, 0x6d

    aget v1, p1, v1

    .line 67
    const/16 v2, 0x6e

    aget v2, p1, v2

    .line 68
    const/16 v3, 0x9

    aput v0, p0, v3

    .line 69
    const/16 v0, 0x8

    aput v1, p0, v0

    .line 70
    const/16 v0, 0x10

    aput v2, p0, v0

    .line 71
    return-void
.end method

.method private static mapCommonThumbstickButtons([F[F)V
    .locals 3

    .prologue
    .line 74
    const/16 v0, 0x6a

    aget v0, p1, v0

    .line 75
    const/16 v1, 0x6b

    aget v1, p1, v1

    .line 76
    const/16 v2, 0xa

    aput v0, p0, v2

    .line 77
    const/16 v0, 0xb

    aput v1, p0, v0

    .line 78
    return-void
.end method

.method private static mapCommonTriggerButtons([F[F)V
    .locals 3

    .prologue
    .line 81
    const/16 v0, 0x66

    aget v0, p1, v0

    .line 82
    const/16 v1, 0x67

    aget v1, p1, v1

    .line 83
    const/4 v2, 0x6

    aput v0, p0, v2

    .line 84
    const/4 v0, 0x7

    aput v1, p0, v0

    .line 85
    return-void
.end method

.method private static mapCommonXYABButtons([F[F)V
    .locals 5

    .prologue
    .line 53
    const/16 v0, 0x60

    aget v0, p1, v0

    .line 54
    const/16 v1, 0x61

    aget v1, p1, v1

    .line 55
    const/16 v2, 0x63

    aget v2, p1, v2

    .line 56
    const/16 v3, 0x64

    aget v3, p1, v3

    .line 57
    const/4 v4, 0x0

    aput v0, p0, v4

    .line 58
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 59
    const/4 v0, 0x2

    aput v2, p0, v0

    .line 60
    const/4 v0, 0x3

    aput v3, p0, v0

    .line 61
    return-void
.end method

.method private static mapHatAxisToDpadButtons([F[F)V
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 152
    aget v0, p1, v4

    .line 153
    const/16 v1, 0x10

    aget v1, p1, v1

    .line 154
    const/16 v2, 0xe

    invoke-static {v0}, Lorg/chromium/content/browser/input/GamepadMappings;->negativeAxisValueAsButton(F)F

    move-result v3

    aput v3, p0, v2

    .line 155
    invoke-static {v0}, Lorg/chromium/content/browser/input/GamepadMappings;->positiveAxisValueAsButton(F)F

    move-result v0

    aput v0, p0, v4

    .line 156
    const/16 v0, 0xc

    invoke-static {v1}, Lorg/chromium/content/browser/input/GamepadMappings;->negativeAxisValueAsButton(F)F

    move-result v2

    aput v2, p0, v0

    .line 157
    const/16 v0, 0xd

    invoke-static {v1}, Lorg/chromium/content/browser/input/GamepadMappings;->positiveAxisValueAsButton(F)F

    move-result v1

    aput v1, p0, v0

    .line 158
    return-void
.end method

.method private static mapPS3SixAxisGamepad([F[F[F[F)V
    .locals 5

    .prologue
    .line 207
    const/16 v0, 0x60

    aget v0, p1, v0

    .line 208
    const/16 v1, 0x61

    aget v1, p1, v1

    .line 209
    const/16 v2, 0x63

    aget v2, p1, v2

    .line 210
    const/16 v3, 0x64

    aget v3, p1, v3

    .line 211
    const/4 v4, 0x0

    aput v2, p0, v4

    .line 212
    const/4 v2, 0x1

    aput v3, p0, v2

    .line 213
    const/4 v2, 0x2

    aput v0, p0, v2

    .line 214
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 216
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonTriggerButtons([F[F)V

    .line 217
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonThumbstickButtons([F[F)V

    .line 218
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonDpadButtons([F[F)V

    .line 219
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonStartSelectMetaButtons([F[F)V

    .line 220
    invoke-static {p0, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapTriggerAxexToShoulderButtons([F[F)V

    .line 222
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapXYAxes([F[F)V

    .line 223
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapZAndRZAxesToRightStick([F[F)V

    .line 224
    return-void
.end method

.method private static mapPedalAxesToBottomShoulder([F[F)V
    .locals 3

    .prologue
    .line 128
    const/16 v0, 0x17

    aget v0, p1, v0

    .line 129
    const/16 v1, 0x16

    aget v1, p1, v1

    .line 130
    const/4 v2, 0x6

    aput v0, p0, v2

    .line 131
    const/4 v0, 0x7

    aput v1, p0, v0

    .line 132
    return-void
.end method

.method private static mapRXAndRYAxesToRightStick([F[F)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x2

    const/16 v1, 0xc

    aget v1, p1, v1

    aput v1, p0, v0

    .line 112
    const/4 v0, 0x3

    const/16 v1, 0xd

    aget v1, p1, v1

    aput v1, p0, v0

    .line 113
    return-void
.end method

.method private static mapSamsungEIGP20Gamepad([F[F[F[F)V
    .locals 0

    .prologue
    .line 228
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonXYABButtons([F[F)V

    .line 229
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonTriggerButtons([F[F)V

    .line 230
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonThumbstickButtons([F[F)V

    .line 231
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonStartSelectMetaButtons([F[F)V

    .line 232
    invoke-static {p0, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapHatAxisToDpadButtons([F[F)V

    .line 234
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapXYAxes([F[F)V

    .line 235
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapRXAndRYAxesToRightStick([F[F)V

    .line 236
    return-void
.end method

.method private static mapShieldGamepad([F[F[F[F)V
    .locals 0

    .prologue
    .line 183
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonXYABButtons([F[F)V

    .line 184
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapTriggerButtonsToTopShoulder([F[F)V

    .line 185
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonThumbstickButtons([F[F)V

    .line 186
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonStartSelectMetaButtons([F[F)V

    .line 187
    invoke-static {p0, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapTriggerAxesToBottomShoulder([F[F)V

    .line 188
    invoke-static {p0, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapHatAxisToDpadButtons([F[F)V

    .line 190
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapXYAxes([F[F)V

    .line 191
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapZAndRZAxesToRightStick([F[F)V

    .line 192
    return-void
.end method

.method public static mapToStandardGamepad([F[F[F[FLjava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    const-string/jumbo v1, "NVIDIA Corporation NVIDIA Controller"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p1, p3, p0, p2}, Lorg/chromium/content/browser/input/GamepadMappings;->mapShieldGamepad([F[F[F[F)V

    .line 49
    :goto_0
    return v0

    .line 34
    :cond_0
    const-string/jumbo v1, "Microsoft X-Box 360 pad"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-static {p1, p3, p0, p2}, Lorg/chromium/content/browser/input/GamepadMappings;->mapXBox360Gamepad([F[F[F[F)V

    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo v1, "Sony PLAYSTATION(R)3 Controller"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-static {p1, p3, p0, p2}, Lorg/chromium/content/browser/input/GamepadMappings;->mapPS3SixAxisGamepad([F[F[F[F)V

    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo v1, "Samsung Game Pad EI-GP20"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p1, p3, p0, p2}, Lorg/chromium/content/browser/input/GamepadMappings;->mapSamsungEIGP20Gamepad([F[F[F[F)V

    goto :goto_0

    .line 43
    :cond_3
    const-string/jumbo v1, "Amazon Fire Game Controller"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    invoke-static {p1, p3, p0, p2}, Lorg/chromium/content/browser/input/GamepadMappings;->mapAmazonFireGamepad([F[F[F[F)V

    goto :goto_0

    .line 48
    :cond_4
    invoke-static {p1, p3, p0, p2}, Lorg/chromium/content/browser/input/GamepadMappings;->mapUnknownGamepad([F[F[F[F)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapTriggerAxesToBottomShoulder([F[F)V
    .locals 3

    .prologue
    .line 135
    const/16 v0, 0x11

    aget v0, p1, v0

    .line 136
    const/16 v1, 0x12

    aget v1, p1, v1

    .line 137
    const/4 v2, 0x6

    aput v0, p0, v2

    .line 138
    const/4 v0, 0x7

    aput v1, p0, v0

    .line 139
    return-void
.end method

.method private static mapTriggerAxexToShoulderButtons([F[F)V
    .locals 3

    .prologue
    .line 121
    const/16 v0, 0x11

    aget v0, p1, v0

    .line 122
    const/16 v1, 0x12

    aget v1, p1, v1

    .line 123
    const/4 v2, 0x4

    aput v0, p0, v2

    .line 124
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 125
    return-void
.end method

.method private static mapTriggerButtonsToTopShoulder([F[F)V
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0x66

    aget v0, p1, v0

    .line 89
    const/16 v1, 0x67

    aget v1, p1, v1

    .line 90
    const/4 v2, 0x4

    aput v0, p0, v2

    .line 91
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 92
    return-void
.end method

.method private static mapUnknownGamepad([F[F[F[F)V
    .locals 0

    .prologue
    .line 244
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonXYABButtons([F[F)V

    .line 245
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonTriggerButtons([F[F)V

    .line 246
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonThumbstickButtons([F[F)V

    .line 247
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonStartSelectMetaButtons([F[F)V

    .line 248
    invoke-static {p0, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapTriggerAxexToShoulderButtons([F[F)V

    .line 249
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/GamepadMappings;->mapCommonDpadButtons([F[F)V

    .line 251
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapXYAxes([F[F)V

    .line 252
    invoke-static {p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapRXAndRYAxesToRightStick([F[F)V

    .line 253
    return-void
.end method

.method private static mapXBox360Gamepad([F[F[F[F)V
    .locals 0

    .prologue
    .line 201
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/GamepadMappings;->mapShieldGamepad([F[F[F[F)V

    .line 202
    return-void
.end method

.method private static mapXYAxes([F[F)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    aget v0, p1, v1

    aput v0, p0, v1

    .line 107
    aget v0, p1, v2

    aput v0, p0, v2

    .line 108
    return-void
.end method

.method private static mapZAndRZAxesToRightStick([F[F)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x2

    const/16 v1, 0xb

    aget v1, p1, v1

    aput v1, p0, v0

    .line 117
    const/4 v0, 0x3

    const/16 v1, 0xe

    aget v1, p1, v1

    aput v1, p0, v0

    .line 118
    return-void
.end method

.method static negativeAxisValueAsButton(F)F
    .locals 1

    .prologue
    .line 143
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static positiveAxisValueAsButton(F)F
    .locals 1

    .prologue
    .line 148
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
