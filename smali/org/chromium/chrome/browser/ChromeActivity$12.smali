.class Lorg/chromium/chrome/browser/ChromeActivity$12;
.super Landroid/os/AsyncTask;
.source "ChromeActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1528
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$12;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeActivity$12;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1528
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity$12;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1531
    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->SNAPSHOT_DATABASE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeActivity;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1532
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$12;->val$appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1534
    const-string/jumbo v2, "snapshot_database_removed"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1535
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity$12;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    const-string/jumbo v3, "snapshots.db"

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/ChromeActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 1536
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "snapshot_database_removed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1538
    :cond_0
    monitor-exit v1

    .line 1539
    const/4 v0, 0x0

    return-object v0

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
