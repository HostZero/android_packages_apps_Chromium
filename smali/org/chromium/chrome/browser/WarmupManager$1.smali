.class Lorg/chromium/chrome/browser/WarmupManager$1;
.super Landroid/os/AsyncTask;
.source "WarmupManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/WarmupManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/WarmupManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->this$0:Lorg/chromium/chrome/browser/WarmupManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/WarmupManager$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 225
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/WarmupManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->this$0:Lorg/chromium/chrome/browser/WarmupManager;

    # getter for: Lorg/chromium/chrome/browser/WarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;
    invoke-static {v0}, Lorg/chromium/chrome/browser/WarmupManager;->access$000(Lorg/chromium/chrome/browser/WarmupManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->this$0:Lorg/chromium/chrome/browser/WarmupManager;

    # getter for: Lorg/chromium/chrome/browser/WarmupManager;->mPendingPreconnectWithProfile:Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/WarmupManager;->access$100(Lorg/chromium/chrome/browser/WarmupManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->this$0:Lorg/chromium/chrome/browser/WarmupManager;

    # getter for: Lorg/chromium/chrome/browser/WarmupManager;->mPendingPreconnectWithProfile:Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/WarmupManager;->access$100(Lorg/chromium/chrome/browser/WarmupManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    .line 241
    iget-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->this$0:Lorg/chromium/chrome/browser/WarmupManager;

    # getter for: Lorg/chromium/chrome/browser/WarmupManager;->mPendingPreconnectWithProfile:Ljava/util/Map;
    invoke-static {v1}, Lorg/chromium/chrome/browser/WarmupManager;->access$100(Lorg/chromium/chrome/browser/WarmupManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->this$0:Lorg/chromium/chrome/browser/WarmupManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/WarmupManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/WarmupManager;->maybePreconnectUrlAndSubResources(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method
