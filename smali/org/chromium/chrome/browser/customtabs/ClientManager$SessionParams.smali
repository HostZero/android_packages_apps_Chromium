.class Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;
.super Ljava/lang/Object;
.source "ClientManager.java"


# instance fields
.field public final callback:Landroid/support/customtabs/ICustomTabsCallback;

.field public final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIgnoreFragments:Z

.field private mKeepAliveConnection:Landroid/content/ServiceConnection;

.field private mLastMayLaunchUrlTimestamp:J

.field private mPredictedUrl:Ljava/lang/String;

.field private mShouldHideDomain:Z

.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/support/customtabs/ICustomTabsCallback;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p2, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->uid:I

    .line 64
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->packageName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->callback:Landroid/support/customtabs/ICustomTabsCallback;

    .line 66
    iput-object p4, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mShouldHideDomain:Z

    return v0
.end method

.method private static getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 72
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getKeepAliveConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mKeepAliveConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public getLastMayLaunchUrlTimestamp()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mLastMayLaunchUrlTimestamp:J

    return-wide v0
.end method

.method public getPredictedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mPredictedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setKeepAliveConnection(Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mKeepAliveConnection:Landroid/content/ServiceConnection;

    .line 82
    return-void
.end method

.method public setPredictionMetrics(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mPredictedUrl:Ljava/lang/String;

    .line 86
    iput-wide p2, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mLastMayLaunchUrlTimestamp:J

    .line 87
    return-void
.end method
