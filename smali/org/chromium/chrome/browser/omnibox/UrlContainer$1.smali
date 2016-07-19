.class Lorg/chromium/chrome/browser/omnibox/UrlContainer$1;
.super Ljava/lang/Object;
.source "UrlContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$1;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$1;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->setTrailingTextVisible(Z)V

    .line 63
    return-void
.end method
