.class Lorg/chromium/media/midi/MidiManagerAndroid;
.super Ljava/lang/Object;
.source "MidiManagerAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDevices:Ljava/util/List;

.field private final mHandler:Landroid/os/Handler;

.field private mIsInitializing:Z

.field private final mManager:Landroid/media/midi/MidiManager;

.field private final mNativeManagerPointer:J

.field private final mPendingDevices:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/media/midi/MidiManagerAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/midi/MidiManagerAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mDevices:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mPendingDevices:Ljava/util/Set;

    .line 70
    sget-boolean v0, Lorg/chromium/media/midi/MidiManagerAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_0
    const-string/jumbo v0, "midi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    iput-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mManager:Landroid/media/midi/MidiManager;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mHandler:Landroid/os/Handler;

    .line 74
    iput-wide p2, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mNativeManagerPointer:J

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/media/midi/MidiManagerAndroid;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/media/midi/MidiManagerAndroid;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/media/midi/MidiManagerAndroid;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mPendingDevices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/media/midi/MidiManagerAndroid;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/media/midi/MidiManagerAndroid;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/media/midi/MidiManagerAndroid;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mNativeManagerPointer:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/chromium/media/midi/MidiManagerAndroid;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/midi/MidiManagerAndroid;->onDeviceOpened(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method static create(Landroid/content/Context;J)Lorg/chromium/media/midi/MidiManagerAndroid;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/chromium/media/midi/MidiManagerAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/media/midi/MidiManagerAndroid;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method static native nativeOnAttached(JLorg/chromium/media/midi/MidiDeviceAndroid;)V
.end method

.method static native nativeOnDetached(JLorg/chromium/media/midi/MidiDeviceAndroid;)V
.end method

.method static native nativeOnInitialized(J[Lorg/chromium/media/midi/MidiDeviceAndroid;)V
.end method

.method private onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mPendingDevices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/midi/MidiManagerAndroid;->openDevice(Landroid/media/midi/MidiDeviceInfo;)V

    .line 130
    return-void
.end method

.method private onDeviceOpened(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mPendingDevices:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Lorg/chromium/media/midi/MidiDeviceAndroid;

    invoke-direct {v0, p1}, Lorg/chromium/media/midi/MidiDeviceAndroid;-><init>(Landroid/media/midi/MidiDevice;)V

    .line 149
    iget-object v1, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-boolean v1, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z

    if-nez v1, :cond_0

    .line 151
    iget-wide v2, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mNativeManagerPointer:J

    invoke-static {v2, v3, v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->nativeOnAttached(JLorg/chromium/media/midi/MidiDeviceAndroid;)V

    .line 154
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mPendingDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-wide v2, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mNativeManagerPointer:J

    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mDevices:Ljava/util/List;

    new-array v1, v4, [Lorg/chromium/media/midi/MidiDeviceAndroid;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/midi/MidiDeviceAndroid;

    invoke-static {v2, v3, v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->nativeOnInitialized(J[Lorg/chromium/media/midi/MidiDeviceAndroid;)V

    .line 156
    iput-boolean v4, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z

    .line 158
    :cond_1
    return-void
.end method

.method private onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/midi/MidiDeviceAndroid;

    .line 138
    invoke-virtual {v0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->getInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 139
    invoke-virtual {v0}, Lorg/chromium/media/midi/MidiDeviceAndroid;->close()V

    .line 140
    iget-wide v2, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mNativeManagerPointer:J

    invoke-static {v2, v3, v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->nativeOnDetached(JLorg/chromium/media/midi/MidiDeviceAndroid;)V

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method private openDevice(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mManager:Landroid/media/midi/MidiManager;

    new-instance v1, Lorg/chromium/media/midi/MidiManagerAndroid$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/media/midi/MidiManagerAndroid$3;-><init>(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V

    iget-object v2, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 119
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mManager:Landroid/media/midi/MidiManager;

    new-instance v1, Lorg/chromium/media/midi/MidiManagerAndroid$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/midi/MidiManagerAndroid$1;-><init>(Lorg/chromium/media/midi/MidiManagerAndroid;)V

    iget-object v2, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/midi/MidiManager;->registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mManager:Landroid/media/midi/MidiManager;

    invoke-virtual {v0}, Landroid/media/midi/MidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .line 96
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 97
    iget-object v4, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mPendingDevices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0, v3}, Lorg/chromium/media/midi/MidiManagerAndroid;->openDevice(Landroid/media/midi/MidiDeviceInfo;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/midi/MidiManagerAndroid$2;

    invoke-direct {v1, p0}, Lorg/chromium/media/midi/MidiManagerAndroid$2;-><init>(Lorg/chromium/media/midi/MidiManagerAndroid;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method
