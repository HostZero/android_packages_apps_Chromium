.class Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTask;
.super Landroid/os/AsyncTask;
.source "ChromePrerenderService.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTask;->doInBackground([Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;)Ljava/lang/Void;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    aget-object v0, p1, v1

    iget-object v0, v0, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;->mContext:Landroid/content/Context;

    aget-object v1, p1, v1

    iget-object v1, v1, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService$LauncherWarmUpTaskParams;->mParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->warmUp(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
