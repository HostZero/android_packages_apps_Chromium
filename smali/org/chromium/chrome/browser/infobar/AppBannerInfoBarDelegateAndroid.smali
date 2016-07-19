.class public Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;
.super Ljava/lang/Object;
.source "AppBannerInfoBarDelegateAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sPackageManagerForTests:Landroid/content/pm/PackageManager;


# instance fields
.field private mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;

.field private final mListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

.field private mNativePointer:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mNativePointer:J

    .line 49
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->createApplicationStateListener()Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;J)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->nativeUpdateInstallState(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)Lorg/chromium/chrome/browser/banners/InstallerDelegate;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;Lorg/chromium/chrome/browser/banners/InstallerDelegate;)Lorg/chromium/chrome/browser/banners/InstallerDelegate;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->createInstallerDelegateObserver()Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;JZ)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->nativeOnInstallIntentReturned(JZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;JZ)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->nativeOnInstallFinished(JZ)V

    return-void
.end method

.method private static create(J)Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;-><init>(J)V

    return-object v0
.end method

.method private createApplicationStateListener()Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$1;-><init>(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)V

    return-object v0
.end method

.method private createInstallerDelegateObserver()Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;-><init>(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)V

    return-object v0
.end method

.method private createIntentCallback(Lorg/chromium/chrome/browser/banners/AppData;)Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;-><init>(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;Lorg/chromium/chrome/browser/banners/AppData;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->cancel()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mListener:Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mNativePointer:J

    .line 71
    return-void
.end method

.method private determineInstallState(Lorg/chromium/chrome/browser/banners/AppData;)I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/banners/AppData;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    .line 141
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->sPackageManagerForTests:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->sPackageManagerForTests:Landroid/content/pm/PackageManager;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_0
.end method

.method private installOrOpenNativeApp(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/banners/AppData;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/banners/AppData;->packageName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 79
    invoke-static {v3, v2}, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 82
    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/banners/AppData;->installIntent()Landroid/content/Intent;

    move-result-object v1

    .line 92
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->createIntentCallback(Lorg/chromium/chrome/browser/banners/AppData;)Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnInstallFinished(JZ)V
.end method

.method private native nativeOnInstallIntentReturned(JZ)V
.end method

.method private native nativeUpdateInstallState(J)V
.end method

.method public static setPackageManagerForTesting(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->sPackageManagerForTests:Landroid/content/pm/PackageManager;

    .line 45
    return-void
.end method

.method private showAppDetails(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/banners/AppData;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/banners/AppData;->detailsIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    .line 133
    return-void
.end method
