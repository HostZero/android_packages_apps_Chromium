.class Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;
.super Landroid/os/AsyncTask;
.source "BackgroundSyncLauncher.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$minDelayMs:J

.field final synthetic val$shouldLaunch:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/BackgroundSyncLauncher;Landroid/content/Context;ZJ)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->this$0:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    iput-object p2, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$shouldLaunch:Z

    iput-wide p4, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$minDelayMs:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "bgsync_launch_next_online"

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$shouldLaunch:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .prologue
    .line 131
    # getter for: Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sGCMEnabled:Z
    invoke-static {}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$shouldLaunch:Z

    if-eqz v0, :cond_1

    .line 133
    const-string/jumbo v0, "BackgroundSync.LaunchTask.ScheduleSuccess"

    iget-object v1, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->this$0:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    # getter for: Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;
    invoke-static {v2}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->access$100(Lorg/chromium/chrome/browser/BackgroundSyncLauncher;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->val$minDelayMs:J

    # invokes: Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->scheduleLaunchTask(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;J)Z
    invoke-static {v1, v2, v4, v5}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->access$200(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;J)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string/jumbo v0, "BackgroundSync.LaunchTask.CancelSuccess"

    iget-object v1, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->this$0:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    # getter for: Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;
    invoke-static {v1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->access$100(Lorg/chromium/chrome/browser/BackgroundSyncLauncher;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->removeScheduledTasks(Lcom/google/android/gms/gcm/GcmNetworkManager;)Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->access$300(Lcom/google/android/gms/gcm/GcmNetworkManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    goto :goto_0
.end method
