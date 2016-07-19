.class Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;
.super Ljava/lang/Object;
.source "ChromePrerenderService.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;->mParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    .line 49
    return-void
.end method
