.class final Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;
.super Landroid/os/AsyncTask;
.source "WebappRegistry.java"


# instance fields
.field final synthetic val$callback:Lorg/chromium/chrome/browser/webapps/WebappRegistry$FetchCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/webapps/WebappRegistry$FetchCallback;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;->val$callback:Lorg/chromium/chrome/browser/webapps/WebappRegistry$FetchCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->openSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->getRegisteredWebappIds(Landroid/content/SharedPreferences;)Ljava/util/Set;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$100(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$2;->val$callback:Lorg/chromium/chrome/browser/webapps/WebappRegistry$FetchCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry$FetchCallback;->onWebappIdsRetrieved(Ljava/util/Set;)V

    .line 87
    return-void
.end method
