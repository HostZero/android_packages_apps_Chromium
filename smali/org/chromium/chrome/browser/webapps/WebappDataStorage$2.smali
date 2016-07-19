.class final Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;
.super Landroid/os/AsyncTask;
.source "WebappDataStorage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$callback:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$webappId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;->val$webappId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->getLastUsedTime()J

    move-result-wide v0

    .line 77
    sget-boolean v2, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;->val$callback:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;->onDataRetrieved(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$2;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
