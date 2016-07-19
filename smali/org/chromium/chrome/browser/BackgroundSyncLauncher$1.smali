.class final Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;
.super Landroid/os/AsyncTask;
.source "BackgroundSyncLauncher.java"


# instance fields
.field final synthetic val$callback:Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;->val$callback:Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "bgsync_launch_next_online"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;->val$callback:Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;->run(Ljava/lang/Boolean;)V

    .line 102
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
