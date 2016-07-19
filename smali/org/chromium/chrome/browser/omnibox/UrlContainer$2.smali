.class Lorg/chromium/chrome/browser/omnibox/UrlContainer$2;
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
    .line 65
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$2;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlContainer$2;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlContainer;

    # invokes: Lorg/chromium/chrome/browser/omnibox/UrlContainer;->hideTrailingText()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/UrlContainer;->access$000(Lorg/chromium/chrome/browser/omnibox/UrlContainer;)V

    .line 69
    return-void
.end method
