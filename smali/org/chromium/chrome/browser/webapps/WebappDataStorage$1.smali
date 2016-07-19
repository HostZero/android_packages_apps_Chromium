.class final Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;
.super Landroid/os/AsyncTask;
.source "WebappDataStorage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$storage:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->val$storage:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->val$storage:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->getLastUsedTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 53
    sget-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->val$storage:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->getAllData()Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->access$000(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$1;->val$storage:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->updateLastUsedTime()V

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
