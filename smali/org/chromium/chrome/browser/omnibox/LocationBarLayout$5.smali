.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$5;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$5;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$5;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$5;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->startZeroSuggest()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1800(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    .line 934
    :cond_0
    return-void
.end method
