.class final Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;
.super Landroid/os/AsyncTask;
.source "WebappRegistry.java"


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->openSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->getRegisteredWebappIds(Landroid/content/SharedPreferences;)Ljava/util/Set;
    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$100(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->deleteDataForWebapp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->val$callback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
