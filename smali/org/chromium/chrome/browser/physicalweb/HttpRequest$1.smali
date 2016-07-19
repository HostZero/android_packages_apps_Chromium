.class Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/HttpRequest;

.field final synthetic val$finalException:Ljava/lang/Exception;

.field final synthetic val$finalResponseCode:I

.field final synthetic val$finalResult:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/HttpRequest;Ljava/lang/Exception;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/HttpRequest;

    iput-object p2, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->val$finalException:Ljava/lang/Exception;

    iput-object p3, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->val$finalResult:Ljava/lang/Object;

    iput p4, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->val$finalResponseCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->val$finalException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/HttpRequest;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mCallback:Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->access$000(Lorg/chromium/chrome/browser/physicalweb/HttpRequest;)Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->val$finalResult:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;->onResponse(Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/HttpRequest;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->mCallback:Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest;->access$000(Lorg/chromium/chrome/browser/physicalweb/HttpRequest;)Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->val$finalResponseCode:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$1;->val$finalException:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/physicalweb/HttpRequest$HttpRequestCallback;->onError(ILjava/lang/Exception;)V

    goto :goto_0
.end method
