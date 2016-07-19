.class public Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;
.super Ljava/lang/Object;
.source "ChromeMediaRouterDialogController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

.field private final mNativeDialogController:J


# direct methods
.method private constructor <init>(JLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mNativeDialogController:J

    .line 119
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mApplicationContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method public static create(JLandroid/content/Context;)Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;-><init>(JLandroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->isShowingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;->closeDialog()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    goto :goto_0
.end method

.method public isShowingDialog()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native nativeOnDialogCancelled(J)V
.end method

.method native nativeOnRouteClosed(JLjava/lang/String;)V
.end method

.method native nativeOnSinkSelected(JLjava/lang/String;)V
.end method

.method public onDialogCancelled()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    .line 114
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mNativeDialogController:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->nativeOnDialogCancelled(J)V

    goto :goto_0
.end method

.method public onRouteClosed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    .line 102
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mNativeDialogController:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->nativeOnRouteClosed(JLjava/lang/String;)V

    .line 103
    return-void
.end method

.method public onSinkSelected(Lorg/chromium/chrome/browser/media/router/cast/MediaSink;)V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    .line 96
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mNativeDialogController:J

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->nativeOnSinkSelected(JLjava/lang/String;)V

    .line 97
    return-void
.end method

.method public openRouteChooserDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;-><init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;->openDialog()V

    goto :goto_0
.end method

.method public openRouteControllerDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v0, p2, v2, p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;-><init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Ljava/lang/String;Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouterDialogController;->mDialogManager:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;->openDialog()V

    goto :goto_0
.end method
