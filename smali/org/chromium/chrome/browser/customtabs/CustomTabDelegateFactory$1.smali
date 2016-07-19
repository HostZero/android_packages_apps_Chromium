.class Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$1;
.super Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
.source "CustomTabDelegateFactory.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method


# virtual methods
.method public isHidingTopControlsEnabled()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mShouldHideTopControls:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->access$000(Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->isHidingTopControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
