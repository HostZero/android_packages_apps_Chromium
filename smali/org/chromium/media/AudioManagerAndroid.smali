.class Lorg/chromium/media/AudioManagerAndroid;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final DEVICE_NAMES:[Ljava/lang/String;

.field private static final SUPPORTED_AEC_MODELS:[Ljava/lang/String;

.field private static final VALID_DEVICES:[Ljava/lang/Integer;


# instance fields
.field private mAudioDevices:[Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothScoState:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mHasBluetoothPermission:Z

.field private mHasModifyAudioSettingsPermission:Z

.field private mIsInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNativeAudioManagerAndroid:J

.field private final mNonThreadSafe:Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;

.field private mRequestedAudioDevice:I

.field private mSavedAudioMode:I

.field private mSavedIsMicrophoneMute:Z

.field private mSavedIsSpeakerphoneOn:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSettingsObserverThread:Landroid/os/HandlerThread;

.field private mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "GT-I9300"

    aput-object v1, v0, v3

    const-string/jumbo v1, "GT-I9500"

    aput-object v1, v0, v4

    const-string/jumbo v1, "GT-N7105"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Nexus 4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Nexus 5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Nexus 7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SM-N9005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SM-T310"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/media/AudioManagerAndroid;->SUPPORTED_AEC_MODELS:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Speakerphone"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Wired headset"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Headset earpiece"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Bluetooth headset"

    aput-object v1, v0, v6

    const-string/jumbo v1, "USB audio"

    aput-object v1, v0, v7

    sput-object v0, Lorg/chromium/media/AudioManagerAndroid;->DEVICE_NAMES:[Ljava/lang/String;

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lorg/chromium/media/AudioManagerAndroid;->VALID_DEVICES:[Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    .line 170
    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    .line 172
    const/4 v0, -0x2

    iput v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    .line 177
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    .line 179
    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    .line 185
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 190
    new-instance v0, Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;

    invoke-direct {v0}, Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mNonThreadSafe:Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    .line 200
    iput-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 201
    iput-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    .line 230
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    .line 231
    iput-wide p2, p0, Lorg/chromium/media/AudioManagerAndroid;->mNativeAudioManagerAndroid:J

    .line 232
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    .line 233
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContentResolver:Landroid/content/ContentResolver;

    .line 234
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 235
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/media/AudioManagerAndroid;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mNativeAudioManagerAndroid:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/chromium/media/AudioManagerAndroid;JZ)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/AudioManagerAndroid;->nativeSetMute(JZ)V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/media/AudioManagerAndroid;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/chromium/media/AudioManagerAndroid;->hasUsbAudioCommInterface(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/media/AudioManagerAndroid;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasWiredHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/media/AudioManagerAndroid;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasUsbAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/media/AudioManagerAndroid;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasEarpiece()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/media/AudioManagerAndroid;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->deviceHasBeenRequested()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->updateDeviceActivation()V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/media/AudioManagerAndroid;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    return v0
.end method

.method static synthetic access$802(Lorg/chromium/media/AudioManagerAndroid;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    return p1
.end method

.method static synthetic access$900(Lorg/chromium/media/AudioManagerAndroid;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private checkIfCalledOnValidThread()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->checkIfCalledOnValidThread()V

    .line 288
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->stopObservingVolumeChanges()V

    .line 291
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterForWiredHeadsetIntentBroadcast()V

    .line 292
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterBluetoothIntentsIfNeeded()V

    .line 293
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterForUsbAudioIntentBroadcast()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    goto :goto_0
.end method

.method private static createAudioManagerAndroid(Landroid/content/Context;J)Lorg/chromium/media/AudioManagerAndroid;
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/media/AudioManagerAndroid;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private deviceHasBeenRequested()Z
    .locals 3

    .prologue
    .line 1070
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAudioInputDeviceNames()[Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 475
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-nez v0, :cond_0

    move-object v0, v2

    .line 500
    :goto_0
    return-object v0

    .line 477
    :cond_0
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 478
    iget-boolean v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 479
    :cond_1
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v3, "Requires MODIFY_AUDIO_SETTINGS and RECORD_AUDIO. No audio device will be available for recording"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 481
    goto :goto_0

    .line 485
    :cond_2
    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 486
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 487
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->getNumOfAudioDevices([Z)I

    move-result v3

    new-array v3, v3, [Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;

    move v4, v1

    .line 492
    :goto_1
    const/4 v6, 0x5

    if-ge v4, v6, :cond_4

    .line 493
    aget-boolean v6, v0, v4

    if-eqz v6, :cond_3

    .line 494
    new-instance v6, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;

    sget-object v7, Lorg/chromium/media/AudioManagerAndroid;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-direct {v6, v4, v7, v2}, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;-><init>(ILjava/lang/String;Lorg/chromium/media/AudioManagerAndroid$1;)V

    aput-object v6, v3, v1

    .line 495
    sget-object v6, Lorg/chromium/media/AudioManagerAndroid;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v1, v1, 0x1

    .line 492
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 487
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object v0, v3

    .line 500
    goto :goto_0
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .locals 3

    .prologue
    const/16 v0, 0x100

    .line 565
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getMinInputFrameSize(II)I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 525
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 526
    const/16 v0, 0x10

    .line 532
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/2addr v0, p1

    :goto_1
    return v0

    .line 527
    :cond_0
    if-ne p1, v1, :cond_1

    .line 528
    const/16 v0, 0xc

    goto :goto_0

    .line 530
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getMinOutputFrameSize(II)I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 545
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 546
    const/4 v0, 0x4

    .line 552
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/2addr v0, p1

    :goto_1
    return v0

    .line 547
    :cond_0
    if-ne p1, v1, :cond_1

    .line 548
    const/16 v0, 0xc

    goto :goto_0

    .line 550
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getNativeOutputSampleRate()I
    .locals 3

    .prologue
    const v0, 0xac44

    .line 506
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 507
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getNumOfAudioDevices([Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1107
    move v1, v0

    .line 1108
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 1109
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    return v0
.end method

.method private hasBluetoothHeadset()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 692
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v0, :cond_0

    .line 693
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v2, "hasBluetoothHeadset() requires BLUETOOTH permission"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 729
    :goto_0
    return v0

    .line 703
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    .line 706
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "bluetooth"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 709
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 716
    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    .line 718
    goto :goto_0

    .line 713
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_1

    .line 722
    :cond_2
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v3

    .line 729
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private hasEarpiece()Z
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasUsbAudio()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 765
    :goto_0
    return v1

    .line 748
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 753
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 756
    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->hasUsbAudioCommInterface(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 765
    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private hasUsbAudioCommInterface(Landroid/hardware/usb/UsbDevice;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1223
    move v0, v1

    .line 1224
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1225
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 1226
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 1234
    :cond_0
    return v1

    .line 1224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasWiredHeadset()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 244
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->checkIfCalledOnValidThread()V

    .line 247
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    .line 258
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasEarpiece()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 259
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasWiredHeadset()Z

    move-result v1

    aput-boolean v1, v0, v3

    .line 260
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    const/4 v1, 0x4

    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasUsbAudio()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 261
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 265
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerBluetoothIntentsIfNeeded()V

    .line 269
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerForWiredHeadsetIntentBroadcast()V

    .line 273
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerForUsbAudioIntentBroadcast()V

    .line 275
    iput-boolean v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    goto :goto_0
.end method

.method private isAudioLowLatencySupported()Z
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logDeviceInfo()V
    .locals 2

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Android SDK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Brand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Hardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Manufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Product: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->logd(Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1150
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1154
    const-string/jumbo v0, "cr.media"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    return-void
.end method

.method private native nativeSetMute(JZ)V
.end method

.method private registerBluetoothIntentsIfNeeded()V
    .locals 3

    .prologue
    .line 606
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    .line 615
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v0, :cond_0

    .line 616
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "Requires BLUETOOTH permission"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    const/4 v1, 0x3

    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasBluetoothHeadset()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 623
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerForBluetoothHeadsetIntentBroadcast()V

    .line 624
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerForBluetoothScoIntentBroadcast()V

    goto :goto_0
.end method

.method private registerForBluetoothHeadsetIntentBroadcast()V
    .locals 3

    .prologue
    .line 851
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 855
    new-instance v1, Lorg/chromium/media/AudioManagerAndroid$2;

    invoke-direct {v1, p0}, Lorg/chromium/media/AudioManagerAndroid$2;-><init>(Lorg/chromium/media/AudioManagerAndroid;)V

    iput-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 903
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 904
    return-void
.end method

.method private registerForBluetoothScoIntentBroadcast()V
    .locals 3

    .prologue
    .line 916
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 920
    new-instance v1, Lorg/chromium/media/AudioManagerAndroid$3;

    invoke-direct {v1, p0}, Lorg/chromium/media/AudioManagerAndroid$3;-><init>(Lorg/chromium/media/AudioManagerAndroid;)V

    iput-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    .line 959
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 960
    return-void
.end method

.method private registerForUsbAudioIntentBroadcast()V
    .locals 3

    .prologue
    .line 1244
    new-instance v0, Lorg/chromium/media/AudioManagerAndroid$5;

    invoke-direct {v0, p0}, Lorg/chromium/media/AudioManagerAndroid$5;-><init>(Lorg/chromium/media/AudioManagerAndroid;)V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    .line 1290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1291
    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1295
    return-void
.end method

.method private registerForWiredHeadsetIntentBroadcast()V
    .locals 3

    .prologue
    .line 774
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 777
    new-instance v1, Lorg/chromium/media/AudioManagerAndroid$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/AudioManagerAndroid$1;-><init>(Lorg/chromium/media/AudioManagerAndroid;)V

    iput-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 835
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 836
    return-void
.end method

.method private reportUpdate()V
    .locals 0

    .prologue
    .line 1132
    return-void
.end method

.method private static selectDefaultDevice([Z)I
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 1056
    aget-boolean v3, p0, v0

    if-eqz v3, :cond_0

    .line 1065
    :goto_0
    return v0

    .line 1058
    :cond_0
    aget-boolean v0, p0, v1

    if-eqz v0, :cond_1

    move v0, v1

    .line 1059
    goto :goto_0

    .line 1060
    :cond_1
    aget-boolean v0, p0, v2

    if-eqz v0, :cond_2

    move v0, v2

    .line 1063
    goto :goto_0

    .line 1065
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAudioDevice(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1022
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1023
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->startBluetoothSco()V

    .line 1028
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1044
    const-string/jumbo v0, "Invalid audio device selection"

    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    .line 1047
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->reportUpdate()V

    .line 1048
    return-void

    .line 1025
    :cond_0
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->stopBluetoothSco()V

    goto :goto_0

    .line 1032
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 1035
    :pswitch_2
    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 1038
    :pswitch_3
    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 1041
    :pswitch_4
    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 1028
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setCommunicationAudioModeOn(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->checkIfCalledOnValidThread()V

    .line 307
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    if-nez v0, :cond_1

    .line 312
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "MODIFY_AUDIO_SETTINGS is missing => client will run with reduced functionality"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_1
    if-eqz p1, :cond_2

    .line 319
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 324
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsSpeakerphoneOn:Z

    .line 325
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsMicrophoneMute:Z

    .line 332
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->startObservingVolumeChanges()V

    .line 347
    :goto_1
    invoke-direct {p0, p1}, Lorg/chromium/media/AudioManagerAndroid;->setCommunicationAudioModeOnInternal(Z)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 336
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->stopObservingVolumeChanges()V

    .line 337
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->stopBluetoothSco()V

    .line 338
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 340
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsMicrophoneMute:Z

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setMicrophoneMute(Z)V

    .line 344
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsSpeakerphoneOn:Z

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setCommunicationAudioModeOnInternal(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    if-eq v0, v2, :cond_0

    .line 359
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "Audio mode has already been set"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :goto_0
    return-void

    .line 366
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->logDeviceInfo()V

    .line 377
    throw v0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->logDeviceInfo()V

    .line 369
    throw v0

    .line 381
    :cond_1
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    if-ne v0, v2, :cond_2

    .line 382
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "Audio mode has not yet been set"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 394
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    goto :goto_0

    .line 390
    :catch_2
    move-exception v0

    .line 391
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->logDeviceInfo()V

    .line 392
    throw v0
.end method

.method private setDevice(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 429
    iget-boolean v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v2}, Lorg/chromium/media/AudioManagerAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    .line 432
    iget-boolean v4, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    if-eqz v4, :cond_2

    if-nez v2, :cond_3

    .line 433
    :cond_2
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "Requires MODIFY_AUDIO_SETTINGS and RECORD_AUDIO. Selected device will not be available for recording"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 440
    :goto_1
    if-ne v2, v3, :cond_5

    .line 442
    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 443
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 444
    const/4 v3, -0x2

    iput v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 445
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->selectDefaultDevice([Z)I

    move-result v0

    .line 447
    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    move v0, v1

    .line 448
    goto :goto_0

    .line 438
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 445
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 453
    :cond_5
    sget-object v3, Lorg/chromium/media/AudioManagerAndroid;->VALID_DEVICES:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 454
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 458
    :try_start_2
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 459
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    invoke-direct {p0, v2}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    move v0, v1

    .line 461
    goto :goto_0

    .line 459
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private setMicrophoneMute(Z)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 648
    if-ne v0, p1, :cond_0

    .line 652
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method private setSpeakerphoneOn(Z)V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    .line 639
    if-ne v0, p1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method private static shouldUseAcousticEchoCanceler()Z
    .locals 2

    .prologue
    .line 577
    sget-object v0, Lorg/chromium/media/AudioManagerAndroid;->SUPPORTED_AEC_MODELS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 578
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method private startBluetoothSco()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 969
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v0, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    if-eq v0, v2, :cond_0

    .line 980
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iput v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    goto :goto_0

    .line 986
    :cond_2
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    .line 987
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_0
.end method

.method private startObservingVolumeChanges()V
    .locals 4

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1194
    :goto_0
    return-void

    .line 1161
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SettingsObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    .line 1162
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1164
    new-instance v0, Lorg/chromium/media/AudioManagerAndroid$4;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lorg/chromium/media/AudioManagerAndroid$4;-><init>(Lorg/chromium/media/AudioManagerAndroid;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1192
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private stopBluetoothSco()V
    .locals 2

    .prologue
    .line 992
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1000
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1002
    const-string/jumbo v0, "Unable to stop BT SCO since it is already disabled"

    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    .line 1003
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    goto :goto_0

    .line 1008
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    .line 1009
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0
.end method

.method private stopObservingVolumeChanges()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1199
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1202
    iput-object v5, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1204
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1206
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :goto_1
    iput-object v5, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "Thread.join() exception: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private unregisterBluetoothIntentsIfNeeded()V
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 631
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterForBluetoothHeadsetIntentBroadcast()V

    .line 632
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterForBluetoothScoIntentBroadcast()V

    .line 634
    :cond_0
    return-void
.end method

.method private unregisterForBluetoothHeadsetIntentBroadcast()V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 909
    return-void
.end method

.method private unregisterForBluetoothScoIntentBroadcast()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    .line 965
    return-void
.end method

.method private unregisterForUsbAudioIntentBroadcast()V
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mUsbAudioReceiver:Landroid/content/BroadcastReceiver;

    .line 1301
    return-void
.end method

.method private unregisterForWiredHeadsetIntentBroadcast()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 842
    return-void
.end method

.method private updateDeviceActivation()V
    .locals 3

    .prologue
    .line 1083
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1084
    :try_start_0
    iget v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 1085
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 1086
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 1088
    const-string/jumbo v0, "Unable to activate device since no device is selected"

    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    .line 1103
    :goto_0
    return-void

    .line 1086
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1094
    :cond_0
    const/4 v1, -0x2

    if-eq v2, v1, :cond_1

    aget-boolean v1, v0, v2

    if-nez v1, :cond_2

    .line 1096
    :cond_1
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->selectDefaultDevice([Z)I

    move-result v0

    .line 1097
    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    goto :goto_0

    .line 1101
    :cond_2
    invoke-direct {p0, v2}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 407
    packed-switch p1, :pswitch_data_0

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setCommunicationAudioModeOnInternal(Z)V

    .line 415
    :goto_0
    return-void

    .line 409
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setCommunicationAudioModeOnInternal(Z)V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
