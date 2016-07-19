.class Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# instance fields
.field private final mCallbackType:I

.field private final mChildProcessId:I

.field private final mClientContext:J

.field private final mCommandLine:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private final mInSandbox:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCommandLine:[Ljava/lang/String;

    .line 207
    iput p3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mChildProcessId:I

    .line 208
    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 209
    iput-wide p5, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mClientContext:J

    .line 210
    iput p7, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCallbackType:I

    .line 211
    iput-boolean p8, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mInSandbox:Z

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessLauncher$1;)V
    .locals 1

    .prologue
    .line 188
    invoke-direct/range {p0 .. p8}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->context()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->commandLine()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)I
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->childProcessId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->filesToBeMapped()[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)J
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->clientContext()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)I
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->callbackType()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)Z
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->inSandbox()Z

    move-result v0

    return v0
.end method

.method private callbackType()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCallbackType:I

    return v0
.end method

.method private childProcessId()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mChildProcessId:I

    return v0
.end method

.method private clientContext()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mClientContext:J

    return-wide v0
.end method

.method private commandLine()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mCommandLine:[Ljava/lang/String;

    return-object v0
.end method

.method private context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private filesToBeMapped()[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    return-object v0
.end method

.method private inSandbox()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->mInSandbox:Z

    return v0
.end method
