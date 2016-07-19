.class public abstract Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;
.super Ljava/lang/Object;
.source "ServiceTabLauncher.java"


# static fields
.field public static final LAUNCH_REQUEST_ID_EXTRA:Ljava/lang/String; = "org.chromium.components.service_tab_launcher.ServiceTabLauncher.LAUNCH_REQUEST_ID"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->sInstance:Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;

    if-nez v0, :cond_0

    .line 66
    invoke-static {p0}, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->getServiceTabLauncherClassFromManifest(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;

    sput-object v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->sInstance:Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;

    .line 72
    :cond_0
    sget-object v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->sInstance:Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;

    return-object v0
.end method

.method private static getServiceTabLauncherClassFromManifest(Landroid/content/Context;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 85
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "org.chromium.components.service_tab_launcher.SERVICE_TAB_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    sget-object v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Context.getPackage() refers to an invalid package name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    sget-object v0, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid value for SERVICE_TAB_LAUNCHER in the Android manifest file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static native nativeOnWebContentsForRequestAvailable(ILorg/chromium/content_public/browser/WebContents;)V
.end method

.method public static onWebContentsForRequestAvailable(ILorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 106
    invoke-static {p0, p1}, Lorg/chromium/components/service_tab_launcher/ServiceTabLauncher;->nativeOnWebContentsForRequestAvailable(ILorg/chromium/content_public/browser/WebContents;)V

    .line 107
    return-void
.end method


# virtual methods
.method public abstract launchTab(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;[B)V
.end method
