.class public final Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;
.super Ljava/lang/Object;
.source "ConnectivityChecker.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sHttpNoContentUrl:Ljava/lang/String;

.field private static sHttpsNoContentUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "http://clients4.google.com/generate_204"

    sput-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpNoContentUrl:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "https://clients4.google.com/generate_204"

    sput-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpsNoContentUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkConnectivityChromeNetworkStack(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;JLorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V
    .locals 0

    .prologue
    .line 159
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 160
    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->nativeCheckConnectivity(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;JLorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    .line 161
    return-void
.end method

.method public static checkConnectivityChromeNetworkStack(Lorg/chromium/chrome/browser/profiles/Profile;ZILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V
    .locals 4

    .prologue
    .line 152
    if-eqz p1, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpsNoContentUrl:Ljava/lang/String;

    .line 153
    :goto_0
    int-to-long v2, p2

    invoke-static {p0, v0, v2, v3, p3}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->checkConnectivityChromeNetworkStack(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;JLorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    .line 154
    return-void

    .line 152
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpNoContentUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method static checkConnectivitySystemNetworkStack(Ljava/lang/String;ILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 86
    invoke-static {p0}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->nativeIsUrlValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "feedback"

    const-string/jumbo v1, "Predefined URL invalid."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {p2, v5}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->postResult(Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;I)V

    .line 132
    :goto_0
    return-void

    .line 93
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    new-instance v1, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;

    invoke-direct {v1, v0, p1, p2}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;-><init>(Ljava/net/URL;ILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string/jumbo v1, "feedback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to parse predefined URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {p2, v5}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->postResult(Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;I)V

    goto :goto_0
.end method

.method public static checkConnectivitySystemNetworkStack(ZILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V
    .locals 1

    .prologue
    .line 80
    if-eqz p0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpsNoContentUrl:Ljava/lang/String;

    .line 81
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->checkConnectivitySystemNetworkStack(Ljava/lang/String;ILorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V

    .line 82
    return-void

    .line 80
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpNoContentUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private static executeCallback(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 165
    check-cast p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;

    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;->onResult(I)V

    .line 166
    return-void
.end method

.method private static native nativeCheckConnectivity(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;JLorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;)V
.end method

.method private static native nativeIsUrlValid(Ljava/lang/String;)Z
.end method

.method static overrideUrlsForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 51
    sput-object p0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpNoContentUrl:Ljava/lang/String;

    .line 52
    sput-object p1, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->sHttpsNoContentUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private static postResult(Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;I)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$1;-><init>(Lorg/chromium/chrome/browser/feedback/ConnectivityChecker$ConnectivityCheckerCallback;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
