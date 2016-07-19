.class public Lorg/chromium/chrome/browser/gsa/GSAServiceClient;
.super Ljava/lang/Object;
.source "GSAServiceClient.java"


# static fields
.field public static final KEY_GSA_CONTEXT:Ljava/lang/String; = "ssb_service:ssb_context"

.field public static final KEY_GSA_PACKAGE_NAME:Ljava/lang/String; = "ssb_service:ssb_package_name"

.field public static final KEY_GSA_STATE:Ljava/lang/String; = "ssb_service:ssb_state"

.field public static final REQUEST_REGISTER_CLIENT:I = 0x2

.field public static final RESPONSE_UPDATE_SSB:I = 0x3


# instance fields
.field private final mConnection:Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mGsaHelper:Lorg/chromium/chrome/browser/gsa/GSAHelper;

.field private final mMessenger:Landroid/os/Messenger;

.field private mService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$IncomingHandler;-><init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;Lorg/chromium/chrome/browser/gsa/GSAServiceClient$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mMessenger:Landroid/os/Messenger;

    .line 74
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;-><init>(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;Lorg/chromium/chrome/browser/gsa/GSAServiceClient$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mConnection:Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createGsaHelper()Lorg/chromium/chrome/browser/gsa/GSAHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mGsaHelper:Lorg/chromium/chrome/browser/gsa/GSAHelper;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Lorg/chromium/chrome/browser/gsa/GSAHelper;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mGsaHelper:Lorg/chromium/chrome/browser/gsa/GSAHelper;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/gsa/GSAServiceClient;)Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method public connect()Z
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GSAServiceClient"

    const-string/jumbo v1, "Already connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.ssb.action.SSB_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mConnection:Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mConnection:Lorg/chromium/chrome/browser/gsa/GSAServiceClient$GSAServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100
    iput-object v2, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mContext:Landroid/content/Context;

    .line 101
    iput-object v2, p0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->mService:Landroid/os/Messenger;

    goto :goto_0
.end method
