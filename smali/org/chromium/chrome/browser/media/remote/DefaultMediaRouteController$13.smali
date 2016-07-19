.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;
.super Ljava/lang/Object;
.source "DefaultMediaRouteController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Delegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;

.field final synthetic val$cookies:Ljava/lang/String;

.field final synthetic val$frameUrl:Ljava/lang/String;

.field final synthetic val$sourceUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$sourceUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$cookies:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$callback:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;

    iput-object p5, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$frameUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$callback:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$frameUrl:Ljava/lang/String;

    invoke-interface {v0, p2, v1, v2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method public getCookies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$cookies:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$13;->val$sourceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
