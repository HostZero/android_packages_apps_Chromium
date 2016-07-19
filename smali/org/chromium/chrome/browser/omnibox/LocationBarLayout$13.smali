.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$13;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 2092
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$13;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2096
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2097
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 2099
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$13;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->clearFocus()V

    .line 2100
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$13;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateOmniboxResultsContainerBackground(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$2400(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V

    .line 2102
    :cond_1
    return v2
.end method
