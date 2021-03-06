.class public Lorg/chromium/content/browser/input/GamepadList;
.super Ljava/lang/Object;
.source "GamepadList.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAttachedToWindowCounter:I

.field private final mGamepadDevices:[Lorg/chromium/content/browser/input/GamepadDevice;

.field private mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsGamepadAPIActive:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/content/browser/input/GamepadList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/GamepadList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/content/browser/input/GamepadDevice;

    iput-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mGamepadDevices:[Lorg/chromium/content/browser/input/GamepadDevice;

    .line 40
    new-instance v0, Lorg/chromium/content/browser/input/GamepadList$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/GamepadList$1;-><init>(Lorg/chromium/content/browser/input/GamepadList;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/input/GamepadList$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/content/browser/input/GamepadList;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/GamepadList;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->onInputDeviceChangedImpl(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/GamepadList;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->onInputDeviceRemovedImpl(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/GamepadList;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->onInputDeviceAddedImpl(I)V

    return-void
.end method

.method private attachedToWindow(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mAttachedToWindowCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mAttachedToWindowCounter:I

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    .line 85
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/GamepadList;->initializeDevices()V

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 91
    :cond_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private detachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    iget v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mAttachedToWindowCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mAttachedToWindowCounter:I

    if-nez v0, :cond_1

    .line 104
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 106
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/browser/input/GamepadList;->mGamepadDevices:[Lorg/chromium/content/browser/input/GamepadDevice;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 110
    iput-object v4, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    .line 112
    :cond_1
    return-void

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 176
    invoke-static {p0}, Lorg/chromium/content/browser/input/GamepadList;->isGamepadEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->getInstance()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/GamepadList;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private getDevice(I)Lorg/chromium/content/browser/input/GamepadDevice;
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lorg/chromium/content/browser/input/GamepadList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mGamepadDevices:[Lorg/chromium/content/browser/input/GamepadDevice;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getDeviceById(I)Lorg/chromium/content/browser/input/GamepadDevice;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mGamepadDevices:[Lorg/chromium/content/browser/input/GamepadDevice;

    aget-object v0, v0, v1

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 162
    :goto_1
    return-object v0

    .line 156
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/content/browser/input/GamepadDevice;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/GamepadList;->getDeviceById(I)Lorg/chromium/content/browser/input/GamepadDevice;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lorg/chromium/content/browser/input/GamepadList;
    .locals 1

    .prologue
    .line 135
    # getter for: Lorg/chromium/content/browser/input/GamepadList$LazyHolder;->INSTANCE:Lorg/chromium/content/browser/input/GamepadList;
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList$LazyHolder;->access$300()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableIndex()I
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 215
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/GamepadList;->getDevice(I)Lorg/chromium/content/browser/input/GamepadDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 220
    :goto_1
    return v0

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private grabGamepadData(J)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v12, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 288
    :goto_0
    const/4 v0, 0x4

    if-ge v4, v0, :cond_1

    .line 289
    :try_start_0
    invoke-direct {p0, v4}, Lorg/chromium/content/browser/input/GamepadList;->getDevice(I)Lorg/chromium/content/browser/input/GamepadDevice;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->updateButtonsAndAxesMapping()V

    .line 292
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->isStandardGamepad()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->getAxes()[F

    move-result-object v10

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->getButtons()[F

    move-result-object v11

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v11}, Lorg/chromium/content/browser/input/GamepadList;->nativeSetGamepadData(JIZZLjava/lang/String;J[F[F)V

    .line 288
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v11}, Lorg/chromium/content/browser/input/GamepadList;->nativeSetGamepadData(JIZZLjava/lang/String;J[F[F)V

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/GamepadList;->mIsGamepadAPIActive:Z

    if-nez v2, :cond_0

    monitor-exit v1

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/content/browser/input/GamepadDevice;

    move-result-object v2

    .line 184
    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/input/GamepadDevice;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/GamepadList;->mIsGamepadAPIActive:Z

    if-nez v2, :cond_0

    monitor-exit v1

    .line 203
    :goto_0
    return v0

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->getGamepadForEvent(Landroid/view/InputEvent;)Lorg/chromium/content/browser/input/GamepadDevice;

    move-result-object v2

    .line 202
    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/input/GamepadDevice;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private initializeDevices()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    .line 62
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 63
    aget v2, v1, v0

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 65
    invoke-static {v2}, Lorg/chromium/content/browser/input/GamepadList;->isGamepadDevice(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/input/GamepadList;->registerGamepad(Landroid/view/InputDevice;)Z

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public static isGamepadAPIActive()Z
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->getInstance()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/content/browser/input/GamepadList;->mIsGamepadAPIActive:Z

    return v0
.end method

.method private static isGamepadDevice(Landroid/view/InputDevice;)Z
    .locals 3

    .prologue
    const v2, 0x1000010

    const/4 v0, 0x0

    .line 240
    if-nez p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGamepadEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 268
    packed-switch v0, :pswitch_data_0

    .line 277
    invoke-static {v0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    :goto_0
    return v0

    .line 275
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isGamepadEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const v1, 0x1000010

    .line 260
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeSetGamepadData(JIZZLjava/lang/String;J[F[F)V
.end method

.method public static onAttachedToWindow(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lorg/chromium/content/browser/input/GamepadList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->getInstance()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/GamepadList;->attachedToWindow(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public static onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lorg/chromium/content/browser/input/GamepadList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->getInstance()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    invoke-direct {v0}, Lorg/chromium/content/browser/input/GamepadList;->detachedFromWindow()V

    .line 100
    return-void
.end method

.method public static onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 194
    invoke-static {p0}, Lorg/chromium/content/browser/input/GamepadList;->isGamepadEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->getInstance()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/GamepadList;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private onInputDeviceAddedImpl(I)V
    .locals 2

    .prologue
    .line 125
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lorg/chromium/content/browser/input/GamepadList;->isGamepadDevice(Landroid/view/InputDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/GamepadList;->registerGamepad(Landroid/view/InputDevice;)Z

    .line 129
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onInputDeviceChangedImpl(I)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method private onInputDeviceRemovedImpl(I)V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->unregisterGamepad(I)V

    .line 121
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerGamepad(Landroid/view/InputDevice;)Z
    .locals 3

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/chromium/content/browser/input/GamepadList;->getNextAvailableIndex()I

    move-result v0

    .line 225
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    .line 227
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/input/GamepadDevice;

    invoke-direct {v1, v0, p1}, Lorg/chromium/content/browser/input/GamepadDevice;-><init>(ILandroid/view/InputDevice;)V

    .line 228
    iget-object v2, p0, Lorg/chromium/content/browser/input/GamepadList;->mGamepadDevices:[Lorg/chromium/content/browser/input/GamepadDevice;

    aput-object v1, v2, v0

    .line 229
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static setGamepadAPIActive(Z)V
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->getInstance()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/GamepadList;->setIsGamepadActive(Z)V

    .line 305
    return-void
.end method

.method private setIsGamepadActive(Z)V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/GamepadList;->mIsGamepadAPIActive:Z

    .line 310
    if-eqz p1, :cond_1

    .line 311
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 312
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/GamepadList;->getDevice(I)Lorg/chromium/content/browser/input/GamepadDevice;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Lorg/chromium/content/browser/input/GamepadDevice;->clearData()V

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterGamepad(I)V
    .locals 3

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->getDeviceById(I)Lorg/chromium/content/browser/input/GamepadDevice;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/GamepadDevice;->getIndex()I

    move-result v0

    .line 236
    iget-object v1, p0, Lorg/chromium/content/browser/input/GamepadList;->mGamepadDevices:[Lorg/chromium/content/browser/input/GamepadDevice;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method static updateGamepadData(J)V
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->getInstance()Lorg/chromium/content/browser/input/GamepadList;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/GamepadList;->grabGamepadData(J)V

    .line 284
    return-void
.end method
