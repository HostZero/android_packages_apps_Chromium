.class Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;
.super Ljava/lang/Object;
.source "UrlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

.field final synthetic val$pwsResults:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->this$1:Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

    iput-object p2, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->val$pwsResults:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->val$pwsResults:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;

    .line 332
    iget-object v0, v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->requestUrl:Ljava/lang/String;

    .line 333
    iget-object v2, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->this$1:Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

    iget-object v2, v2, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->this$1:Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->this$1:Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

    iget-object v1, v1, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->val$url:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/physicalweb/UrlManager;->addResolvedUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->access$100(Lorg/chromium/chrome/browser/physicalweb/UrlManager;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->this$1:Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;->this$1:Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;

    iget-object v1, v1, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->val$url:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/physicalweb/UrlManager;->removeResolvedUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->access$200(Lorg/chromium/chrome/browser/physicalweb/UrlManager;Ljava/lang/String;)V

    goto :goto_0
.end method
