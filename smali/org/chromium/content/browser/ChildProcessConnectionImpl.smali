.class public Lorg/chromium/content/browser/ChildProcessConnectionImpl;
.super Ljava/lang/Object;
.source "ChildProcessConnectionImpl.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sNeedsExtrabindFlags:[Ljava/lang/Boolean;


# instance fields
.field private final mAlwaysInForeground:Z

.field private mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

.field private mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

.field private final mContext:Landroid/content/Context;

.field private final mCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

.field private final mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

.field private final mInSandbox:Z

.field private mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

.field private mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

.field private final mLock:Ljava/lang/Object;

.field private mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

.field private mPid:I

.field private mService:Lorg/chromium/content/common/IChildProcessService;

.field private final mServiceClass:Ljava/lang/Class;

.field private mServiceConnectComplete:Z

.field private mServiceDisconnected:Z

.field private final mServiceName:Landroid/content/ComponentName;

.field private final mServiceNumber:I

.field private mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

.field private mStrongBindingCount:I

.field private mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

.field private mWasOomProtected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->sNeedsExtrabindFlags:[Ljava/lang/Boolean;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;IZLorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Ljava/lang/Class;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V
    .locals 6

    .prologue
    const/16 v1, 0x41

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    .line 44
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    .line 46
    iput-boolean v4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    .line 49
    iput-boolean v4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    .line 52
    iput-boolean v4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWasOomProtected:Z

    .line 53
    iput v4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    .line 56
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 61
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 64
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 66
    iput v4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 70
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 73
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 218
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mContext:Landroid/content/Context;

    .line 219
    iput p2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceNumber:I

    .line 220
    iput-boolean p3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInSandbox:Z

    .line 221
    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    .line 222
    iput-object p5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceClass:Ljava/lang/Class;

    .line 223
    if-eqz p8, :cond_0

    invoke-virtual {p8}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceName:Landroid/content/ComponentName;

    .line 226
    iput-object p6, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 227
    iput-boolean p7, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    .line 228
    iput-object p8, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    .line 230
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 233
    :goto_1
    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceName:Landroid/content/ComponentName;

    invoke-static {p3, v3, v4}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->isExportedService(ZLandroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    .line 234
    new-instance v4, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-direct {v4, p0, v0, v3}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;IZ)V

    iput-object v4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 235
    new-instance v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-direct {v0, p0, v1, v3}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;IZ)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 237
    new-instance v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/16 v1, 0x21

    invoke-direct {v0, p0, v1, v3}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;IZ)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 239
    new-instance v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-direct {v0, p0, v2, v3}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;IZ)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 241
    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWasOomProtected:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->isCurrentlyOomProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    return p1
.end method

.method static synthetic access$602(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/common/IChildProcessService;)Lorg/chromium/content/common/IChildProcessService;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->doConnectionSetupLocked()V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    return v0
.end method

.method static synthetic access$902(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    return p1
.end method

.method private doConnectionSetupLocked()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 362
    :try_start_0
    const-string/jumbo v0, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 363
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    :try_start_1
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCommandLine:[Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    iget-object v2, v2, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    iget-object v3, v3, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mSharedRelros:Landroid/os/Bundle;

    invoke-static {v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->createsServiceBundle([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 370
    :try_start_2
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    iget-object v3, v3, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, v0, v3}, Lorg/chromium/content/common/IChildProcessService;->setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    .line 371
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Child service claims to be run by a process of pid=0."

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    :try_start_3
    const-string/jumbo v2, "ChildProcessConnect"

    const-string/jumbo v3, "Failed to setup connection."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    iget-object v2, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v1, v2, v0

    .line 378
    iget-object v1, v1, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :catch_1
    move-exception v0

    .line 381
    :try_start_5
    const-string/jumbo v1, "ChildProcessConnect"

    const-string/jumbo v2, "Failed to close FD."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    .line 385
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    iget v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;->onConnected(I)V

    .line 388
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    const-string/jumbo v0, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method private isCurrentlyOomProtected()Z
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 430
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->isApplicationInForeground()Z

    move-result v0

    monitor-exit v1

    .line 431
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isExportedService(ZLandroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    if-eqz p0, :cond_0

    move v0, v1

    .line 248
    :goto_0
    sget-object v3, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->sNeedsExtrabindFlags:[Ljava/lang/Boolean;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 249
    sget-object v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->sNeedsExtrabindFlags:[Ljava/lang/Boolean;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 260
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 247
    goto :goto_0

    .line 253
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 254
    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 255
    iget-boolean v2, v3, Landroid/content/pm/ServiceInfo;->exported:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_2
    sget-object v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->sNeedsExtrabindFlags:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v3

    .line 257
    const-string/jumbo v4, "ChildProcessConnect"

    const-string/jumbo v5, "Could not retrieve info about service %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public addModerateBinding()V
    .locals 6

    .prologue
    .line 486
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v0, :cond_0

    .line 488
    const-string/jumbo v0, "ChildProcessConnect"

    const-string/jumbo v2, "The connection is not bound for %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    monitor-exit v1

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->bind([Ljava/lang/String;)Z

    .line 492
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addStrongBinding()V
    .locals 6

    .prologue
    .line 450
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v0, :cond_0

    .line 452
    const-string/jumbo v0, "ChildProcessConnect"

    const-string/jumbo v2, "The connection is not bound for %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    monitor-exit v1

    .line 459
    :goto_0
    return-void

    .line 455
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->bind([Ljava/lang/String;)Z

    .line 458
    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 459
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public crashServiceForTesting()Z
    .locals 1

    .prologue
    .line 509
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    invoke-interface {v0}, Lorg/chromium/content/common/IChildProcessService;->crashIntentionallyForTesting()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 511
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dropOomBindings()V
    .locals 2

    .prologue
    .line 437
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 439
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 442
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 444
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 445
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getPid()I
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    monitor-exit v1

    return v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServiceNumber()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceNumber:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSandbox()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInSandbox:Z

    return v0
.end method

.method public isInitialBindingBound()Z
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isModerateBindingBound()Z
    .locals 2

    .prologue
    .line 479
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOomProtectedOrWasWhenDied()Z
    .locals 2

    .prologue
    .line 418
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    if-eqz v0, :cond_0

    .line 420
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWasOomProtected:Z

    monitor-exit v1

    .line 422
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->isCurrentlyOomProtected()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStrongBindingBound()Z
    .locals 2

    .prologue
    .line 403
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeInitialBinding()V
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 412
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 413
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public removeModerateBinding()V
    .locals 6

    .prologue
    .line 497
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v0, :cond_0

    .line 499
    const-string/jumbo v0, "ChildProcessConnect"

    const-string/jumbo v2, "The connection is not bound for %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    monitor-exit v1

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 503
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeStrongBinding()V
    .locals 6

    .prologue
    .line 464
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v0, :cond_0

    .line 466
    const-string/jumbo v0, "ChildProcessConnect"

    const-string/jumbo v2, "The connection is not bound for %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    monitor-exit v1

    .line 474
    :goto_0
    return-void

    .line 469
    :cond_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 470
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 471
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 474
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 317
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 319
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    if-eqz v0, :cond_1

    .line 320
    const-string/jumbo v0, "ChildProcessConnect"

    const-string/jumbo v2, "Tried to setup a connection that already disconnected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;->onConnected(I)V

    .line 322
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :goto_0
    return-void

    .line 325
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ChildProcessConnectionImpl.setupConnection"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 326
    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    .line 327
    new-instance v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    invoke-direct {v0, p1, p2, p3, p5}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;-><init>([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    .line 331
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    if-eqz v0, :cond_2

    .line 332
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->doConnectionSetupLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    :cond_2
    :try_start_3
    const-string/jumbo v0, "ChildProcessConnectionImpl.setupConnection"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 337
    monitor-exit v1

    goto :goto_0

    .line 335
    :catchall_1
    move-exception v0

    const-string/jumbo v2, "ChildProcessConnectionImpl.setupConnection"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public start([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 290
    :try_start_0
    const-string/jumbo v0, "ChildProcessConnectionImpl.start"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    :try_start_1
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    :catchall_1
    move-exception v0

    const-string/jumbo v1, "ChildProcessConnectionImpl.start"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    :try_start_3
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v2, "setupConnection() called before start() in ChildProcessConnectionImpl."

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 296
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->bind([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    const-string/jumbo v0, "ChildProcessConnect"

    const-string/jumbo v2, "Failed to establish the service connection."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;->onChildProcessDied(Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 304
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    const-string/jumbo v0, "ChildProcessConnectionImpl.start"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 307
    return-void

    .line 302
    :cond_2
    :try_start_4
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->bind([Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 344
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 345
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 346
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mModerateBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 348
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    .line 351
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    .line 352
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
