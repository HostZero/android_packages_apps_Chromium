.class final Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;
.super Landroid/os/AsyncTask;
.source "WebappRegistry.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$currentTime:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->openSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    const-string/jumbo v0, "last_cleanup"

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 104
    iget-wide v4, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$currentTime:J

    sub-long v2, v4, v2

    sget-wide v4, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->FULL_CLEANUP_DURATION:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 120
    :goto_0
    return-object v8

    .line 106
    :cond_0
    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->getRegisteredWebappIds(Landroid/content/SharedPreferences;)Ljava/util/Set;
    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$100(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v0

    .line 107
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    new-instance v4, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    iget-object v5, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->getLastUsedTime()J

    move-result-wide v4

    .line 110
    iget-wide v6, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$currentTime:J

    sub-long v4, v6, v4

    sget-wide v6, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->WEBAPP_UNOPENED_CLEANUP_DURATION:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 112
    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$context:Landroid/content/Context;

    invoke-static {v4, v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->deleteDataForWebapp(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_cleanup"

    iget-wide v4, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$3;->val$currentTime:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "webapp_set"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
