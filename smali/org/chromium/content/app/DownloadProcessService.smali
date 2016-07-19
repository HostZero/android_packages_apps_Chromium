.class public Lorg/chromium/content/app/DownloadProcessService;
.super Lorg/chromium/content/app/ChildProcessService;
.source "DownloadProcessService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Lorg/chromium/content/common/IChildProcessCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/content/app/DownloadProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/DownloadProcessService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lorg/chromium/content/app/ChildProcessService;->onCreate()V

    .line 36
    sget v0, Lorg/chromium/content/R$id;->download_service_notification:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/app/DownloadProcessService;->startForeground(ILandroid/app/Notification;)V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 42
    sget-boolean v0, Lorg/chromium/content/app/DownloadProcessService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/app/DownloadProcessService;->initializeParams(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    const-string/jumbo v1, "com.google.android.apps.chrome.extra.child_process_callback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/app/DownloadProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    .line 48
    invoke-virtual {p0, v0}, Lorg/chromium/content/app/DownloadProcessService;->getServiceInfo(Landroid/os/Bundle;)V

    .line 50
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
