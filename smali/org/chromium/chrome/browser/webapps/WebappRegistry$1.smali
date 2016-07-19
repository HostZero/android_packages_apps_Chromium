.class final Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;
.super Landroid/os/AsyncTask;
.source "WebappRegistry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$webappId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->val$webappId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->openSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/HashSet;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->getRegisteredWebappIds(Landroid/content/SharedPreferences;)Ljava/util/Set;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$100(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->val$webappId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 59
    sget-boolean v3, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    new-instance v2, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    iget-object v3, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$1;->val$webappId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->updateLastUsedTime()V

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "webapp_set"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method
